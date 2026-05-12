class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "0.18.3"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.18.3_x86_64.AppImage"
    sha256 "eac0efad80eeda25b09bcae955babb362d775af5c8b32fb075928c57c6ad0543"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
