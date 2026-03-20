cask "tildefix" do
  version "1.0.0"
  sha256 "a13da8c4223b63b09aa9f21f894474de6a401063c5fc5c604195c8422c914942"

  url "https://github.com/linkrage/TildeFix/releases/download/v#{version}/TildeFix-#{version}.zip"
  name "TildeFix"
  desc "Fix the § tilde/backtick key on UK/ISO Mac keyboards"
  homepage "https://github.com/linkrage/TildeFix"

  app "TildeFix.app"

  postflight do
    puts ""
    puts "==> TildeFix installed successfully!"
    puts ""
    puts "  STEP 1: Grant permissions (required)"
    puts "    System Settings > Privacy & Security > Accessibility    → add TildeFix.app"
    puts "    System Settings > Privacy & Security > Input Monitoring → add TildeFix.app"
    puts ""
    puts "  STEP 2: Launch"
    puts "    open /Applications/TildeFix.app"
    puts ""
    puts "  STEP 3: Auto-start on login (recommended)"
    puts "    System Settings > General > Login Items → add TildeFix.app"
    puts ""
  end

  uninstall quit: "com.local.TildeFix"

  zap trash: [
    "~/Library/LaunchAgents/com.local.TildeFix.plist",
  ]
end
