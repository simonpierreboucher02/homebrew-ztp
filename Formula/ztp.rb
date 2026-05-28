class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.2.0/ztp-0.2.0-macos-arm64.tar.gz"
  sha256 "5f3f0f50ecbeb2e881b494bc2e7764ff2c7a2d803bd7dffe6f680593198c8e78"
  version "0.2.0"
  license "MIT"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "ztp"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/ztp version")
  end
end
