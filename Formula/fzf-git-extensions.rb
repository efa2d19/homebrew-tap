class FzfGitExtensions < Formula
  version "1.2.0"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "1bdde71c95a278507d7c2e2b6b753f3a9764a6466a623c57eb603349afd3a341"

  depends_on "fzf"
  depends_on "git-delta" => :recommended

  def install
    bin.install "gdi"
    bin.install "gdsi"
    bin.install "gsti"
    bin.install "gswi"
  end
end
