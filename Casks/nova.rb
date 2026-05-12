cask "nova" do
  version "0.18.3"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.18.3_aarch64.dmg"
    sha256 "b17185a29c1e293664ff249524e5046ac1c75257fd6f4379d8a38434343ddaf9"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"

  binary "#{appdir}/Nova.app/Contents/MacOS/nova", target: "nova"
end
