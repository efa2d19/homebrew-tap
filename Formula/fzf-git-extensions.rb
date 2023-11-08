class FzfGitExtensions < Formula
  version "1.0.3"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/Drugsosos/fzf-git-extensions"
  url "https://github.com/Drugsosos/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "739352aa96adec91a783f73ffa007f2e63f6be751b338f3d37e3904c1f0bc001"

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
