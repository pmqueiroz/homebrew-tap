class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "1.2.0"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_1.2.0_x86_64.AppImage"
    sha256 "e52cd32321abec632b0e9ea1d8afd3b5a9814bd8fe355fde0eb408b4a040367f"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
