class Refranero < Formula
  desc "Offline-first command-line proverbs with optional Cervantes and Wayback imports"
  homepage "https://github.com/yacosta738/refranero"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yacosta738/refranero/releases/download/v0.6.0/refranero-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "738b3a0234fc3786400e593e70020f458e2fcc5ef9a957116e67290bb445d039"
    end

    on_intel do
      url "https://github.com/yacosta738/refranero/releases/download/v0.6.0/refranero-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "179687e3f17eaec7cb3d8cd9de23bbd6c30bd7575b207c213033da7c86463565"
    end
  end

  def install
    bin.install "refranero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/refranero --version")
  end
end
