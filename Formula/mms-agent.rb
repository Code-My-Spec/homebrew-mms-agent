class MmsAgent < Formula
  desc "MMS Agent — local pairing companion for Market My Spec"
  homepage "https://marketmyspec.com"
  version "0.2.0"
  license "Proprietary"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/Code-My-Spec/market_my_spec/releases/download/v0.2.0/market_my_spec_agent_macos_m1"
  sha256 "bc698a4e5c32a49c3244e5f53540416dba58a32b17de0288fd18620b2f751adb"

  def install
    src = stable.url.split("/").last
    bin.install src => "mms-agent"
  end

  test do
    assert_match "mms-agent", shell_output("#{bin}/mms-agent help")
  end
end
