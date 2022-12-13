# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OctopusDeploy/cli/releases/download/v0.7.0/octopus_0.7.0_macOS_arm64.tar.gz"
      sha256 "95a6ebe78d4353ecba7cb9f84c1b4f184fbca871174c919486329781148a27b9"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OctopusDeploy/cli/releases/download/v0.7.0/octopus_0.7.0_macOS_amd64.tar.gz"
      sha256 "f40731bd9fed9799227af7a4d839d568d3ca0e09062c124ab0032e479234081a"

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
      url "https://github.com/OctopusDeploy/cli/releases/download/v0.7.0/octopus_0.7.0_linux_amd64.tar.gz"
      sha256 "b5187979f4a6894b84049edae6dacc5a22d0df2f5a45b4f072e87fc9f1a5e3d8"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OctopusDeploy/cli/releases/download/v0.7.0/octopus_0.7.0_linux_arm64.tar.gz"
      sha256 "dbda61043c85c28880400f01a925a31c8bb12ecc15e51a8b491102219c4a1221"

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
