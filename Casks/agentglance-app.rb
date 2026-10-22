cask "agentglance-app" do
  version "0.1.0"
  sha256 "669c57a02d1f3c87fdaf306ef130ab89f368aeda47d348b89b75b026cba12e10"

  url "https://github.com/Sanmanchekar/agentglance/releases/download/v#{version}/AgentGlance-#{version}.zip"
  name "AgentGlance"
  desc "Menu bar Activity Monitor for AI agents"
  homepage "https://github.com/Sanmanchekar/agentglance"

  depends_on macos: ">= :sonoma"

  app "AgentGlance.app"

  uninstall quit: "dev.agentglance.app"

  zap trash: "~/Library/Application Support/AgentGlance"

  caveats <<~EOS
    AgentGlance is not notarized yet. If macOS says it can't be opened, run once:
      xattr -dr com.apple.quarantine /Applications/AgentGlance.app
    or allow it in System Settings → Privacy & Security.
  EOS
end
