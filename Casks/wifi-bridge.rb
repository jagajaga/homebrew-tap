cask "wifi-bridge" do
  version "0.2.1"
  sha256 "8bdbfd102b53fa86b298404baf0a355c3598ab36731d79b42343d05d8093482d"

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
