class SystemSuite < Formula
  desc "Terminal-based system maintenance and monitoring toolkit"
  homepage "https://github.com/hamim-24/system_suite"
  url "https://github.com/hamim-24/system_suite/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "90e9b887e897e1e55d6b8f6679af3b66152731442bc763ab7b8434c7806ad1fe"
  license "MIT"
  version "1.0.0"

  depends_on "bash"

  def install
    bin.install "system_suite.sh" => "system-suite"
  end

  test do
    system "#{bin}/system-suite", "--help"
  end
end

