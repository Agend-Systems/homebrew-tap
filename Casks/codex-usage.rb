cask "codex-usage" do
  version "0.1.5"
  sha256 "6ebc675df43ca3b1f53a028c3d7be516b1700f892e99011aef2ffb3411055ff3"

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
