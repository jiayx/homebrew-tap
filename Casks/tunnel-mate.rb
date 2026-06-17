cask "tunnel-mate" do
  version "0.2.4"

  on_intel do
    # 待填入 Intel 版本 dmg 的 SHA256 值 (可运行 `shasum -a 256 <filename>` 获取)
    sha256 "4f25106d6091f4928cc645cd2ba5c569b07189a951a75c2e8b4d5310951ff54c"
    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/Tunnel.Mate_#{version}_macos_x64.dmg"
  end
  on_arm do
    # 待填入 Apple Silicon (M1/M2/M3) 版本 dmg 的 SHA256 值
    sha256 "806f15e16b1a639a4f773236ed5ec06173d6a1ce3b6bb13b97f5f03dc6af5d0e"
    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/Tunnel.Mate_#{version}_macos_aarch64.dmg"
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
