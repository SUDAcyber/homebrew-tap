cask "vellumi" do
  version "0.5.2"
  sha256 "6229fd6c7296f0e7d00dafa3b19fcc5749478e57df2ce6752acd3dc5776fec33"

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
