# homebrew-tap

Personal Homebrew Cask tap for installing macOS applications.

## How to install Tunnel Mate

To install **Tunnel Mate** via this tap, run the following commands in your terminal:

```bash
brew tap jiayx/tap
brew install --cask tunnel-mate
```

## How to Update

This Cask formula is **automatically updated** by the `tunnel-mate` GitHub Actions workflow whenever a new version tag (e.g. `v0.2.4`) is pushed. No manual updates are required.

### Manual Fallback (手动更新备用方案)

If you need to update the Cask manually:
1. Download the release `.dmg` files and calculate their SHA256 checksums:
   ```bash
   shasum -a 256 Tunnel.Mate_0.2.4_darwin_aarch64.dmg
   shasum -a 256 Tunnel.Mate_0.2.4_darwin_x64.dmg
   ```
2. Update the `version` and corresponding `sha256` lines in `Casks/tunnel-mate.rb`.
3. Commit and push the changes:
   ```bash
   git add Casks/tunnel-mate.rb
   git commit -m "chore: bump tunnel-mate to v0.2.4"
   git push origin main
   ```
