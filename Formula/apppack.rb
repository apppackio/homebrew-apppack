# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apppack < Formula
  desc "CLI for AppPack.io"
  homepage "https://apppack.io"
  version "4.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/apppackio/apppack/releases/download/v4.0.3/apppack_4.0.3_Darwin_x86_64.tar.gz"
      sha256 "590072b96872da367a34abba3b0dcd34eecfbfac2f476bc8946c239c5d794d47"

      def install
        bin.install "apppack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/apppackio/apppack/releases/download/v4.0.3/apppack_4.0.3_Darwin_arm64.tar.gz"
      sha256 "b45c64430382c6eebe17e6615c4ccc1f110a56bf8041e19eb4db175d5b7ddd85"

      def install
        bin.install "apppack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/apppackio/apppack/releases/download/v4.0.3/apppack_4.0.3_Linux_arm64.tar.gz"
      sha256 "88c55792cac196dc982c0438d011d64c9315ed18e7a28f874ac6638031fff86c"

      def install
        bin.install "apppack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/apppackio/apppack/releases/download/v4.0.3/apppack_4.0.3_Linux_x86_64.tar.gz"
      sha256 "5980ef70e84db02d614649e3302f4b7f0730e876d7e17e0660a36244ad0d3bb6"

      def install
        bin.install "apppack"
      end
    end
  end

  test do
    system "#{bin}/apppack version"
  end
end
