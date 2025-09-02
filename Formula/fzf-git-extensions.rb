class FzfGitExtensions < Formula
  version "1.6.0"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "9eb774b99cd4f52c184c5279a3f71ca7b1415a1bf08a8a45052176e8c35460fc"

  depends_on "fzf"
  depends_on "git-delta"
  depends_on "git" => :recommended

  def install
    bin.install "gdi"
    bin.install "gdsi"
    bin.install "gsti"
    bin.install "gswi"
  end
end
