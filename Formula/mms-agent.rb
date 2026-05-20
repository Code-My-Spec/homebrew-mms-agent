class MmsAgent < Formula
  desc "MMS Agent — local pairing companion for Market My Spec"
  homepage "https://marketmyspec.com"
  version "0.1.0"
  license "Proprietary"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/Code-My-Spec/market_my_spec/releases/download/v0.1.0/market_my_spec_agent_macos_m1"
  sha256 "361dc9b0bd9869b8ab61e68a76514f1f6179506f6dd5da3476662e15fd1a4151"

  def install
    src = stable.url.split("/").last
    bin.install src => "mms-agent"
  end

  test do
    assert_match "mms-agent", shell_output("#{bin}/mms-agent help")
  end
end
