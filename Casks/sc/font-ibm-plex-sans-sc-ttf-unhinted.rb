cask "font-ibm-plex-sans-sc-ttf-unhinted" do
  version "1.1.0"
  sha256 "0aabd737c8ef0206892b912c759101c10b86c6244be99f2e6b57c6905c716837"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-sc%40#{version}/ibm-plex-sans-sc.zip"
  name "IBM Plex Sans SC"
  homepage "https://github.com/IBM/plex"

  conflicts_with cask: [
    "font-ibm-plex-sans-sc",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-sc-unhinted",
    "bobh-official/ibm-plex-cjk-extra/font-ibm-plex-sans-sc-ttf-hinted"
  ]
  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-sc@?(\d+(?:\.\d+)+)$}i)
  end

  no_autobump! because: :requires_manual_review

  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-Bold.ttf"
  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-ExtraLight.ttf"
  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-Light.ttf"
  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-Medium.ttf"
  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-Regular.ttf"
  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-SemiBold.ttf"
  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-Text.ttf"
  font "ibm-plex-sans-sc/fonts/complete/ttf/unhinted/IBMPlexSanssc-Thin.ttf"

  # No zap stanza required
end
