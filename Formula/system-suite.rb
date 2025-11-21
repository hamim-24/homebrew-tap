class SystemSuite < Formula
  desc "Terminal-based system maintenance and monitoring toolkit"
  homepage "https://github.com/hamim-24/system_suite"
  url "https://github.com/hamim-24/system_suite/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "c260a1cdfbb139844a58f16c79546eeddbc9abe8dba9b4494e8d9cf8b3b24b25"
  license "MIT"
  version "1.0.4"

  depends_on "bash"

  def install
    bin.install "system_suite.sh" => "system-suite"
  end

  test do
    system "#{bin}/system-suite", "--help"
  end
end
