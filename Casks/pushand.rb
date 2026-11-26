cask "pushand" do
  version "1.0.17"
  sha256 "dd0b07953f009cac041f0b96e78ea3540c74a56ce7536b51c6f9616e623c86ac"

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
