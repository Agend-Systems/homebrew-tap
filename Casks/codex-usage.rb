cask "codex-usage" do
  version "0.1.3"
  sha256 "449b70784b69df34eaf1238a24bb70e5fdb4484c99bc1bc190ef9ffee6985618"

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
