class Chanch < Formula
  desc "macOS WiFi channel changer"
  homepage "https://github.com/quackduck/chanch"
  url "https://github.com/quackduck/chanch/releases/download/v0.1.5/release.tar.gz"
  sha256 "e8295799c1ebbdd9bc56c21afc74fab0b7d71cffdc4999ee4bb58a4cfe50e136"
  license "Unlicense"

  depends_on :macos
  uses_from_macos "swift"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install './chanch'
  end
end
