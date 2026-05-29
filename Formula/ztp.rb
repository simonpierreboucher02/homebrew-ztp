class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.8.0/ztp-0.8.0-macos-arm64.tar.gz"
  sha256 "bb4dab2955364e5f84f52ab6bf457bb553bbf76c4e9be198b405ebe3c7cb7df1"
  version "0.8.0"
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
