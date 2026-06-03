class ClaudeCodeSentinel < Formula
  desc "Native macOS approval popover for Claude Code"
  homepage "https://github.com/hlongc/claude-code-sentinel"
  url "https://github.com/hlongc/claude-code-sentinel/releases/download/v0.1.2/claude-code-sentinel-macos-universal.tar.gz"
  sha256 "12e30796d3ee6b4995493bc47c47d4c2aa48ed20b6b29970745a8f131068393c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "claude-code-sentinel"
    doc.install "README.md", "README.en.md", "LICENSE"
  end

  def caveats
    <<~EOS
      To install Claude Code managed hooks, run:
        claude-code-sentinel install-managed

      To verify the configuration, run:
        claude-code-sentinel doctor
    EOS
  end

  test do
    assert_match "All tests passed.", shell_output("#{bin}/claude-code-sentinel test")
  end
end
