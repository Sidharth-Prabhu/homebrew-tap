class Gryd < Formula
  desc "Multi-service development orchestrator and interactive TUI dashboard"
  homepage "https://github.com/Sidharth-Prabhu/gryd"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.1/gryd_darwin_arm64.tar.gz"
      sha256 "446f07263a0f1ecc4e36ef89d55ca012f2d18105c9bb3c9ada13aff24baf0662"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.1/gryd_darwin_amd64.tar.gz"
      sha256 "c3892df333872a410470ad80120078d2ae7f3575af0f45d5255fac2490ec4fca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.1/gryd_linux_arm64.tar.gz"
      sha256 "e45d9db2233639e652b85244c75fa9d9b1bd89043c3309c8bc9cc65dd5dead30"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.2.1/gryd_linux_amd64.tar.gz"
      sha256 "241eb1b60b8db51556bf4086a897882f07c30bd7ac89d705fc4e16461efd39bb"
    end
  end

  def install
    bin.install "gryd"
  end

  test do
    system "#{bin}/gryd", "--version"
  end
end
