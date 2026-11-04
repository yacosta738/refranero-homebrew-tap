class Refranero < Formula
  desc "Offline-first command-line proverbs with optional Cervantes and Wayback imports"
  homepage "https://github.com/yacosta738/refranero"
  url "https://github.com/yacosta738/refranero/releases/download/v0.4.0/refranero-0.4.0-aarch64-apple-darwin.tar.gz"
  version "0.4.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yacosta738/refranero/releases/download/v0.4.0/refranero-0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "refranero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/refranero --version")
  end
end
