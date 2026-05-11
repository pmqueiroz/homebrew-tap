class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "0.15.2"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.15.2_x86_64.AppImage"
    sha256 "98c795aa99cbe21432f78fbbd693f425c69d7781f14750d7dbe96454b2221b93"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
