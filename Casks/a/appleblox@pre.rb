cask "appleblox@pre" do
  arch arm: "arm64", intel: "x64"
  
  version "0.8.6"
  sha256 arm:   "27e4fce883d7db258023d413fffc2a4fab5a6784285a33625597fd31a49210c9"
         intel: "30e5809ef65ea585aa6e794b441e731c34e2e21ca5d1c295cbf02e26f0e94b3b"

  url "https://github.com/AppleBlox/appleblox/releases/download/#{version}/AppleBlox-#{version}_#{arch}.dmg",
    verified: "github.com/AppleBlox/appleblox/"
  name "AppleBlox"
  desc "AppleBlox is a Roblox launcher for macOS, inspired by Bloxstrap. It includes features such as DiscordRPC and Fast-flags, with ongoing development for additional functionality."
  homepage "https://appleblox.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "AppleBlox.app"

  zap trash: [
  "~/Library/Application Support/AppleBlox"
  ]
end
