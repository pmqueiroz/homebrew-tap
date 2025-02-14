class ImportHolmes < Formula
  version "v0.7.0"
  desc "CLI tool to inspect project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "5795ee9b994814255e73a03791dfa22353fe178680e48bf75ea6516399a6fbce"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "efdf6410473c1c2efe89406a1d31b62622342ffa2630c84047aa4968024b502b"
  end

  def install
    bin.install "import-holmes"
  end
end
