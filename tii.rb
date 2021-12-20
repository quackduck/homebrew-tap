# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tii < Formula
  desc "Command not found? Install it right there!"
  homepage "https://github.com/quackduck/tii"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/quackduck/tii/releases/download/v1.0.5/tii_1.0.5_Darwin_x86_64.tar.gz"
      sha256 "f51255c123f6134e01b7fd9c3aba8dd8877eff3c1911ee24016596345f6179a0"

      def install
        bin.install "tii"
        fish_function.install "shell/tii_on_command_not_found.fish"
        (prefix/"etc/profile.d").install "shell/tii_on_command_not_found.sh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/quackduck/tii/releases/download/v1.0.5/tii_1.0.5_Darwin_arm64.tar.gz"
      sha256 "0e80f342aee01b7ec6c3c1ceaa5b0cc709f94ba249a33f214378f66372895f99"

      def install
        bin.install "tii"
        fish_function.install "shell/tii_on_command_not_found.fish"
        (prefix/"etc/profile.d").install "shell/tii_on_command_not_found.sh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/quackduck/tii/releases/download/v1.0.5/tii_1.0.5_Linux_arm64.tar.gz"
      sha256 "0f91401d32258a3bd9437262a8e6448f396f333fdd7df1eb28bd31a3797fa5d2"

      def install
        bin.install "tii"
        fish_function.install "shell/tii_on_command_not_found.fish"
        (prefix/"etc/profile.d").install "shell/tii_on_command_not_found.sh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/quackduck/tii/releases/download/v1.0.5/tii_1.0.5_Linux_x86_64.tar.gz"
      sha256 "2e417e895e6db34b20e802cd6e99305550c0f59cf16f936d43b5fa584a62b8e4"

      def install
        bin.install "tii"
        fish_function.install "shell/tii_on_command_not_found.fish"
        (prefix/"etc/profile.d").install "shell/tii_on_command_not_found.sh"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/quackduck/tii/releases/download/v1.0.5/tii_1.0.5_Linux_armv6.tar.gz"
      sha256 "d90508d5f3dd78989e074a5a55dd4c2797a86925cc85a3fd22c09f9864c9a2c6"

      def install
        bin.install "tii"
        fish_function.install "shell/tii_on_command_not_found.fish"
        (prefix/"etc/profile.d").install "shell/tii_on_command_not_found.sh"
      end
    end
  end

  def caveats; <<~EOS
    For bash or zsh, put something like this in a profile file (like ~/.bash_profile or ~/.zshrc):
    . #{etc}/profile.d/tii_on_command_not_found.sh
  EOS
  end
end
