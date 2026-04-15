cask "hoptab" do
  version "1.3.0"
  sha256 "1da912f91b97de394aeb88ac6220649fa8e11a83e7869cf724d13cc7265e0965"

  url "https://github.com/royalbhati/HopTab/releases/download/v#{version}/HopTab-#{version}.zip"
  name "HopTab"
  desc "The workspace manager macOS should have shipped with"
  homepage "https://github.com/royalbhati/HopTab"

  depends_on macos: ">= :sonoma"

  app "HopTab.app"

  zap trash: [
    "~/Library/Preferences/com.hoptab.app.plist",
    "~/Library/Application Support/HopTab",
  ]
end
