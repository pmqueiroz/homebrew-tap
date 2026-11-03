class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "1.2.1"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_1.2.1_x86_64.AppImage"
    sha256 "977b44d42e2e761b3c102ab4aaa302d260b8d436ccaf28f08d3dcd6d494c88aa"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
