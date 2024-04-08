class FzfGitExtensions < Formula
  version "1.0.6"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "bf555a2e1049add0897a66a78e0d47cc7a0148965d97f28fc3b66276f5969a8e"

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
