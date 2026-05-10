cask "nova" do
  version "0.14.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.14.0_aarch64.dmg"
    sha256 "859d38d5eaac8e030e74844b39c50edf5d1d19770133993c7430f8b4a473a3eb"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
