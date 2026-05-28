class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.7.0/ztp-0.7.0-macos-arm64.tar.gz"
  sha256 "b781b8c0c7ad8430d108f942f322649c2c73f3c61df7b0b86e86869057790dee"
  version "0.7.0"
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
