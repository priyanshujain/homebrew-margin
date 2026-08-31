cask "margin" do
  version "0.1.17"
  sha256 "cfafa6b78922aeff9d5db219e7d5fd2b3bd7a1dfcbb4b80ad8c54d46de524fef"

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
