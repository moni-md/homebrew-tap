cask "moni" do
  version "1.0.12"
  sha256 "70f6b640d6e418b622ae55074b4679629a9ed7483c87094a03278f3fdb9ee7af"

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
