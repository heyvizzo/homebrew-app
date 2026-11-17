cask "vizzo" do
  version "0.2.2"
  sha256 "aac98f3145f9746ef63cb635e8c86f1911dd392783be5e0bc8e79a8e8966c636"

  url "https://github.com/heyvizzo/vizzo/releases/download/v#{version}/Vizzo-#{version}-arm64.dmg"
  name "Vizzo"
  desc "Talk to a coding agent about the page you are looking at"
  homepage "https://heyvizzo.com/"

  depends_on arch: :arm64
  depends_on macos: :ventura

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
