# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OctopusDeploy/cli/releases/download/v1.4.0/octopus_1.4.0_macOS_amd64.tar.gz"
      sha256 "ed9bdca9a5de3f44731475859449d9fbee0aef708e4b878234eb41d3d9c57584"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OctopusDeploy/cli/releases/download/v1.4.0/octopus_1.4.0_macOS_arm64.tar.gz"
      sha256 "9307d383fab56960a64c39e669d38ae607d3fb1c1f604137c5d72d40af9cad41"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OctopusDeploy/cli/releases/download/v1.4.0/octopus_1.4.0_linux_amd64.tar.gz"
      sha256 "e2f9f4083bfdacb2dd13ce276d6fd1e6fcac162b1a2eb11bc036a5d0bcf4c927"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OctopusDeploy/cli/releases/download/v1.4.0/octopus_1.4.0_linux_arm64.tar.gz"
      sha256 "e5280313f0114cae3a0a811fcaa6b96024800f4abefa8ef54fef38da558a9976"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
  end

  test do
    system "#{bin}/octopus", "--help"
  end
end