# Security Policy

## Repository Security Configuration

This document outlines security measures for the trivector-research repository.

---

## Recommended GitHub Settings

### Branch Protection (main branch)

Enable the following protections on `main`:

- [x] **Require pull request reviews before merging**: Disabled (owner-only repo)
- [x] **Require signed commits**: ENABLED
- [x] **Require linear history**: ENABLED  
- [x] **Do not allow bypassing the above settings**: ENABLED
- [x] **Restrict who can push to matching branches**: Owner only
- [x] **Allow force pushes**: Disabled
- [x] **Allow deletions**: Disabled

### Repository Settings

- [x] **Visibility**: Public
- [x] **Allow forking**: Yes (for CC BY-NC-SA compliance)
- [x] **Issues**: Enabled (for discussion)
- [x] **Pull Requests**: Accept but do not merge (or disable entirely)
- [x] **Wiki**: Disabled
- [x] **Discussions**: Optional (if Issues insufficient)
- [x] **Projects**: Disabled
- [x] **Actions**: Disabled (no CI/CD needed)
- [x] **Sponsorship**: Optional

### Access Control

- **Collaborators**: None (owner only)
- **Team access**: None
- **Deploy keys**: None
- **Webhooks**: None unless needed for monitoring

---

## Commit Signing

All commits should be GPG signed to verify authorship.

### Setup

```bash
# Generate GPG key if needed
gpg --full-generate-key

# List keys
gpg --list-secret-keys --keyid-format=long

# Configure git
git config --global user.signingkey YOUR_KEY_ID
git config --global commit.gpgsign true

# Add public key to GitHub
gpg --armor --export YOUR_KEY_ID
# Paste output to GitHub > Settings > SSH and GPG keys > New GPG key
```

### Verification

Signed commits show "Verified" badge on GitHub, establishing:
- Authorship authenticity
- Timestamp integrity
- Priority evidence

---

## What This Repository Does NOT Contain

For security and IP protection, this repository explicitly excludes:

- [ ] Proprietary algorithms or implementations
- [ ] API keys, tokens, or credentials
- [ ] Training data or model weights
- [ ] Production code
- [ ] User data or PII
- [ ] Trade secrets

If any such content is accidentally committed, it should be:
1. Immediately removed from HEAD
2. Purged from history using `git filter-branch` or BFG Repo-Cleaner
3. Force-pushed (exception to normal policy)
4. Any exposed credentials rotated immediately

---

## Reporting Security Issues

If you discover a security vulnerability:

1. **Do NOT open a public Issue**
2. Email: jared@trivector.ai
3. Include: Description, potential impact, steps to reproduce
4. Allow reasonable time for response before disclosure

---

## Intellectual Property Protection

### Timestamping

Git commits provide cryptographic timestamps. For additional protection:

- Consider registering key papers with USPTO or copyright office
- Archive snapshots on Internet Archive
- Cross-reference arXiv submissions when published

### License Enforcement

The CC BY-NC-SA 4.0 license:
- Requires attribution
- Prohibits commercial use without permission
- Requires derivative works under same license

Violations can be reported to: jared@trivector.ai

---

## Integrity Verification

To verify repository integrity:

```bash
# Verify all commits are signed
git log --show-signature

# Verify specific commit
git verify-commit COMMIT_HASH

# Check for unsigned commits
git log --pretty="format:%H %G?" | grep " N$"
```

---

## Backup Policy

Owner maintains:
- Local encrypted backup
- Cloud backup (encrypted)
- Offline archive of major versions

---

© 2025-2026 AEO Trivector LLC
