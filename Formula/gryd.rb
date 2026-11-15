class Gryd < Formula
  desc "Multi-service development orchestrator and interactive TUI dashboard"
  homepage "https://github.com/Sidharth-Prabhu/gryd"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_darwin_arm64.tar.gz"
      sha256 "b9ef88b427dd3ece87e18d45d8d45419085316666c4691677494cd4e59ede6be"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_darwin_amd64.tar.gz"
      sha256 "af09da57d363cb09662e85aac39cdb8f4307967b4e49c996670abadb385bae99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_linux_arm64.tar.gz"
      sha256 "c818328f3b555307ffdd24e514117294ef0987bb3d9d8eac9fec119069aa5b53"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_linux_amd64.tar.gz"
      sha256 "10086c8baa2c55e43ca3c037641ac8c4d2e0e204914a8f9d267945e0c73317e5"
    end
  end

  def install
    bin.install "gryd"
  end

  test do
    system "#{bin}/gryd", "--version"
  end
end
