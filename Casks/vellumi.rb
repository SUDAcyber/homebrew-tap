cask "vellumi" do
  version "0.5.0"
  sha256 "d70698e502327d12629d63d0f3094accf449f874eacf2edce9c0629d41b43a8e"

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
