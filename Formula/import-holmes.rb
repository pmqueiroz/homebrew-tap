class ImportHolmes < Formula
  version "v0.3.0"
  desc "CLI tool to inspect Javascript/Typescript project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0b55a0a8ad6c15bc4c25d066edf9ffc5e6a03da2e4b5c795d346293901735dfe"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5bb1c63ea19f49cfc4c3c7f04ef5674837afa6c5f7d07311392a4e988bb471ce"
  end

  def install
    bin.install "import-holmes"
  end
end
