class Fastcaps < Formula
  desc "Make Caps Lock a fast input-language switch key on macOS"
  homepage "https://github.com/jagajaga/macos-fast-caps-lock-switch"
  url "https://github.com/jagajaga/macos-fast-caps-lock-switch/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "abfa27771554390ef7af6f9756d5ac1fc1cb2fd06d05a8bdc104729340807f2b"
  license "MIT"

  depends_on macos: :monterey

  def install
    bin.install "fastcaps"
  end

  test do
    assert_match "fastcaps 1.0.1", shell_output("#{bin}/fastcaps version")
  end
end
