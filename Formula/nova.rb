class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "1.1.0"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_1.1.0_x86_64.AppImage"
    sha256 "eecdebcbd12869b76ae3b5cb8e5d16d78f5a14f8df84541f1f3165e594fdd097"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
