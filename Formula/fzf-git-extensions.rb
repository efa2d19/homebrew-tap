class FzfGitExtensions < Formula
  version "1.7.0"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "8cbbc626fd24c856f71b169881bc59df44e7959ecc8c7897088c8f0f7c113a58"

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
