cask "local-forward" do
  version "6.0.0"
  sha256 "43014c77d50f6acdc69ed7865bd46e98c27e013c057604e541cd83a4b203291c"

  url "https://github.com/ork-acro/local-forward-releases/releases/download/v#{version}/LocalForward-v#{version}.dmg"
  name "LocalForward"
  desc "Tool for local port forwarding and management"
  homepage "https://github.com/ork-acro/local-forward-releases"

  app "LocalForward.app"

  zap trash: [
    "~/Library/Application Support/LocalForward",
    "~/Library/Preferences/com.ork-acro.LocalForward.plist",
    "~/Library/Saved Application State/com.ork-acro.LocalForward.savedState",
  ]
end