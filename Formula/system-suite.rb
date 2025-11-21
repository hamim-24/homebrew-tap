class SystemSuite < Formula
  desc "Terminal-based system maintenance and monitoring toolkit"
  homepage "https://github.com/hamim-24/system_suite"
  url "https://github.com/hamim-24/system_suite/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "e9509728f4a9bf3f2f4efced44b5fb67d39f3bf92870528fee95ea5bd956a2d1"
  license "MIT"
  version "1.0.5"

  depends_on "bash"

  def install
    bin.install "system_suite.sh" => "system-suite"
  end

  test do
    system "#{bin}/system-suite", "--help"
  end
end
