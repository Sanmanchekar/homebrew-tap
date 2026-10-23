class Agentglance < Formula
  desc "Activity Monitor for AI agents: see what Claude/Codex started and clean it up"
  homepage "https://github.com/Sanmanchekar/agentglance"
  url "https://github.com/Sanmanchekar/agentglance/releases/download/v0.1.2/agentglance-0.1.2-macos-universal.tar.gz"
  sha256 "a63e40415d76d844ebf7de5e707fa2cf15672c7f6751e4969e8bca6407a9a507"
  license "MIT"

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
