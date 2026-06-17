cask "tunnel-mate" do
  version "0.2.6"

  on_intel do
    # 待填入 Intel 版本 dmg 的 SHA256 值 (可运行 `shasum -a 256 <filename>` 获取)
    sha256 "a3f6e4f09596202e64b198a795883fa17cf56191125ce6252e0f0764e16fa996"
    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/Tunnel.Mate_#{version}_darwin_x64.dmg"
  end
  on_arm do
    # 待填入 Apple Silicon (M1/M2/M3) 版本 dmg 的 SHA256 值
    sha256 "93a266566b26164a570cc09465ae97f2c35c7487f254d60dea1d36f2b69f40fb"
    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/Tunnel.Mate_#{version}_darwin_aarch64.dmg"
  end

  name "Tunnel Mate"
  desc "A cross-platform GUI for managing SSH tunnels"
  homepage "https://github.com/jiayx/tunnel-mate"

  # Tauri 默认打包的 macOS 应用文件名
  app "Tunnel Mate.app"

  zap trash: [
    "~/Library/Application Support/com.jiayx.tunnel-mate",
    "~/Library/Preferences/com.jiayx.tunnel-mate.plist",
    "~/Library/Saved Application State/com.jiayx.tunnel-mate.savedState",
  ]
end
