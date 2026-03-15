class Lumendiff < Formula
  desc "High-performance visual regression testing tool"
  homepage "https://github.com/pmqueiroz/lumen-diff"
  version "0.2.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.2.0/lumendiff-aarch64-apple-darwin.tar.xz"
      sha256 "90d25be4e812c1e21519027d3337f17b19314fb56f51f30a07b94d354d6b1393"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.2.0/lumendiff-x86_64-apple-darwin.tar.xz"
      sha256 "25031703134ad0233a4b508a611d327c7296898962786ef66d6dfde2564bd339"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.2.0/lumendiff-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c88e30915c9296129d80ed1c7ff3887beb89e63c4bb4a190b48588342d911739"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.2.0/lumendiff-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "16c600d196d76fbac76d6235d6857e886f393856c1ab5b983eea092e22ece8f8"
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
