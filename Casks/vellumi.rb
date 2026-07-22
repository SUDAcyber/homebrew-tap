cask "vellumi" do
  version "0.4.0"
  sha256 "8de260014bd8e704ff2585f734d292820a11fe7d84afa44638e7e9499249d7e9"

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
