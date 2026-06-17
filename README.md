# homebrew-tap

Personal Homebrew Cask tap for installing macOS applications.

## How to install Tunnel Mate

To install **Tunnel Mate** via this tap, run the following commands in your terminal:

```bash
brew tap jiayx/tap
brew install --cask tunnel-mate
```

## Update Cask Formula

When a new version of Tunnel Mate is released:
1. Generate the SHA256 checksum for the newly built `.dmg` files:
   ```bash
   shasum -a 256 Tunnel.Mate_macos_aarch64.dmg
   shasum -a 256 Tunnel.Mate_macos_x64.dmg
   ```
2. Update the `version`, `sha256` checksums, and verify the download URLs in `Casks/tunnel-mate.rb`.
3. Commit and push the changes to this repository.
