cask "automatic-mouse-mover" do
  version "1.4.0"
  sha256 "1c1314137849b5c28cb350bae3deb0dade4cd16a655f5b5a4d08f782cbe6b687"

  url "https://github.com/Resousse/automatic-mouse-mover/releases/download/v#{version}/amm.zip"
  name "Automatic Mouse Mover"
  desc "Moves the mouse pointer when idle to keep the machine awake"
  homepage "https://github.com/Resousse/automatic-mouse-mover"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "amm.app"

  # The app is only ad-hoc signed, so Gatekeeper blocks it without this
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/amm.app"]
  end

  zap trash: [
    "~/Library/Application Support/amm",
    "~/Library/Preferences/com.pg.amm.plist",
  ]
end
