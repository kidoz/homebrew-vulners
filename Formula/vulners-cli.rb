class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.5.2/vulners-cli_1.5.2_darwin_arm64.tar.gz"
      sha256 "2e50f602c438996cf0a5284b48906e4928a3a5e716c220c5096b2efa0f9189f3"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.5.2/vulners-cli_1.5.2_darwin_amd64.tar.gz"
      sha256 "30a1bcef19a7c54584d6417bf466daabcf0b17abbc7a1bf6e2081fe065b069f1"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
