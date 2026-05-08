cask "nova" do
  version "0.6.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.6.0_aarch64.dmg"
    sha256 "72a2fd46b6416073ce3f606043f7b926ed3111c420a692503e194d6e4b5ac7f4"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
