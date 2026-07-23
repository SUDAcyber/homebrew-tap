cask "vellumi" do
  version "0.4.1"
  sha256 "7847daae64e0fd19e5dc7148956e3e3e213624965c91d2d9abef495ae173be78"

  url "https://github.com/SUDAcyber/Vellumi/releases/download/v#{version}/Vellumi-#{version}.dmg"
  name "Vellumi"
  desc "Typora-style WYSIWYG Markdown editor - words melt into typography"
  homepage "https://github.com/SUDAcyber/Vellumi"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Vellumi.app"

  caveats <<~EOS
    Vellumi is not notarized yet. On first launch, right-click the app and
    choose Open, or run:
      xattr -dr com.apple.quarantine /Applications/Vellumi.app
  EOS
end
