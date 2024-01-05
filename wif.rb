class Wif < Formula
  desc "WiFi packet sniffer"
  homepage "https://github.com/quackduck/wif"
  url "https://github.com/quackduck/wif/releases/download/v0.1.2/release.tar.gz"
  sha256 "3d3a4251c3a8c06ebc3da17a9b132072e5f827e872afee9f38fafc89bd7a699c"
  license "Unlicense"

  depends_on "libpcap" unless OS.mac?

  def install
    system "gcc", "-lpcap", "wif.c", "-o", "wif"
    bin.install './wif'
  end
end
