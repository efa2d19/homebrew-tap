class FzfGitExtensions < Formula
  version "1.2.1"
  desc "Quick Git actions using fzf"
  homepage "https://github.com/efa2d19/fzf-git-extensions"
  url "https://github.com/efa2d19/fzf-git-extensions/archive/refs/tags/#{version}.tar.gz"
  sha256 "6e7d2d1dec41e380e9ef435d21bdbc9eccb513c1c113a6319722abaec1720353"

  depends_on "fzf"
  depends_on "git-delta" => :recommended

  def install
    bin.install "gdi"
    bin.install "gdsi"
    bin.install "gsti"
    bin.install "gswi"
  end
end
