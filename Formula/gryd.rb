class Gryd < Formula
  desc "Multi-service development orchestrator and interactive TUI dashboard"
  homepage "https://github.com/Sidharth-Prabhu/gryd"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_darwin_arm64.tar.gz"
      sha256 "983b7060b1383340e76227a8c372626a773d8e9e906765e97ffe461102962196"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_darwin_amd64.tar.gz"
      sha256 "0ddafc40b31d97aba7ea197062fa9ee0189ff0bfa8a570e4320306daa53f8ad8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_linux_arm64.tar.gz"
      sha256 "2c2270da651463038ba0e83790b7ad78329b12b8f551f203ff669a6298c64262"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_linux_amd64.tar.gz"
      sha256 "1230c645d0ac87c0a1a28fb40589f8b6a7a112dffb7827e50147a369dd88bdb5"
    end
  end

  def install
    bin.install "gryd"
  end

  test do
    system "#{bin}/gryd", "--version"
  end
end
