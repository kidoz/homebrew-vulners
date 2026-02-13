class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.2/vulners-cli_1.2.2_darwin_arm64.tar.gz"
      sha256 "38a3691d6db47e8637e8050060b3b1d71e05da855205eee46c410a5626890c8b"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.2/vulners-cli_1.2.2_darwin_amd64.tar.gz"
      sha256 "5ab87786bb0578febd6c37d53f28c184c02d29576d4ddf97baf76277b02acc8f"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
