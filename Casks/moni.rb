cask "moni" do
  version "1.0.13"
  sha256 "71ed550ffe986d8ae8893ed1f06561508f044e9a2928207570aa890e6fcd6038"

  url "https://github.com/moni-md/moni-releases/releases/download/v#{version}/Moni-#{version}-arm64.dmg"
  name "Moni"
  desc "Markdown editor for local notes that agents can read and edit"
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
