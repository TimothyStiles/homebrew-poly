# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Poly < Formula
  desc "A command line utility for engineering organisms."
  homepage "https://github.com/TimothyStiles/poly"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.16.0/poly_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "c269b18f855c8666818843c42545a7fbdfedbf2fa4cd5cf0cff4ce9e97c63563"

      def install
        bin.install "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/timothystiles/poly/releases/download/v0.16.0/poly_0.16.0_Darwin_arm64.tar.gz"
      sha256 "5814d9e81e1a9f19b4e4a8696ce5bc989b67df03fba11d328ff3411d02b39717"

      def install
        bin.install "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/timothystiles/poly/releases/download/v0.16.0/poly_0.16.0_Linux_arm64.tar.gz"
      sha256 "b39d46cebf9f5b286e73b233cc840516a94f735285614df0f82fae1ca1599186"

      def install
        bin.install "poly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.16.0/poly_0.16.0_Linux_x86_64.tar.gz"
      sha256 "74be34bfaec7af79b3873e8160fcd1753b36a17e5ca53d272eb949eb9cc36654"

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
