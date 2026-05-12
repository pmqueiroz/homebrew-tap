cask "nova" do
  version "0.18.3"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_0.18.3_aarch64.dmg"
    sha256 "82fd990fd8bf36c61a7ec899d0c9ade9f4493f0d60484dbe02684dcd10804b51"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"

  binary "#{appdir}/Nova.app/Contents/MacOS/nova", target: "nova"
end
