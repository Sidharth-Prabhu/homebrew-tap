class Gryd < Formula
  desc "Multi-service development orchestrator and interactive TUI dashboard"
  homepage "https://github.com/Sidharth-Prabhu/gryd"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_darwin_arm64.tar.gz"
      sha256 "fad2f536313c0bb88c96becd34c4ce18344c38858e071b09af9313eb17775b6c"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_darwin_amd64.tar.gz"
      sha256 "b3d2d6a9afa1bb36a04a34e7b9c9c3f293bb185517e9547e91a372830f29e023"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_linux_arm64.tar.gz"
      sha256 "835f5b971feba637973080ecd721a531891d8ec8ba066222e74518648645eb14"
    else
      url "https://github.com/Sidharth-Prabhu/gryd/releases/download/v0.3.0/gryd_linux_amd64.tar.gz"
      sha256 "8ef016f25113e0d58708ba5cb38d80a040f6cd7a52849450e92b2eb627da4e2b"
    end
  end

  def install
    bin.install "gryd"
  end

  test do
    system "#{bin}/gryd", "--version"
  end
end
