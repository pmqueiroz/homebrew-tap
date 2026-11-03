cask "nova" do
  version "1.2.1"

  on_intel do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/"
    sha256 ""
  end

  on_arm do
    url "https://github.com/pmqueiroz/nova/releases/download/v#{version}/nova_1.2.1_aarch64.dmg"
    sha256 "58c3554b31104423041d7d7ee46fe5e39e7f449e8798743ab933c303101d0100"
  end

  name "Nova"
  desc "A GPU-accelerated terminal emulator"
  homepage "https://github.com/pmqueiroz/nova"

  app "Nova.app"

  binary "#{appdir}/Nova.app/Contents/MacOS/nova", target: "nova"
end
