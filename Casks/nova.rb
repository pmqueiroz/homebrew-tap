cask "nova" do
  version "0.10.1"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.10.1_aarch64.dmg"
    sha256 "aa9c751695656a43db7826eb706cc01bfcd77c949a2f5974fe1e064bbf26732b"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
