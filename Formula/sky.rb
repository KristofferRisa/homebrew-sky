class Sky < Formula
  desc "Your CLI tool description here"
  homepage "https://github.com/KristofferRisa/sky-cli"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.1.0/sky-cli_1.1.0_Darwin_arm64.tar.gz"
      sha256 "53220ac433f6e09c4852c1e6fbe471195575330d014bef45dfdd437770846bfe"
    else
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.1.0/sky-cli_1.1.0_Darwin_x86_64.tar.gz"
      sha256 "1e0282b229664c95bd358445cd3a550c4f7158106863bf69450f4e792b88db35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.1.0/sky-cli_1.1.0_Linux_arm64.tar.gz"
      sha256 "468fa06ee6f6ac8272e130fe6a02747b4de77a952cfc71bd1fb9bdf4365c4e53"
    else
      url "https://github.com/KristofferRisa/sky-cli/releases/download/v1.1.0/sky-cli_1.1.0_Linux_x86_64.tar.gz"
      sha256 "e872a8330f1e5247c5458455ffaac98018b7f11e352edaf6d5ec75982aba24bd"
    end
  end

  def install
    bin.install "sky"
  end

  test do
    system "#{bin}/sky", "--version"
  end
end
