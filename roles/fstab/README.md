# 📁 Fstab Role

An Ansible role for declaratively managing `/etc/fstab` entries. Device identifiers are stored as Ansible Vault secrets and validated before any changes are applied.

## 📦 What Gets Installed

No packages are installed. This role manages system configuration only.

### Managed Entries
- `/mnt/nvme1` - Secondary NVMe drive (ext4)
- `/mnt/nvme2` - Additional NVMe drive (ext4)
- `/nfs/cloud` - NFS cloud share
- `/nfs/media` - NFS media share

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Validate device schema]
    B --> C{Valid?}
    C -->|No| D[Fail with message]
    C -->|Yes| E[Create mountpoint directories]
    E --> F[Manage /etc/fstab entries]
    F --> G[✓ fstab Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style D fill:#f38ba8,stroke:#1e1e2e,color:#1e1e2e
    style G fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Variables** (`defaults/main.yml`):
- `devices` - List of fstab entry objects, each requiring:
  - `device` - Block device or NFS path (supports Ansible Vault)
  - `mountpoint` - Target mount path
  - `filesystem` - Filesystem type (e.g. `ext4`, `nfs`, `swap`)
  - `options` - Mount options string
  - `backup` - dump value (integer)
  - `check` - fsck pass order (integer, optional)

## 🚀 Usage

```bash
ansible-playbook main.yml -t fstab
```

## 📝 Notes

- Device paths are encrypted with Ansible Vault — run with `--ask-vault-pass` or a configured vault password file.
- Entries are idempotent: re-running will not duplicate lines.
- Each entry is validated via `mount -fav` before being written.
