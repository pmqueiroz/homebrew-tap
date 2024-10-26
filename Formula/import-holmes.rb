class ImportHolmes < Formula
  version "v0.4.0"
  desc "CLI tool to inspect Javascript/Typescript project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "ac5a1c6f2f0dae04ac65c7ecddb0f774e6be44d4215824e6cdc17df2e6c71718"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "03f26631c6daf512250e3c86f5cd6c85f7d6292f4648a953cea67bdbf5b3e626"
  end

  def install
    bin.install "import-holmes"
  end
end
