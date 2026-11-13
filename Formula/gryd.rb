class Gryd < Formula
  desc "Multi-service development orchestrator and interactive TUI dashboard"
  homepage "https://github.com/Sidharth-Prabhu/gryd"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.0/gryd_darwin_arm64.tar.gz"
      sha256 "4d91643dcf158508518ae0b498780af67652ed25497334d2b68abda350dfefae"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.0/gryd_darwin_amd64.tar.gz"
      sha256 "ba30ca5cf96033de8abe3e6f8b2f415292cf31705d82dd4d08048291c0747c6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.0/gryd_linux_arm64.tar.gz"
      sha256 "c7ea32458f6ddb64b42fd53004144737f075ade2761ee8104f143bb5735e04c6"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.0/gryd_linux_amd64.tar.gz"
      sha256 "f2f1f54a25f01e85cb06648d96915d49723e40ed916bfd0c5aeb384d1e25095c"
    end
  end

  def install
    bin.install "gryd"
  end

  test do
    system "#{bin}/gryd", "--version"
  end
end
