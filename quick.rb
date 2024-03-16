class Quick < Formula
  desc "A CLI that allows you to easily manage cloned repositories"
  homepage "https://github.com/dylanplayer/quick"
  url "https://github.com/dylanplayer/quick/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "5de05d2c69338ebfa00160ae520d351b2cf7b9fe862efc36d1cb61d80c113479"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "bin/quick"
  end

  test do
    system "#{bin}/quick", "--help"
  end
end
