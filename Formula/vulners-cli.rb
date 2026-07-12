class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.4.0/vulners-cli_1.4.0_darwin_arm64.tar.gz"
      sha256 "50258d58d7418305e051c4f5e7a9522d2ef7a46340ceb7a6d6241c1d929084e3"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.4.0/vulners-cli_1.4.0_darwin_amd64.tar.gz"
      sha256 "99bfbffa923a61e4833f2485aa49c23c57823a113790f9521b71fdec13412be7"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
