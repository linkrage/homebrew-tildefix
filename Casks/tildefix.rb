cask "tildefix" do
  version "1.0.1"
  sha256 "c25f397d886d324d430a4edc4ccbf57b38f0b6ee26fcb7e93a07d4e360376d14"

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
