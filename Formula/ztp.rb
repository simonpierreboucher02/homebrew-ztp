class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.3.0/ztp-0.3.0-macos-arm64.tar.gz"
  sha256 "7a32675bdfa5fa1fec324fa8bb9e88c245e821708d080f4ba2a48ea6219dfb20"
  version "0.3.0"
  license "MIT"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "ztp"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/ztp version")
  end
end
