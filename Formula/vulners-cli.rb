class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.3.0/vulners-cli_1.3.0_darwin_arm64.tar.gz"
      sha256 "5082d40a03986cc54b1ac6fb19534312e7e039284e3ef68cd514db05fa96789f"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.3.0/vulners-cli_1.3.0_darwin_amd64.tar.gz"
      sha256 "d29c3102a07f90e376d4e2edd89b6263de6545c602b6df5108284f55928fb2df"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
