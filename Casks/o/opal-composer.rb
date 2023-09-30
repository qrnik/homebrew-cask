cask "opal-composer" do
  version "1.1.1_5"
  sha256 "82ddfe5c8375caf3523b7409fa32fc34612b5d8e755fe9a1d4b08502112c5bda"

  url "https://public-opal-bucket.s3.us-east-2.amazonaws.com/release/Opal_Composer_#{version}.dmg",
      verified: "public-opal-bucket.s3.us-east-2.amazonaws.com"
  name "Opal Composer"
  desc "Professional webcam software for the Opal C1"
  homepage "https://opalcamera.com/opal-composer"

  livecheck do
    url "https://opalcamera.com/opal-composer/download"
    regex(/href\s*=\s*['"][^'"]*Opal[._-]Composer[._-](\d+(?:[._-]\d+)+(?:[._-]\d+))/i)
  end

  depends_on macos: ">= :monterey"

  app "Opal Composer.app"
end
