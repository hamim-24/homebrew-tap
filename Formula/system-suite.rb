class SystemSuite < Formula
  desc "Terminal-based system maintenance and monitoring toolkit"
  homepage "https://github.com/hamim-24/system_suite"
  url "https://github.com/hamim-24/system_suite/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
