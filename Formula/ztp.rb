class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.4.0/ztp-0.4.0-macos-arm64.tar.gz"
  sha256 "00067a7d94343c0f8375af0e185c4e3c3c01758d2ba542d33f153e01d908250f"
  version "0.4.0"
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
