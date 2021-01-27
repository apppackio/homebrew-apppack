# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apppack < Formula
  desc "CLI for AppPack.io"
  homepage "https://apppack.io"
  version "0.8.2"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/apppackio/apppack/releases/download/v0.8.2/apppack_0.8.2_Darwin_x86_64.tar.gz"
    sha256 "6174ed8bfe7e53e2ae4be9005f229b84934bc62907c9afc144a54f89dfc9cd93"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/apppackio/apppack/releases/download/v0.8.2/apppack_0.8.2_Linux_x86_64.tar.gz"
    sha256 "4730c07c8e81aacc21fe28be0ff5dc60d6d6f76597ff9dbc7d05bc3b30500c2f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/apppackio/apppack/releases/download/v0.8.2/apppack_0.8.2_Linux_arm64.tar.gz"
    sha256 "92513c8a26a6f236a8e610a73c5b9d9fd604d444087b2247fbc0e1937b196362"
  end

  def install
    bin.install "apppack"
  end

  test do
    system "#{bin}/apppack version"
  end
end
