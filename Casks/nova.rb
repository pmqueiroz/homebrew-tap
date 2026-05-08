cask "nova" do
  version "0.7.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.7.0_aarch64.dmg"
    sha256 "57c24516ce1e994dec56df88fab92d6ccabae8e2b9ca55b000e66df7c8f0481c"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
