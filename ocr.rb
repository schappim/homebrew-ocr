class Ocr < Formula
  desc "Get any text on your screen into your clipboard."
  homepage "https://github.com/schappim/macOCR"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/schappim/macOCR/releases/download/v1.2.0/macOCR-arm64.tar.gz"
      sha256 "c52b84b8b4852daf8c0ccc721498e46f82a2bb46f4609b1aab2eb2ee1f4383fd"
    end
    on_intel do
      url "https://github.com/schappim/macOCR/releases/download/v1.2.0/macOCR-x86_64.tar.gz"
      sha256 "7ef619f59dff794d4ad0e21856528efc5a6bbba2162394a51e3de19c314141cf"
    end
  end

  def install
    bin.install "ocr"
  end

  test do
    system "#{bin}/ocr", "--help"
  end
end
