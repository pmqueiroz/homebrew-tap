class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "1.0.0"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_1.0.0_x86_64.AppImage"
    sha256 "66ea02eed2269cc44abdefbb2a7f610b40ea271468eebec2a2840464397d73e1"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
