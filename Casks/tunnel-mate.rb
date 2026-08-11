cask "tunnel-mate" do
  version "0.5.5"

  on_arm do
    sha256 "72209044fbf4c8de41f7aa0d7ff736d31727bb8f5dbd70f4bbe79924857aa879"

    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/tunnel-mate-#{version}-macos-aarch64.dmg"
  end
  on_intel do
    sha256 "54e1e26360dbff316b2e065f6514170c71ad1e86f8512a132cbbcf4291141c4a"

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
