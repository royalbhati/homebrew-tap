cask "hoptab" do
  version "1.1.0"
  sha256 "fa27a0bc07bc1474f29777b4245ae85452bffc73820da97cfa65b52710f0300b"

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
