class FzfGitExtensions < Formula
  version "1.0.1"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/Drugsosos/fzf-git-extensions"
  url "https://github.com/Drugsosos/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "5a23fed2231db6a2dbe6328bb5486365582e790735d2753df57f9a4745b3f189"

  depends_on "fzf"
  depends_on "git-delta" => :recommended
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
