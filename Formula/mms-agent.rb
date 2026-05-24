class MmsAgent < Formula
  desc "MMS Agent — local pairing companion for Market My Spec"
  homepage "https://marketmyspec.com"
  version "0.3.0"
  license "Proprietary"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/Code-My-Spec/market_my_spec/releases/download/v0.3.0/market_my_spec_agent_macos_m1"
  sha256 "12fb63c09317488f0f6aeed4b6464d07fa657369a12d6f2f83cf762155435bfc"

  def install
    src = stable.url.split("/").last
    bin.install src => "mms-agent"
  end

  test do
    assert_match "mms-agent", shell_output("#{bin}/mms-agent help")
  end
end
