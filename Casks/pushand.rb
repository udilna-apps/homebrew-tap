cask "pushand" do
  version "1.0.21"
  sha256 "2c894dd243ea9c0ce34323234f68aca28699667fb7faa0e4da0dc8ac7004b326"

  url "https://downloads.pushand.com/Pushand-#{version}.dmg"
  name "push&"
  name "Pushand"
  desc "Menu bar app showing unpushed Git commits across repositories"
  homepage "https://pushand.com/"

  livecheck do
    url "https://downloads.pushand.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Pushand.app"

  zap trash: "~/Library/Application Support/Pushand"
end
