class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.1.0/ztp-0.1.0-macos-arm64.tar.gz"
  sha256 "da32bebb6fd3fda04cc79ddd20d5b92c47dbd963037fb6de712f061337df5ea7"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "ztp"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/ztp version")
  end
end
