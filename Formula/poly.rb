# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Poly < Formula
  desc "A command line utility for engineering organisms."
  homepage "https://github.com/TimothyStiles/poly"
  version "0.13.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.2/poly_0.13.2_Darwin_x86_64.tar.gz"
      sha256 "6ee354abe38d280facfaba20acced29c0b6e7649d8d565f882a1d79da6a18546"
    end
    if Hardware::CPU.arm?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.2/poly_0.13.2_Darwin_arm64.tar.gz"
      sha256 "84fff770e2ad8cbda7f5fe5a78a7a44a6a7659de2406469187980a74d1a42a8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.2/poly_0.13.2_Linux_x86_64.tar.gz"
      sha256 "1b278569ab571b1d97b5a1a8500f90cf13fad685c58516ea131a5267f860195c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.2/poly_0.13.2_Linux_arm64.tar.gz"
      sha256 "e7bc52e5aaf338a38e4d92342c83dde2db00396748dffe0ee56df6e2defc2a4f"
    end
  end

  depends_on "go"

  def install
    bin.install "poly"
  end

  test do
    system "#{bin}/poly -h"
  end
end
