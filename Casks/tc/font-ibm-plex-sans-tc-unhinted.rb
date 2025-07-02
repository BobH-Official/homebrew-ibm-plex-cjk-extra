cask "font-ibm-plex-sans-tc-unhinted" do
  version "1.1.1"
  sha256 "b79600d3c9155fa05c9024eb81cfe2fbdd8cd068503dfafd79405ea577aa9fec"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-tc%40#{version}/ibm-plex-sans-tc.zip"
  name "IBM Plex Sans TC"
  homepage "https://github.com/IBM/plex"

  conflicts_with cask: [
    "font-ibm-plex-sans-tc",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-tc-ttf-hinted",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-tc-ttf-unhinted"
  ]
  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-tc@?(\d+(?:\.\d+)+)$}i)
  end

  no_autobump! because: :requires_manual_review

  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-Bold.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-ExtraLight.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-Light.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-Medium.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-Regular.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-SemiBold.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-Text.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/unhinted/IBMPlexSanstc-Thin.otf"

  # No zap stanza required
end
