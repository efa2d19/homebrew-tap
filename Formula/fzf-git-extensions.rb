class FzfGitExtensions < Formula
  version "1.0.4"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/Drugsosos/fzf-git-extensions"
  url "https://github.com/Drugsosos/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "5a7fcbd3a73d93be36cad6e8b3572c79ab1657a5c0e3146baf25808cb5220b69"

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
