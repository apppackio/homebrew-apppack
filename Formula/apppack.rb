# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apppack < Formula
  desc "CLI for AppPack.io"
  homepage "https://apppack.io"
  version "3.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apppackio/apppack/releases/download/v3.0.2/apppack_3.0.2_Darwin_arm64.tar.gz"
      sha256 "36070b509bcb50c04e14710763db9f8668dd82bf8c0466bea3edc08b9040b71a"

      def install
        bin.install "apppack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/apppackio/apppack/releases/download/v3.0.2/apppack_3.0.2_Darwin_x86_64.tar.gz"
      sha256 "fafdff0de3825fd43a211d1929510905c2e2e4472939a5c26bcd8664459d5db4"

      def install
        bin.install "apppack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/apppackio/apppack/releases/download/v3.0.2/apppack_3.0.2_Linux_arm64.tar.gz"
      sha256 "bd64fb96daea4c1a01869426cfb7042a4173ea1c51f9665c0879ae51aaf1815e"

      def install
        bin.install "apppack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/apppackio/apppack/releases/download/v3.0.2/apppack_3.0.2_Linux_x86_64.tar.gz"
      sha256 "e524b001554d5b738f7762e7f7fc36de0ca17b8456760ef7cfa25e05c21d1399"

      def install
        bin.install "apppack"
      end
    end
  end

  test do
    system "#{bin}/apppack version"
  end
end
