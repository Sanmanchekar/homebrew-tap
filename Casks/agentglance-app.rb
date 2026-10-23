cask "agentglance-app" do
  version "0.1.1"
  sha256 "009af8f59935f38829cfcee0d733b229c3226e49b65e2fed1d3cfa8ccc543a2f"

  url "https://github.com/Sanmanchekar/agentglance/releases/download/v#{version}/AgentGlance-#{version}.zip"
  name "AgentGlance"
  desc "Menu bar Activity Monitor for AI agents"
  homepage "https://github.com/Sanmanchekar/agentglance"

  depends_on macos: :sonoma

  app "AgentGlance.app"

  uninstall quit: "dev.agentglance.app"

  zap trash: "~/Library/Application Support/AgentGlance"

  caveats <<~EOS
    AgentGlance is not notarized yet. If macOS says it can't be opened, run once:
      xattr -dr com.apple.quarantine /Applications/AgentGlance.app
    or allow it in System Settings → Privacy & Security.
  EOS
end
