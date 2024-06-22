class ImportHolmes < Formula
  version "v0.1.0"
  desc "CLI tool to inspect Javascript/Typescript project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  sha256 "20bd13663ecd92fe13bac54292e2baca56631a17ab6e2536f518887fa93244a6"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
  end

  def install
    bin.install "import-holmes"
  end
end
