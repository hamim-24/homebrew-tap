class SystemSuite < Formula
  desc "Terminal-based system maintenance and monitoring toolkit"
  homepage "https://github.com/hamim-24/system_suite"
  url "https://github.com/hamim-24/system_suite/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "572557c21009b61a5daa5c4e64e2c6b5c989daf7449ae742fb341535ce2d625b"
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

