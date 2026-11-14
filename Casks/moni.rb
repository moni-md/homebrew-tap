cask "moni" do
  version "1.0.9"
  sha256 "6e803a2fdacbcf5e7873a04f92f787a8a8b8b4bc0cddf18315baeef29f0b4168"

  url "https://github.com/aquariuslt/moni-releases/releases/download/v#{version}/Moni-#{version}-arm64.dmg"
  name "Moni"
  desc "Markdown editor for a folder of notes"
  homepage "https://moni.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Moni.app"

  zap trash: [
    "~/Library/Application Support/Moni",
    "~/Library/Caches/md.moni.desktop",
    "~/Library/Caches/md.moni.desktop.ShipIt",
    "~/Library/HTTPStorages/md.moni.desktop",
    "~/Library/HTTPStorages/md.moni.desktop.binarycookies",
    "~/Library/Logs/Moni",
    "~/Library/Preferences/md.moni.desktop.plist",
    "~/Library/Saved Application State/md.moni.desktop.savedState",
  ]
end
