cask "kawa-code" do
  version "5.5.0"
  sha256 "6d12d2e98a7f08797693db2026ed16625afe5db8200b30224bfa7e2877e558ab"

  url "https://github.com/kawacode-ai/kawa-code-releases/releases/download/v#{version}/kawa-code-#{version}-aarch64.dmg"
  name "Kawa Code"
  desc "AI Decision Manager that captures and surfaces the reasoning behind code changes"
  homepage "https://kawacode.ai"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kawa Code.app"

  zap trash: [
    "~/.kawa-code",
    "~/Library/Application Support/Kawa Code",
    "~/Library/Caches/ai.kawacode.muninn",
    "~/Library/Preferences/ai.kawacode.muninn.plist",
  ]
end
