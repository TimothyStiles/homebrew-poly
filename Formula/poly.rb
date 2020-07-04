# This file was generated by GoReleaser. DO NOT EDIT.
class Poly < Formula
  desc "A command line utility for engineering organisms."
  homepage "https://github.com/TimothyStiles/poly"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/timothystiles/poly/releases/download/v0.0.2/poly_0.0.2_Darwin_x86_64.tar.gz"
    sha256 "f632cdb471121c3f29b594a2fcedf06515fe0b7c967ecb29ecf69b95ecfee1ff"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/timothystiles/poly/releases/download/v0.0.2/poly_0.0.2_Linux_x86_64.tar.gz"
      sha256 "3f75145b1e94d32e42875daef9c4f66059dda9897e9bf6131c582686349f3232"
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
