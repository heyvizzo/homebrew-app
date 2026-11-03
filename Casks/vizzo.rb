cask "vizzo" do
  version "0.2.0"
  sha256 "eba2a984facd79becc052cf515025e691c57dcd3d6fd14ae043aca243af3729e"

  url "https://github.com/heyvizzo/homebrew-app/releases/download/v#{version}/Vizzo-#{version}-arm64.dmg"
  name "Vizzo"
  desc "Talk to a coding agent about the page you are looking at"
  homepage "https://heyvizzo.com/"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Vizzo.app"

  zap trash: [
    "~/Library/Application Support/Vizzo",
    "~/Library/Caches/com.heyvizzo.vizzo",
    "~/Library/Caches/com.heyvizzo.vizzo.ShipIt",
    "~/Library/HTTPStorages/com.heyvizzo.vizzo",
    "~/Library/Preferences/com.heyvizzo.vizzo.plist",
    "~/Library/Saved Application State/com.heyvizzo.vizzo.savedState",
  ]
end
