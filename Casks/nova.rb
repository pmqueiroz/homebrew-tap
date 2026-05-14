cask "nova" do
  version "0.19.0"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.19.0_aarch64.dmg"
    sha256 "124d9dbe253a1d6546cefa93948ca77c6fa9484610f1ae4fb53e20aa247a2c37"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"

  binary "#{appdir}/Nova.app/Contents/MacOS/nova", target: "nova"
end
