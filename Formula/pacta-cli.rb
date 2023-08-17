class PactaCli < Formula
  desc "A CLI for PACTA for Investors"
  homepage "https://github.com/jdhoffa/pacta-cli"
  url "https://github.com/jdhoffa/pacta-cli/archive/refs/tags/v0.0.0.9000.tar.gz"
  sha256 "57f92f65028b56b6eedf989a3743b0f7a565ea3a50047019779a0cfb94659b55"

  depends_on "rust" => :build
  depends_on "docker" => :build

  def install
    system "cargo", "install", "--locked", "--path", "."

    # Create a wrapper script for the CLI
    (bin/"pacta-cli").write <<~EOS
      #!/bin/bash
      exec "#{bin}/cargo run --release --"
    EOS
  end

  test do
    # TODO: Add your test here
  end
end
