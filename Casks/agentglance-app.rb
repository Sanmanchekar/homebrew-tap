cask "agentglance-app" do
  version "0.1.3"
  sha256 "0e4f45a052d69c1c8a3978969f2dafd6e525190d26ea9e3c9e27ffe8f8d5a031"

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
