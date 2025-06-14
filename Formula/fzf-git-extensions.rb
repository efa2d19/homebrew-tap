class FzfGitExtensions < Formula
  version "1.3.1"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "aef4e680c3ed17aaa99811d20b69f42b61f0509c2461bf211cad2f44c3f07bd1"

  depends_on "fzf"
  depends_on "git-delta" => :recommended
  depends_on "git" => :recommended

  def install
    bin.install "gdi"
    bin.install "gdsi"
    bin.install "gsti"
    bin.install "gswi"
  end
end
