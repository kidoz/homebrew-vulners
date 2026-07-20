class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.5.1/vulners-cli_1.5.1_darwin_arm64.tar.gz"
      sha256 "8383669257df81bba1434ba4703dc2ac5a27f9e2575dd8aab6e33ead8ed4e7e9"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.5.1/vulners-cli_1.5.1_darwin_amd64.tar.gz"
      sha256 "1d919b86f2862a046ed44ff9da7f8c896aac92d8d3ae0d26187499f0b37fa33c"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
