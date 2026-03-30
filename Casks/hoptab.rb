cask "hoptab" do
    version "1.2.0"
    sha256 "8112911ea2aae5eea9ba5f27000159567994e079c1e0bcfca0e71ac4b3dc3a45"

    url "https://github.com/royalbhati/HopTab/releases/download/v#{version}/HopTab-#{version}.zip"
    name "HopTab"
    desc "The workspace manager macOS should have shipped with"
    homepage "https://github.com/royalbhati/HopTab"

    depends_on macos: ">= :sonoma"

    app "HopTab.app"

    zap trash: [
      "~/Library/Preferences/com.royal.HopTab.plist",
      "~/Library/Application Support/HopTab",
    ]
  end
