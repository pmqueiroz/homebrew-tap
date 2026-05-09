cask "nova" do
  version "0.11.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.11.0_aarch64.dmg"
    sha256 "9d1513c14a167712eeced8db8b0142617dea7cc86edcab3356f71afeba59ccf0"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
