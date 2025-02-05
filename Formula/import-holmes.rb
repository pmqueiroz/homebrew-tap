class ImportHolmes < Formula
  version "v0.5.1"
  desc "CLI tool to inspect project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0d8686055e23793276d08b2e419ac600751b128e270ed519f65bbb1862d2ec30"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f7580f7e8079274dcaa5e7e244d731b02c332dd9d54c71e766fdc3d6f30737b2"
  end

  def install
    bin.install "import-holmes"
  end
end
