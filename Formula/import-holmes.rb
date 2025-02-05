class ImportHolmes < Formula
  version "v0.5.0"
  desc "CLI tool to inspect project imports"
  homepage "https://github.com/pmqueiroz/import-holmes"
  
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "2e802c36d8c815b5f22937b1922cabfce537f0f4a687624083e77d504dd17657"
  elsif OS.linux?
    url "#{homepage}/releases/download/#{version}/import-holmes-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "fb2b7bb6b525f37061313a0dba3319e5e5e66d1a7dff6712ab921a847260d584"
  end

  def install
    bin.install "import-holmes"
  end
end
