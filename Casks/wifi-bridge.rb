cask "wifi-bridge" do
  version "0.2.2"
  sha256 "d9be21252976772dc92336c8af21ff9a14a0286f06c990824beb8c128f2d5183"

  url "https://github.com/jagajaga/wifi-bridge/releases/download/v#{version}/WiFiBridge-#{version}-macos.zip"
  name "WiFi Bridge"
  desc "Receive Wi-Fi passwords from your Android phone over Bluetooth"
  homepage "https://github.com/jagajaga/wifi-bridge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "WiFiBridge.app"

  # Not notarized (no Apple Developer ID yet): clear the quarantine flag Homebrew
  # sets on downloads so the app opens without a Gatekeeper prompt.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/WiFiBridge.app"]
  end

  uninstall quit: "dev.wifibridge.mac"

  zap trash: "~/Library/Application Support/WiFiBridge"
end
