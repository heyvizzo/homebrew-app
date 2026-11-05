cask "vizzo" do
  version "0.2.1"
  sha256 "c817134e166e7ff6425c774127c99fb40bdb3169d2b46b82683b33e846cc3812"

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
