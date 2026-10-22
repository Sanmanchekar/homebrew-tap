class Agentglance < Formula
  desc "Activity Monitor for AI agents: see what Claude/Codex started and clean it up"
  homepage "https://github.com/Sanmanchekar/agentglance"
  url "https://github.com/Sanmanchekar/agentglance/releases/download/v0.1.0/agentglance-0.1.0-macos-universal.tar.gz"
  sha256 "7fd4976bbc0331ef45d466ee2ef4ab5e92c09251c60df482a6789847e235cbdc"
  version "0.1.0"

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
