class Ztp < Formula
  desc "Zyquo Tool Protocol — Native agent runtime for macOS"
  homepage "https://github.com/simonpierreboucher02/ztp"
  url "https://github.com/simonpierreboucher02/ztp/releases/download/v0.6.0/ztp-0.6.0-macos-arm64.tar.gz"
  sha256 "b3ce00758c90a3f1e5abde14ade4df942820f8bf7c6003bd721eb650538f94a3"
  version "0.6.0"
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
