cask "llmfuse" do
  version "0.2.0"
  sha256 "3e0c19496e03025b92d394d62019469a4d4dbd1bef55cf35501330f2b2e80568"

  url "https://github.com/enclavum/llmfuse/releases/download/v#{version}/LLMFuse.dmg",
      verified: "github.com/enclavum/llmfuse/"
  name "LLMFuse"
  desc "Menu-bar memory watchdog for local LLM providers, with cross-provider eject"
  homepage "https://github.com/enclavum/llmfuse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "LLMFuse.app"

  zap trash: [
    "~/Library/Application Support/LLMFuse",
    "~/Library/Caches/com.enclavum.llmfuse",
    "~/Library/HTTPStorages/com.enclavum.llmfuse",
    "~/Library/Preferences/com.enclavum.llmfuse.plist",
  ]
end
