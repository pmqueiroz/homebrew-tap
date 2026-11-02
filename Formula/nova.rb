class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "1.1.1"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_1.1.1_x86_64.AppImage"
    sha256 "597219ea45f6542ede7230d636b462c32ff385c95d13ac4ad33edb6d797c9f75"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
