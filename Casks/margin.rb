cask "margin" do
  version "0.1.19"
  sha256 "defa47d1d4dc376a3b47d9234531613b2fd9775493ae9203725fc6f2b1e5f1d9"

  url "https://github.com/priyanshujain/margin/releases/download/v#{version}/Margin_#{version}_universal.dmg",
      verified: "github.com/priyanshujain/margin/"
  name "Margin"
  desc "Offline writing studio that exports print-ready and ebook files"
  homepage "https://margin.73ai.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :catalina

  app "Margin.app"

  zap trash: [
    "~/Library/Application Support/studio.margin.app",
    "~/Library/Caches/studio.margin.app",
    "~/Library/HTTPStorages/studio.margin.app",
    "~/Library/Preferences/studio.margin.app.plist",
    "~/Library/Saved Application State/studio.margin.app.savedState",
    "~/Library/WebKit/studio.margin.app",
  ]
end
