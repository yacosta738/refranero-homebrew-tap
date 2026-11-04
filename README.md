# Refranero Homebrew tap

This tap distributes the `refranero` command-line application with prebuilt macOS binaries.
The formula is published automatically after a GitHub release has all required archives and verified SHA-256 checksums.

## Install

```sh
brew tap yacosta738/refranero-homebrew-tap https://github.com/yacosta738/refranero-homebrew-tap
brew install refranero
```

Homebrew-compatible clients can install directly from the tap:

```sh
nb install yacosta738/refranero-homebrew-tap/refranero
mt install yacosta738/refranero-homebrew-tap/refranero
```

The formula supports macOS Apple Silicon and Intel. Linux archives are published, but Linux installation is not enabled in the formula until the formula parser behavior is verified across the supported clients.

The first installable formula will appear after a new refranero release publishes its binary archives. Existing releases are not modified.
