class FzfGitExtensions < Formula
  version "1.3.2"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "195d6ef22bd97ef03e7c42135b89f71010972670895f67578b8181ad8af38f76"

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
