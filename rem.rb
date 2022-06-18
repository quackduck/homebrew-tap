# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rem < Formula
  desc "Rem is a CLI Trash which makes it ridiculously easy to recover them."
  homepage "https://github.com/quackduck/rem"
  version "3.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quackduck/rem/releases/download/v3.0.1/rem_3.0.1_Darwin_arm64.tar.gz"
      sha256 "9f4eb9e9d126e8945fbe5e7737bafaf902feeb6c16a51849cef5713b9b2d1c6d"

      def install
        bin.install "rem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/quackduck/rem/releases/download/v3.0.1/rem_3.0.1_Darwin_x86_64.tar.gz"
      sha256 "c005361076f65df1af0f06216ce0f05e522cc76bf93bd087d6e080b3e257af06"

      def install
        bin.install "rem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/quackduck/rem/releases/download/v3.0.1/rem_3.0.1_Linux_arm64.tar.gz"
      sha256 "aa2053903ee7a876c0f8a256f62144fa751ee933d2ed353697b7329e7c1d3392"

      def install
        bin.install "rem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/quackduck/rem/releases/download/v3.0.1/rem_3.0.1_Linux_x86_64.tar.gz"
      sha256 "ace6dfebaf4d191db30086e581002bf4a99b04c4d3c8c7a1f4fbe0d8c90ab643"

      def install
        bin.install "rem"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/quackduck/rem/releases/download/v3.0.1/rem_3.0.1_Linux_armv6.tar.gz"
      sha256 "12b6e14b4457ea9523027bc2a7373ac8c1f561131399c905fadc1fc533fc6792"

      def install
        bin.install "rem"
      end
    end
  end
end
