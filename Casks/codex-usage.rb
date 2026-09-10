cask "codex-usage" do
  version "0.1.1"
  sha256 "329ae335ebf387281822cbc17cd779ceb3ac5f311aa1dac4a60660f3c43335bc"

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
