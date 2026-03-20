cask "tildefix" do
  version "1.0.2"
  sha256 "d0240ffe330e4a5a6d60107a27cf49381f907fff3a0c5ddc0330ca918873e2a1"

  url "https://github.com/linkrage/TildeFix/releases/download/v#{version}/TildeFix-#{version}.zip"
  name "TildeFix"
  desc "Fix the § tilde/backtick key on UK/ISO Mac keyboards"
  homepage "https://github.com/linkrage/TildeFix"

  app "TildeFix.app"

  postflight do
    puts ""
    puts "==> TildeFix installed! Run it to start the guided setup:"
    puts ""
    puts "    open /Applications/TildeFix.app"
    puts ""
    puts "  The app will walk you through granting permissions"
    puts "  and adding it to Login Items automatically."
    puts ""
  end

  uninstall quit: "com.boreadesign.TildeFix"

  zap trash: [
    "~/.config/tildefix",
  ]
end
