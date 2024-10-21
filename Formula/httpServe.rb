class Httpserve < Formula
  include Language::Python::Virtualenv
  
  version "1.1.0"
  desc "http.server but with uploads"
  homepage "https://github.com/efa2d19/httpServe"
  url "https://github.com/efa2d19/httpServe/archive/refs/tags/#{version}.tar.gz"
  sha256 "4b412bedc9b64509a3c35e2f924f8c0572fae3539218a6199d727ef66b84f508"

  depends_on "python@3.10"

  def install
    bin.install "httpserve"
  end

  def caveats
    <<~EOS
      ⚠️ This server is for development and local file sharing only.
      It has not been audited for security. Use at your own risk.
    EOS
  end
end
