cask "pushand" do
  version "1.0.11"
  sha256 "2c31ce2a435f97520956b77d2ee5eb01839f956ae3b925cf094094a1eebce6ef"

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
