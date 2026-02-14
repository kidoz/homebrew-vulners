class VulnersCli < Formula
  desc "CLI vulnerability scanner powered by Vulners"
  homepage "https://github.com/kidoz/vulners-cli"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.3/vulners-cli_1.2.3_darwin_arm64.tar.gz"
      sha256 "93d5fa129535c664f37e8c833996eb2b9b7c72e337eae9efafe77b6f6aa54fac"
    else
      url "https://github.com/kidoz/vulners-cli/releases/download/v1.2.3/vulners-cli_1.2.3_darwin_amd64.tar.gz"
      sha256 "bfcc316cc19237a63d35f062676b0858e303fccf3d9357231a689656b5b3e40a"
    end
  end

  def install
    bin.install "vulners"
  end

  test do
    system "#{bin}/vulners", "version"
  end
end
