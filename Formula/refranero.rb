class Refranero < Formula
  desc "Offline-first command-line proverbs with optional Cervantes and Wayback imports"
  homepage "https://github.com/yacosta738/refranero"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yacosta738/refranero/releases/download/v0.7.2/refranero-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "d80138f0d4d5f16c66e3522f02430438ea618b4afcba4b57086542c542c290c1"
    end

    on_intel do
      url "https://github.com/yacosta738/refranero/releases/download/v0.7.2/refranero-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "41d1a0f000f4680a6ba864b553e7520028729eb4a22b9192565429cc69a0766e"
    end
  end

  def install
    bin.install "refranero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/refranero --version")
  end
end
