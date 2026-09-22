cask "codex-usage" do
  version "0.1.4"
  sha256 "4b0da99e6c69427d0d1b54574f519963da1aede52922486d9393215c875ac330"

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
