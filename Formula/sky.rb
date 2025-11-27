class Sky < Formula
  desc "Your CLI tool description here"
  homepage "https://github.com/KristofferRisa/sky-cli"
  version "1.0.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky-cli_1.0.1_Darwin_arm64.tar.gz"
      sha256 "66d453f92da0eda3c794b523e8dd0e6690cf2b9bce22428391e3c6d5771a4124"
    else
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky-cli_1.0.1_Darwin_x86_64.tar.gz"
      sha256 "18eb674e948b16362ee4e67fd23b9e6e5a6cc96fbc508f913c96f0ade275b41e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky-cli_1.0.1_Linux_arm64.tar.gz"
      sha256 "9093f6ad73f370be3bda961e2384eb2728296ec4e9b5b14e350900a4dac5281b"
    else
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.0.1/sky-cli_1.0.1_Linux_x86_64.tar.gz"
      sha256 "9f89dc97378d5e0a970313bd1f1bfb1faf7203f6287766a4dd8879308d951d66"
    end
  end

  def install
    bin.install "sky"
  end

  test do
    system "#{bin}/sky", "--version"
  end
end
