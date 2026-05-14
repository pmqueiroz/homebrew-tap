class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "0.19.0"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.19.0_x86_64.AppImage"
    sha256 "119fc7c6bdb2ccbd82f371be57d6b554b6de276473e6cae60c9fd8a4e745a4c5"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
