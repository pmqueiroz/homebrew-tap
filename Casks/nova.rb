cask "nova" do
  version "0.12.4"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.12.4_aarch64.dmg"
    sha256 "dbda4882cd6bfa5265b32262f8d6f19fcf82e6cb38f4230ad8cd82dcf424b357"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
