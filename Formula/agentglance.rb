class Agentglance < Formula
  desc "Activity Monitor for AI agents: see what Claude/Codex started and clean it up"
  homepage "https://github.com/Sanmanchekar/agentglance"
  url "https://github.com/Sanmanchekar/agentglance/releases/download/v0.1.1/agentglance-0.1.1-macos-universal.tar.gz"
  sha256 "a481da57f590cfd72f6b2918fd13b644fb022c8abf059569862faa26c669f679"

  depends_on macos: :sonoma

  def install
    bin.install "agentglance"
  end

  def caveats
    <<~EOS
      To show each Claude Code session's state and your 5h/weekly limits:
        agentglance install
      The menu bar app is a separate cask:
        brew install --cask sanmanchekar/tap/agentglance-app
    EOS
  end

  test do
    assert_match "agentglance #{version}", shell_output("#{bin}/agentglance --version")
    assert_match "usage: agentglance", shell_output("#{bin}/agentglance --help")
  end
end
