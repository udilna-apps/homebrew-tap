cask "pushand" do
  version "1.0.16"
  sha256 "712ae3b3ee9dfd2e9541f45148eeac40c76141c9e3945be8ee0468c5917bb473"

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
