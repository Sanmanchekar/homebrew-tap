class Agentglance < Formula
  desc "Activity Monitor for AI agents: see what Claude/Codex started and clean it up"
  homepage "https://github.com/Sanmanchekar/agentglance"
  url "https://github.com/Sanmanchekar/agentglance/releases/download/v0.1.3/agentglance-0.1.3-macos-universal.tar.gz"
  sha256 "920a3c885f05c14fcc0d6c482c4d7a46b1e46633da25df5aae8d3dc0572dccce"
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
