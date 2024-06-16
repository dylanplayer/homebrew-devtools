class Quick < Formula
  desc "A CLI that allows you to easily manage cloned repositories"
  homepage "https://github.com/dylanplayer/quick"
  url "https://github.com/dylanplayer/quick/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "095e007c1d9997761f556462860de377b4128e1345c36c1c9422726626f4bb9e"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "bin/quick"
  end

  test do
    system "#{bin}/quick", "--help"
  end
end
