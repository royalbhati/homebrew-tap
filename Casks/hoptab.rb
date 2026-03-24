cask "hoptab" do
  version "1.0.1"
  sha256 "67192431e613f7b6182bb2348cdad66839ab8008fff98f97152333e97f8a4d2f"

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
