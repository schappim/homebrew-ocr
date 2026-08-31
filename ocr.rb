class Ocr < Formula
  desc "Get any text on your screen into your clipboard."
  homepage "https://github.com/schappim/macOCR"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://github.com/schappim/macOCR/releases/download/v1.3.0/macOCR-arm64.tar.gz"
      sha256 "98ce224fa688f95baa20dd414f27a2eaf56730aa90c06860427eacbd092380bc"
    end
    on_intel do
      url "https://github.com/schappim/macOCR/releases/download/v1.3.0/macOCR-x86_64.tar.gz"
      sha256 "62e43a1527a843e7ccd76fe9278f743549b4155cec39e0398c5c62ea92f83264"
    end
  end

  def install
    bin.install "ocr"
  end

  test do
    system "#{bin}/ocr", "--help"
  end
end
