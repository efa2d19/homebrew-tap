class FzfGitExtensions < Formula
  version "1.3.0"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "75c0e95c4202396bf662e0b257325f1b906f0d8e1a072f242aa4815c1fa8ebfe"

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
