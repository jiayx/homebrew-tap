cask "tunnel-mate" do
  version "0.5.1"

  on_arm do
    sha256 "eeb7ebe376d1192a53a2dc1a170287e81ef4fdde7e0b4d770f422794bed23a92"

    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/tunnel-mate-#{version}-macos-aarch64.dmg"
  end
  on_intel do
    sha256 "c229483494f5f1b82f37c2f5854dc053e4cf09d07eb5434cb9e6cc0f593f1f41"

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
