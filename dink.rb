# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dink < Formula
  desc "Don't think Docs"
  homepage ""
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noorvir/dink/releases/download/v0.0.1/dink_0.0.1_darwin_arm64.tar.gz"
      sha256 "63761706f284a8926da4668090e48c934c7c471ffdf09ade0f56634812b8d314"

      def install
        bin.install "dink"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noorvir/dink/releases/download/v0.0.1/dink_0.0.1_darwin_amd64.tar.gz"
      sha256 "a9a8e108b14b19d5e509e5e0a541011c5d8e6468f299afba13cdc71b9d3b2890"

      def install
        bin.install "dink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/noorvir/dink/releases/download/v0.0.1/dink_0.0.1_linux_amd64.tar.gz"
      sha256 "118716db1534fe54a821116d2fefec154f7e745b8eef9673dfc25c82c89f4b5c"

      def install
        bin.install "dink"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noorvir/dink/releases/download/v0.0.1/dink_0.0.1_linux_arm64.tar.gz"
      sha256 "0c4a737bfb5eecd4e5f7c88a54e2e55b88afb06229be892b6f483443732e8a95"

      def install
        bin.install "dink"
      end
    end
  end

  test do
    system "#{bin}/dink"
  end
end
