cask "tunnel-mate" do
  version "0.5.4"

  on_arm do
    sha256 "47cd5056e0b814690cccc48a3ea6343cb7cf98b0cb551fcc8dadfb895c4f4a27"

    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/tunnel-mate-#{version}-macos-aarch64.dmg"
  end
  on_intel do
    sha256 "f325e41185b84e1c83ce15cb730219f122f824fa51ed4706f524e55a2a785a79"

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
