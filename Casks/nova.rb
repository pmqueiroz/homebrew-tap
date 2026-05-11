 cask "nova" do
   version "0.15.2"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.15.2_aarch64.dmg"
    sha256 "dc78c4de4ed1c8d8c56df045224812bd41625b82aee2914c2bd653e09dbad6c9"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
   homepage "https://github.com/pmqueiroz/nova"

   app "Nova.app"

   binary "#{appdir}/Nova.app/Contents/MacOS/nova", target: "nova"
 end
 CASK
