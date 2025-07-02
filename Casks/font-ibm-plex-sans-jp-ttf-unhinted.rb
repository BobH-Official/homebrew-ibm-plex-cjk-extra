cask "font-ibm-plex-sans-jp-ttf-unhinted" do
  version "2.0.0"
  sha256 "ce6af1c716bfe24d2f8129129e4fea8cd4b573869d8417ec4f22eab1e07da510"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-jp%40#{version}/ibm-plex-sans-jp.zip"
  name "IBM Plex Sans JP"
  homepage "https://github.com/IBM/plex"

  conflicts_with cask: ["font-ibm-plex-sans-jp", "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-jp-unhinted"]

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-jp@?(\d+(?:\.\d+)+)$}i)
  end

  no_autobump! because: :requires_manual_review

  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-Bold.ttf"
  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-ExtraLight.ttf"
  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-Light.ttf"
  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-Medium.ttf"
  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-Regular.ttf"
  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-SemiBold.ttf"
  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-Text.ttf"
  font "ibm-plex-sans-jp/fonts/complete/ttf/unhinted/IBMPlexSansJP-Thin.ttf"

  # No zap stanza required
end
