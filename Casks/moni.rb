cask "moni" do
  version "1.0.11"
  sha256 "ed17eb49db5922c33ac7f6b17a9c577e62af2871ce862fb3c5426ec128a732df"

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
