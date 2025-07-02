cask "font-ibm-plex-sans-jp-unhinted" do
  version "2.0.0"
  sha256 "ce6af1c716bfe24d2f8129129e4fea8cd4b573869d8417ec4f22eab1e07da510"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-jp%40#{version}/ibm-plex-sans-jp.zip"
  name "IBM Plex Sans JP"
  homepage "https://github.com/IBM/plex"

  conflicts_with cask: [
    "font-ibm-plex-sans-jp",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-jp-ttf-hinted",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-jp-ttf-unhinted"
  ]
  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-jp@?(\d+(?:\.\d+)+)$}i)
  end

  no_autobump! because: :requires_manual_review

  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-Bold.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-ExtraLight.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-Light.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-Medium.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-Regular.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-SemiBold.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-Text.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/unhinted/IBMPlexSansJP-Thin.otf"

  # No zap stanza required
end
