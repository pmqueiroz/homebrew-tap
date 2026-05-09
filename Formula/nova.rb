class Nova < Formula
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"
  version "0.12.5"

  on_linux do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.12.5_x86_64.AppImage"
    sha256 "518dbc54a2dc33e5c33bbdfc285d608c624cf54eda7e221dfbc784a7a4891ec4"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod "+x", appimage
    bin.install appimage => "nova"
  end
end
