class ImportHolmes < Formula
  version "v0.1.0"
  desc "CLI tool to inspect Javascript/Typescript project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  sha256 "e9a5d7c5d173ad290e545bc88d628397a72bdb6e81b26f0fb80d627488fa5f01"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
  end

  def install
    bin.install "import-holmes"
  end
end
