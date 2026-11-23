cask "pushand" do
  version "1.0.15"
  sha256 "814e07f0c46a52eeaaa439d34ece8a919a0078dcead1ba7d6f53cdf77d0089d3"

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
