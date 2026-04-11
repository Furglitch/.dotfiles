// Original shader collected from: https://www.shadertoy.com/view/WsVSzV
// Ghostty mod collected from: https://github.com/m-ahdal/ghostty-shaders/blob/main/retro-terminal.glsl
// Further modified by Furglitch (adjusted tint, warp)

float warp = 0.25; // simulate curvature of CRT monitor
float scan = 0.7; // simulate darkness between scanlines
float zoom = 0.98; // zoom out slightly to add margins

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    // squared distance from center
    vec2 uv = fragCoord / iResolution.xy;
    vec2 dc = abs(0.5 - uv);
    dc *= dc;
    
    // apply zoom (scale from center)
    uv = (uv - 0.5) / zoom + 0.5;
    
    // warp the fragment coordinates
    uv.x -= 0.5; uv.x *= 1.0 + (dc.y * (0.3 * warp)); uv.x += 0.5;
    uv.y -= 0.5; uv.y *= 1.0 + (dc.x * (0.4 * warp)); uv.y += 0.5;

    // clamp UV coordinates to prevent black edges
    uv = clamp(uv, 0.0, 1.0);

    // determine if we are drawing in a scanline (animated)
    float apply = abs(sin(fragCoord.y + iTime * 0.02 * 100.0) * 0.5 * scan);
    
    // sample the texture
    vec3 color = texture(iChannel0, uv).rgb;
    
    // calculate luminance to distinguish text from background
    float luma = dot(color, vec3(0.299, 0.587, 0.114));
    
    // apply teal tint only to darker pixels (background)
    vec3 tealTint = vec3(0.796, 0.651, 0.969); // teal color (slightly more green than blue)
    float tintAmount = smoothstep(0.1, 0.3, luma); // fade out tint as brightness increases
    vec3 tintedColor = mix(color * tealTint, color, tintAmount);
    
    // apply scanline effect
    fragColor = vec4(mix(tintedColor, vec3(0.0), apply), 1.0);
}