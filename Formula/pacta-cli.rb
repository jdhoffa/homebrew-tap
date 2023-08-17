class PactaCli < Formula
  desc "A CLI for PACTA for Investors"
  homepage "https://github.com/jdhoffa/pacta-cli"
  url "https://github.com/jdhoffa/pacta-cli/archive/refs/tags/v0.0.0.9000.tar.gz"
  sha256 "5809c38a2291aea166dc0a984861b4f2636088a280156901e53bd57aafd5d9b9"

  depends_on "rust" => :build
  depends_on "docker" => :build

  def install
    system "cargo", "install", "--locked", "--path", "."

    # Create a wrapper script for the CLI
    (bin/"pacta-cli").write <<~EOS
      #!/bin/bash
      "#{bin}/cargo" run --release --
    EOS
  end

  test do
    # TODO: Add your test here
  end
end
