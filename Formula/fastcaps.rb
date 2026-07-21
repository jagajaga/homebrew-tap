class Fastcaps < Formula
  desc "Make Caps Lock a fast input-language switch key on macOS"
  homepage "https://github.com/jagajaga/macos-fast-caps-lock-switch"
  url "https://github.com/jagajaga/macos-fast-caps-lock-switch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "853a5eea9aa3e407049b53d3c81f6086b5633d09f12267634d7e480bdb824424"
  license "MIT"

  depends_on :macos

  def install
    bin.install "fastcaps"
  end

  test do
    assert_match "fastcaps 1.0.0", shell_output("#{bin}/fastcaps version")
  end
end
