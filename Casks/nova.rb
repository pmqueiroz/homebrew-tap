cask "nova" do
  version "1.0.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_1.0.0_aarch64.dmg"
    sha256 "e5b663a02dc328277424c599f7edb243f727355b67ac0c8711d50ead9ebc29cf"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"

  binary "#{appdir}/Nova.app/Contents/MacOS/nova", target: "nova"
end
