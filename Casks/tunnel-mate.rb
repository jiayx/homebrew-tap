cask "tunnel-mate" do
  version "0.6.2"

  on_arm do
    sha256 "504b3ebd9480a42d92d364f689732085ec29e91e7b53ea1845c3701d865274dd"

    url "https://github.com/jiayx/tunnel-mate/releases/download/v#{version}/tunnel-mate-#{version}-macos-aarch64.dmg"
  end
  on_intel do
    sha256 "29f2d763e4bddc4e129aadbf33cfccb36f216ef0e0d0652742a623f0fdc5af84"

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
