class Wif < Formula
  desc "WiFi packet sniffer"
  homepage "https://github.com/quackduck/wif"
  url "https://github.com/quackduck/wif/releases/download/v1.0.0/release.tar.gz"
  sha256 "c35003a609c969f390d0897e61b65d297c6e3cd6e96965ebc317257464c480a4"
  license "Unlicense"

  depends_on "libpcap" unless OS.mac?

  def install
    system "gcc", "-lpcap", "wif.c", "-o", "wif"
    bin.install './wif'
  end
end
