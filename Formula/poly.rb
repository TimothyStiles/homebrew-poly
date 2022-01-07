# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Poly < Formula
  desc "A command line utility for engineering organisms."
  homepage "https://github.com/TimothyStiles/poly"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timothystiles/poly/releases/download/v0.17.0/poly_0.17.0_Darwin_arm64.tar.gz"
      sha256 "b18ccb7fc7d52d6a0999c9aaeb527aceef0b19d23061a8dcaadec77cdcf9d0b5"

      def install
        bin.install "poly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.17.0/poly_0.17.0_Darwin_x86_64.tar.gz"
      sha256 "b2a20dad9e0217572f1f67b08ad2d5bd2e4ec5592efd9acd40b365673d5a0e76"

      def install
        bin.install "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.17.0/poly_0.17.0_Linux_x86_64.tar.gz"
      sha256 "2f69772261e35ff87e8e103020e77ac1e377e4441bde27aad578c0065bd7abfa"

      def install
        bin.install "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/timothystiles/poly/releases/download/v0.17.0/poly_0.17.0_Linux_arm64.tar.gz"
      sha256 "143b67bb8664794c3a37763bdcfb86a9f25684ae05a70f0ef3bc4cf63a4909a6"

      def install
        bin.install "poly"
      end
    end
  end

  depends_on "go"

  test do
    system "#{bin}/poly -h"
  end
end
