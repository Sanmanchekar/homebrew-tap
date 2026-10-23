cask "agentglance-app" do
  version "0.1.2"
  sha256 "6a29cc5378c00c01754e6bc6b1d3ccdc60d0b35fbd4886943f21a25748c66758"

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
