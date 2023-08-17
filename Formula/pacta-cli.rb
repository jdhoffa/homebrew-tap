class PactaCli < Formula
  desc "A CLI for PACTA for Investors"
  homepage "https://github.com/jdhoffa/pacta-cli"
  url "https://github.com/jdhoffa/pacta-cli/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "78c8d6d8bcf3616f201fa6eff0d543c759bfa806a78f59e5846a0181ec197689"

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
