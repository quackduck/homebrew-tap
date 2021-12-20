# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cool < Formula
  desc "Never let kernel_task eat up CPU again."
  homepage "https://github.com/quackduck/cool"
  version "0.3.4"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quackduck/cool/releases/download/v0.3.4/cool_0.3.4_Darwin_arm64.tar.gz"
      sha256 "5f44823be50aba3c51c8931ca35be3aa8a97775716961512f098a48b0fedf09b"

      def install
        bin.install "cool"
        bin.install "smc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/quackduck/cool/releases/download/v0.3.4/cool_0.3.4_Darwin_x86_64.tar.gz"
      sha256 "b9ed22c6a1f94fc1dee05c4ccc63cba0be7f63759dcc3aac8675f55c7074c0f4"

      def install
        bin.install "cool"
        bin.install "smc"
      end
    end
  end
end
