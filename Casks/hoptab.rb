cask "hoptab" do
  version "1.1.1"
  sha256 "42d50181ae634fefd6159596d5fa8b71701c98efcc476d4bec918b8a8e31bcf0"

  url "https://github.com/royalbhati/HopTab/releases/download/v#{version}/HopTab-#{version}.zip"
  name "HopTab"
  desc "The workspace manager macOS should've shipped with"
  homepage "https://github.com/royalbhati/HopTab"

  depends_on macos: ">= :sonoma"

  app "HopTab.app"

  zap trash: [
    "~/Library/Preferences/com.royal.HopTab.plist",
    "~/Library/Application Support/HopTab",
  ]
end
