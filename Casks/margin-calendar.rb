cask "margin-calendar" do
  version "0.0.2"
  sha256 "a11bb6c2a18eb7a75b893f77b9813f51295d480d969497e07844955c8c0c6bd7"

  url "https://github.com/priyanshujain/margin-calendar/releases/download/v#{version}/Margin.Calendar_#{version}_universal.dmg",
      verified: "github.com/priyanshujain/margin-calendar/"
  name "Margin Calendar"
  desc "Keyboard-driven calendar for Google Calendar"
  homepage "https://github.com/priyanshujain/margin-calendar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :catalina

  app "Margin Calendar.app"

  zap trash: [
    "~/Library/Application Support/studio.margin.calendar",
    "~/Library/Caches/studio.margin.calendar",
    "~/Library/HTTPStorages/studio.margin.calendar",
    "~/Library/Preferences/studio.margin.calendar.plist",
    "~/Library/Saved Application State/studio.margin.calendar.savedState",
    "~/Library/WebKit/studio.margin.calendar",
  ]
end
