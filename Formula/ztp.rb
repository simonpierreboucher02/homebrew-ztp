class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.9.0/ztp-0.9.0-macos-arm64.tar.gz"
  sha256 "c1a245f73b4622897d07b2a475047d8299acded1a8993f09f4c117f40f58fb66"
  version "0.9.0"
  license "MIT"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "ztp"
  end

  test do
    assert_match "ztp", shell_output("#{bin}/ztp version")
  end
end
