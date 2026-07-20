class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.5.0/vulners-cli_1.5.0_darwin_arm64.tar.gz"
      sha256 "c47de99d7242db46a7dfdf23de5e8c5f9d87a24341be5f433450c4629b78d956"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.5.0/vulners-cli_1.5.0_darwin_amd64.tar.gz"
      sha256 "47d670fc062ca2732d212e0c7b214190038de3f7815ba7609f21b305325073bb"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
