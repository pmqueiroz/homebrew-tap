class Lumendiff < Formula
  desc "High-performance visual regression testing tool"
  homepage "https://github.com/pmqueiroz/lumen-diff"
  version "0.3.3"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.3.3/lumendiff-aarch64-apple-darwin.tar.xz"
      sha256 "2a35b26883d007161d2ed7066bbd9d2503215f4568f0ed7695d35818a7b05a7a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.3.3/lumendiff-x86_64-apple-darwin.tar.xz"
      sha256 "03c53d63f0b1da818f1b8b27651b7de7f8bb6abb94fbf09c0e741b3e14ff6629"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.3.3/lumendiff-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "6881cf1c186323eecf50113821a7946774e96ee4c55e74d62647937aa1bf1a94"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pmqueiroz/lumen-diff/releases/download/v0.3.3/lumendiff-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3b4373bae09785815b74cafeaf51961b1603cdbbae5e8fc220a4fbf9d6e33ce0"
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
