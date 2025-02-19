class ImportHolmes < Formula
  version "v0.7.1"
  desc "CLI tool to inspect project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "7bdb0b4819b80363904b2f20477c9730f725d3dffb96a1fc6498e9ec68e36766"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4810e094eecb2658b67d1cbf896745814d442b439ef493c95df2f2a8f0a9a20b"
  end

  def install
    bin.install "import-holmes"
  end
end
