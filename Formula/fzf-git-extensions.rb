class FzfGitExtensions < Formula
  version "1.6.1"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "3ae64cca94c6264112c5b9d9fa533ffa99bad5460f756389e780088ac8d30e2d"

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
