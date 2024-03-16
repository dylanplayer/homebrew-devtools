class Quick < Formula
  desc "A CLI that allows you to easily manage cloned repositories"
  homepage "https://github.com/dylanplayer/quick"
  url "https://github.com/dylanplayer/quick/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cdecdfb400029aeb984e10118c9d3b0ac13d14af6e93a4ad5ccb4fb526034f3a"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", "bundler"
    system "bundle", "config", "set", "--local", "path", libexec
    system "bundle", "install"

    bin.install "bin/quick"

    (bin/"quick").write_env_script(libexec/"bin/quick", GEM_HOME: ENV["GEM_HOME"])
  end
end
