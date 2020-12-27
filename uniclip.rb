# This file was generated by GoReleaser. DO NOT EDIT.
class Uniclip < Formula
  desc "Cross-platform shared clipboard"
  homepage "https://github.com/quackduck/uniclip"
  version "2.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/quackduck/uniclip/releases/download/v2.0.1/uniclip_2.0.1_Darwin_x86_64.tar.gz"
    sha256 "f9e3f0aa46ee4251eb2caabd35ef17be7e308d2447d9a008e48ddbae5f7dac2e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quackduck/uniclip/releases/download/v2.0.1/uniclip_2.0.1_Linux_x86_64.tar.gz"
    sha256 "ece6eb7dcfd2157b13063d413e15bcf12a0b57a1ec5650c84c9d55273f870f59"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/quackduck/uniclip/releases/download/v2.0.1/uniclip_2.0.1_Linux_armv6.tar.gz"
    sha256 "0abee3df281252057d1d63fee45ae433d0f5b5e9fc4bf9041d4ac3671195f9a9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quackduck/uniclip/releases/download/v2.0.1/uniclip_2.0.1_Linux_arm64.tar.gz"
    sha256 "8037c53b43eb2fe0cf75a12b80f784b18221c8bcb157d27ee9c0141ba3bd0439"
  end

  def install
    bin.install "uniclip"
  end
end
