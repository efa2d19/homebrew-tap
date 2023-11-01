class FZFGitExtensions < Formula
  version "1.0.0"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/Drugsosos/fzf-git-extensions"
  url "https://github.com/Drugsosos/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "11b2bc1d40073dece816e1c25f6326dd7af4295bde60a9faecab43f8803c5f36"

  depends_on "fzf"
  depends_on "delta" => :recommended
  depends_on "bat" => :recommended
  depends_on "micro" => :recommended

  def install
    bin.install "bati"
    bin.install "microi"
    bin.install "gdi"
    bin.install "gdsi"
    bin.install "gsti"
    bin.install "gswi"
  end
end
