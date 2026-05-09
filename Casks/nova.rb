cask "nova" do
  version "0.10.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.10.0_aarch64.dmg"
    sha256 "e780a58ffbeb6bfa00a23933a4a02b379680f19c6fb49499b7743aa29c36bd3b"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"
end
