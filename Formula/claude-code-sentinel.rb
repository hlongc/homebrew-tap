class ClaudeCodeSentinel < Formula
  desc "Native macOS approval popover for Claude Code"
  homepage "https://github.com/hlongc/claude-code-sentinel"
  url "https://github.com/hlongc/claude-code-sentinel/releases/download/v0.1.0/claude-code-sentinel-macos-universal.tar.gz"
  sha256 "a30054dc82182d1d2fac08cd64689452d6450fe55861f08fb5267421b8a4a906"
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
