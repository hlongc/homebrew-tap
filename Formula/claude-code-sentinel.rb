class ClaudeCodeSentinel < Formula
  desc "Native macOS approval popover for Claude Code"
  homepage "https://github.com/hlongc/claude-code-sentinel"
  url "https://github.com/hlongc/claude-code-sentinel/releases/download/v0.1.5/claude-code-sentinel-macos-universal.tar.gz"
  sha256 "966be5c7c7aac93b328dae45aa966b567471933a79d900b03e8228a89feec837"
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
