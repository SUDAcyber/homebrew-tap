cask "vellumi" do
  version "0.4.2"
  sha256 "4876f6927a73931cf40bb070ee1ee0b8a58dde9359d34b5817251a4b51cfecb5"

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
