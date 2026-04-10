# typed: false
# frozen_string_literal: true

class Shelltime < Formula
  desc "Track and analyze your shell usage - ShellTime CLI"
  homepage "https://shelltime.xyz"
  license "MIT"
  version "0.1.81"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shelltime/cli/releases/download/v#{version}/cli_Darwin_arm64.zip"
      sha256 "c694870368ba820d296631a9f111ff512e5aa9e1591e61d7f423eefad2911856"
    else
      url "https://github.com/shelltime/cli/releases/download/v#{version}/cli_Darwin_x86_64.zip"
      sha256 "6a8f27e6ca34d01dd05c53dea3ca67e3d1ed91aaaa09532b4ad4480126e9acc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shelltime/cli/releases/download/v#{version}/cli_Linux_arm64.tar.gz"
      sha256 "959a2436b096aa170c8e062b6f8b3ec3364cab9c0852a96fb8b4d8bb39d32f08"
    else
      url "https://github.com/shelltime/cli/releases/download/v#{version}/cli_Linux_x86_64.tar.gz"
      sha256 "ec509c80fd254fc2b8a038bc7295d3b2a1231a4de5bd01255773843b77574d39"
    end
  end

  def install
    bin.install "shelltime"
    bin.install "shelltime-daemon"
  end

  def caveats
    <<~EOS
      To get started with ShellTime, run:
        shelltime init

      Or set up manually:
        shelltime auth
        shelltime hooks install
        shelltime daemon install

      For more info, visit https://shelltime.xyz
    EOS
  end

  test do
    system "#{bin}/shelltime", "--version"
  end
end
