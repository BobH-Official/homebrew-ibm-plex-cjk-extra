cask "font-ibm-plex-sans-tc-ttf-unhinted" do
  version "1.1.1"
  sha256 "b79600d3c9155fa05c9024eb81cfe2fbdd8cd068503dfafd79405ea577aa9fec"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-tc%40#{version}/ibm-plex-sans-tc.zip"
  name "IBM Plex Sans TC"
  homepage "https://github.com/IBM/plex"

  conflicts_with cask: [
    "font-ibm-plex-sans-tc",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-tc-unhinted",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-tc-ttf-hinted"
  ]
  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-tc@?(\d+(?:\.\d+)+)$}i)
  end

  no_autobump! because: :requires_manual_review

  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-Bold.ttf"
  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-ExtraLight.ttf"
  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-Light.ttf"
  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-Medium.ttf"
  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-Regular.ttf"
  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-SemiBold.ttf"
  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-Text.ttf"
  font "ibm-plex-sans-tc/fonts/complete/ttf/unhinted/IBMPlexSanstc-Thin.ttf"

  # No zap stanza required
end
