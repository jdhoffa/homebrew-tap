class PactaCli < Formula
  desc "A CLI for PACTA for Investors"
  homepage "https://github.com/jdhoffa/pacta-cli"
  url "https://github.com/jdhoffa/pacta-cli/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "7b27f89f1df5c5c4600c0a40048abf268db388fcac9df095f6211261ab801f59"

  depends_on "rust" => :build
  depends_on "docker" => :build

  def install
    system "cargo", "build", "--release", "--bin", "pacta-cli"
    bin.install "target/release/pacta-cli"
  end

  test do
    # TODO: Add your test here
  end
end
