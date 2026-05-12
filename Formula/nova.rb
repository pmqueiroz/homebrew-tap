class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "0.18.3"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.18.3_x86_64.AppImage"
    sha256 "6cafd2c57c49d20473934591aea0583d9ced9c1fd9fdb3a512fe412ef77efa7c"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
