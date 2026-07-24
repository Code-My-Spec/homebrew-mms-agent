class MmsAgent < Formula
  desc "MMS Agent — local pairing companion for Market My Spec"
  homepage "https://marketmyspec.com"
  version "0.4.1"
  license "Proprietary"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/Code-My-Spec/market_my_spec/releases/download/v0.4.1/market_my_spec_agent_macos_m1"
  sha256 "9021fbe88b045384985622d83587810c5403319850aa002dd9451486cc1a8950"

  def install
    src = stable.url.split("/").last
    bin.install src => "mms-agent"
  end

  test do
    assert_match "mms-agent", shell_output("#{bin}/mms-agent help")
  end
end
