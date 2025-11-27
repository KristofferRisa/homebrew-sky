class Sky < Formula
  desc "Your CLI tool description here"
  homepage "https://github.com/KristofferRisa/sky-cli"
  version "1.0.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky_1.0.1_Darwin_arm64.tar.gz"
      sha256 "PUT_ARM64_SHA256_HERE"
    else
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky_1.0.1_Darwin_x86_64.tar.gz"
      sha256 "PUT_X86_64_SHA256_HERE"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky_1.0.1_Linux_arm64.tar.gz"
      sha256 "PUT_LINUX_ARM64_SHA256_HERE"
    else
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky_1.0.1_Linux_x86_64.tar.gz"
      sha256 "PUT_LINUX_X86_64_SHA256_HERE"
    end
  end

  def install
    bin.install "sky"
  end

  test do
    system "#{bin}/sky", "--version"
  end
end
