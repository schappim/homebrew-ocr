class Ocr < Formula
  desc "Get any text on your screen into your clipboard."
  homepage "https://github.com/schappim/macOCR"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/schappim/macOCR/releases/download/v1.1.0/macOCR-arm64.tar.gz"
      sha256 "19c68b09d20b8eadc1f8cd420b0b049eb28eb86556324c913f77932bddf6436e"
    end
    on_intel do
      url "https://github.com/schappim/macOCR/releases/download/v1.1.0/macOCR-x86_64.tar.gz"
      sha256 "69b53d83d15c624b9a6998b5c8d2aa17a2d9a1b4f2aae5dae4a16bc0186066ec"
    end
  end

  def install
    bin.install "ocr"
  end

  test do
    system "#{bin}/ocr", "--help"
  end
end
