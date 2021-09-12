# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Poly < Formula
  desc "A command line utility for engineering organisms."
  homepage "https://github.com/TimothyStiles/poly"
  version "0.13.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.4/poly_0.13.4_Darwin_x86_64.tar.gz"
      sha256 "ad293cda63523d20789b8d393a04fc7384c41a193792e4541099d9b2e361a2ab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.4/poly_0.13.4_Darwin_arm64.tar.gz"
      sha256 "ef8727dc5ddeaecc1fbe7bcb1852fa9a21bb3351e8f4a582c4933eb2dcd8b36c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.4/poly_0.13.4_Linux_x86_64.tar.gz"
      sha256 "373db4f9c8d1f9c448cf7c89741af70e440c04acd3be9e543d86a014263a087a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/timothystiles/poly/releases/download/v0.13.4/poly_0.13.4_Linux_arm64.tar.gz"
      sha256 "dfb4f8f8ef5ac85ba3b2d897de0df439f4a70b917914ad56e61ef057329d845f"
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
