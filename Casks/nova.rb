cask "nova" do
  version "0.12.5"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.12.5_aarch64.dmg"
    sha256 "af3d1860133bd2e04c7281af2910464c2fd03f54d67f25a2f1cc486b533f08d8"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
