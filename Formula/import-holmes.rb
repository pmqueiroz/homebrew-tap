class ImportHolmes < Formula
  version "v0.6.0"
  desc "CLI tool to inspect project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "a6c1c0e21a2d964ede33c359ed20fe66cb31cf8ebd2724bc62194cda4986e149"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "04735b1641e0324177b6a0cca8f68089917bedeb5625585043ecbc0b933175dc"
  end

  def install
    bin.install "import-holmes"
  end
end
