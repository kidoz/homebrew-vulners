class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.5/vulners-cli_1.2.5_darwin_arm64.tar.gz"
      sha256 "b81e55bf3c990c8315c9b299ba52e290656b1b6f631460322d64c8c3b7be4fbf"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.5/vulners-cli_1.2.5_darwin_amd64.tar.gz"
      sha256 "beb663148a71fb1d4736d6d10c3ec1bd0ae83f9493e6cf1d91d63537e336c8cb"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
