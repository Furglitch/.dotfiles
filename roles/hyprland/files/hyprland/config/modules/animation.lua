hl.curve( "linear", { type = "bezier",  points = { {0, 0}, {1, 1} } })
hl.curve( "ease", { type = "bezier", points = { {0.25, 0.1}, {0.25, 1} } })
hl.curve( "easeInOut", { type = "bezier", points = { {0.5, 0.1}, {0.5, 0.9} } })
hl.curve( "slide", { type = "bezier", points = { {0.1, 1}, {0, 1} } })
hl.curve( "slideBounce", { type = "bezier", points = { {0.1, 1}, {0, 1.1} } })

hl.animation({ leaf = "windows", enabled = true, speed = 3.0, bezier = "slide", style = "popin" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.0, bezier = "slide", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3.0, bezier = "slide", style = "slide" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.0, bezier = "slide", style = "slide" })

hl.layer_rule({ match = { namespace = "vicinae" }, animation = "popin 80%" })
hl.layer_rule({ match = { namespace = "hyprpanel" }, animation = "slide top 80%" })