cask "lmdeck" do
  version "0.1.0"
  sha256 "d4af2cb34505620412382f9f549d1c34ed4bcf94db2379ed93338fb635d1279c"

  url "https://github.com/enclavum/lmdeck/releases/download/v#{version}/LMDeck.dmg"
  name "LMDeck"
  desc "One OpenAI endpoint for local LLM engines, with cross-engine memory management"
  homepage "https://github.com/enclavum/lmdeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "LMDeck.app"

  zap trash: [
    "~/Library/Application Support/LMDeck",
    "~/Library/Caches/com.enclavum.lmdeck",
    "~/Library/HTTPStorages/com.enclavum.lmdeck",
    "~/Library/Preferences/com.enclavum.lmdeck.plist",
  ]
end
