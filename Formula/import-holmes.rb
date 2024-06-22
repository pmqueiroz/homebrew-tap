class ImportHolmes < Formula
  version "v0.1.0"
  desc "CLI tool to inspect Javascript/Typescript project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  sha256 "da39a3ee5e6b4b0d3255bfef95601890afd80709"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
  end

  def install
    bin.install "import-holmes"
  end
end
