cask "local-forward" do
  version "8.0.0"
  sha256 "3a7461f28750499121e2d69cf82d8044fbc48e0e0ec4c00cbbf6828dc9d83713"

  url "https://github.com/ork-acro/local-forward-releases/releases/download/v#{version}/LocalForward-v#{version}.dmg"
  name "LocalForward"
  desc "Tool for local port forwarding and management"
  homepage "https://github.com/ork-acro/local-forward-releases"

  app "LocalForward.app"

  # The app is ad-hoc signed (not notarized), so macOS quarantines it and shows
  # the "could not verify ... free of malware" dialog. Strip the quarantine
  # attribute on install/upgrade so it opens without manual `xattr`.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/LocalForward.app"]
  end

  zap trash: [
    "~/Library/Application Support/LocalForward",
    "~/Library/Preferences/com.ork-acro.LocalForward.plist",
    "~/Library/Saved Application State/com.ork-acro.LocalForward.savedState",
  ]
end
