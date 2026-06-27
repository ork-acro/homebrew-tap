cask "local-forward" do
  version "7.0.0"
  sha256 "f86911b97e603a7589bbcacc50678bdb518ed6aeb1f234839f70f2a386e2b238"

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
