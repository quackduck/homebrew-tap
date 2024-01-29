class Wif < Formula
  desc "WiFi packet sniffer"
  homepage "https://github.com/quackduck/wif"
  url "https://github.com/quackduck/wif/releases/download/v1.1.0/release.tar.gz"
  sha256 "42e0e5a3e993b8ac177c5c5605d977623765efe10ab422e237d6f7a53b59b86d"
  license "Unlicense"

  depends_on "libpcap" unless OS.mac?

  def install
    system "gcc", "-lpcap", "wif.c", "-o", "wif"
    bin.install './wif'
  end
end
