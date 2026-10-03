cask "tunnel-mate" do
  version "0.6.3"

  on_arm do
    sha256 "9db7bfcae59786552ee190dbf37d78fccd704bbc833de74416eefeb67bf6a851"

    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/tunnel-mate-#{version}-macos-aarch64.dmg"
  end
  on_intel do
    sha256 "334d8286e1e1daed7a442455abf94ae618f759fd29306e3558633b0276c1be39"

    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/tunnel-mate-#{version}-macos-x86_64.dmg"
  end

  name "Tunnel Mate"
  desc "Cross-platform GUI for managing SSH tunnels"
  homepage "https://github.com/jiayx/tunnel-mate"

  depends_on :macos

  app "Tunnel Mate.app"

  zap trash: [
    "~/Library/Application Support/com.jiayx.tunnel-mate",
    "~/Library/Preferences/com.jiayx.tunnel-mate.plist",
    "~/Library/Saved Application State/com.jiayx.tunnel-mate.savedState",
  ]
end
