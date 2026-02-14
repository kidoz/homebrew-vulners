class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.4/vulners-cli_1.2.4_darwin_arm64.tar.gz"
      sha256 "3eec7d807fd0ac0f38eef2eb35703fbda9329ea4b42f61c3dd10a08a52739842"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.4/vulners-cli_1.2.4_darwin_amd64.tar.gz"
      sha256 "223bed45cbd5a079434f9f00ccf7e7594f4f5e9fc6868da6b62e6f1950bda655"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
