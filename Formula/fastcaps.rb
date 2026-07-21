class Fastcaps < Formula
  desc "Make Caps Lock a fast input-language switch key on macOS"
  homepage "https://github.com/jagajaga/macos-fast-caps-lock-switch"
  url "https://github.com/jagajaga/macos-fast-caps-lock-switch/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "7958ea5ba60cc8cb0b0fa89b02ffd8df13a46345bbfbb1baf28d677343910fc8"
  license "MIT"

  depends_on macos: :monterey

  def install
    bin.install "fastcaps"
  end

  test do
    assert_match "fastcaps 1.0.1", shell_output("#{bin}/fastcaps version")
  end
end
