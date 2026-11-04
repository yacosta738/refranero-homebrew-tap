class Refranero < Formula
  desc "Offline-first command-line proverbs with optional Cervantes and Wayback imports"
  homepage "https://github.com/yacosta738/refranero"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yacosta738/refranero/releases/download/v0.6.1/refranero-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "ab451ba35d93c22808a2943f2b0a0164452d1791f989e6e52daf86c7b46d529e"
    end

    on_intel do
      url "https://github.com/yacosta738/refranero/releases/download/v0.6.1/refranero-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "170eb03c42d18fe5d343086c827ea39d6ec68a8701b86bf21773067fb7ea4507"
    end
  end

  def install
    bin.install "refranero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/refranero --version")
  end
end
