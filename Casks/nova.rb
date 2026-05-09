cask "nova" do
  version "0.12.3"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.12.3_aarch64.dmg"
    sha256 "a4fd525894f5a10a88e2d750793bca3ec061eb4401c787006806009388826b58"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
