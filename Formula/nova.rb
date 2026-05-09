class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "0.12.3"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.12.3_x86_64.AppImage"
    sha256 "aa4572bc78e1db6244b212598bd9bc1df5c8ba842beb8ec4968fe908b2d6f5e8"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
