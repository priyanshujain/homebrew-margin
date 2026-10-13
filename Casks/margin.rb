cask "margin" do
  version "0.1.18"
  sha256 "22c9fe8fd70a89388fdabe27c1013f0372ac10002b911b5173c9f88b81d44177"

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
