cask "nova" do
  version "0.13.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.13.0_aarch64.dmg"
    sha256 "48b4d75504e775fd26d345312660ae056d288d807ac535f4404a6d2f34eaaaed"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
