class FzfGitExtensions < Formula
  version "1.0.5"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/Drugsosos/fzf-git-extensions"
  url "https://github.com/Drugsosos/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "4369aaac49d862dbe6797c6491f209c05a2ce8018e5b1696488a3fbc806290a9"

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
