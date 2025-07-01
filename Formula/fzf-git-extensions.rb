class FzfGitExtensions < Formula
  version "1.4.0"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "e5aa6c99afa1bb9cf1d5db0bc7ea49d796de071566c662f9d59037ea63e27583"

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
