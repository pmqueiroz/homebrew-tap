class Lumendiff < Formula
  desc "High-performance visual regression testing tool"
  homepage "https://github.com/pmqueiroz/lumen-diff"
  version "0.1.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.1.0/lumendiff-aarch64-apple-darwin.tar.xz"
      sha256 "632f5655cd7334f9009e4a7c06aa5105f6a01bfe13b8bbe8658f2c49abf2eff5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.1.0/lumendiff-x86_64-apple-darwin.tar.xz"
      sha256 "dcf21559ab1bb91a9a3323b6a66ef0ccc0ad59fb44d47bc920fda1b39c6d9b64"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.1.0/lumendiff-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "db1b889b26fcd5bbb5e5b8ad547cf09c59557315da16a5f6092a825fb600d569"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.1.0/lumendiff-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "78706d168902f9de5c94dcd04469d29cf52bcb8b956c5ed1adcd3110cf96607a"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-pc-windows-gnu":     {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "lumendiff" if OS.mac? && Hardware::CPU.arm?
    bin.install "lumendiff" if OS.mac? && Hardware::CPU.intel?
    bin.install "lumendiff" if OS.linux? && Hardware::CPU.arm?
    bin.install "lumendiff" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
