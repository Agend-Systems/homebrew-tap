cask "codex-usage" do
  version "0.1.0"
  sha256 "54a8e3e7610f0332bfe40a33d2585394fca69e564b73255d73a5ccdf59aeabc4"

  url "https://github.com/Agend-Systems/codex-usage-tracker/releases/download/v#{version}/Codex.Usage.app.zip"
  name "Codex Usage"
  desc "Menu-bar tracker for Codex usage, limits, and token activity"
  homepage "https://github.com/Agend-Systems/codex-usage-tracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Codex Usage.app"

  uninstall quit: "com.agend.CodexUsageTracker"

  zap trash: [
    "~/Library/Preferences/com.agend.CodexUsageTracker.plist",
    "~/Library/Saved Application State/com.agend.CodexUsageTracker.savedState",
  ]
end
