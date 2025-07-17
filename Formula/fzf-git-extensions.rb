class FzfGitExtensions < Formula
  version "1.5.0"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "d0a08e3452898da386ddee94662f12d601c095aae6094639f1a63a1f1720b76e"

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
