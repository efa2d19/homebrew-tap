class Httpserve < Formula
  include Language::Python::Virtualenv
  
  version "1.0.0"
  desc "http.server but with uploads"
  homepage "https://github.com/efa2d19/httpServe"
  url "https://github.com/efa2d19/httpServe/archive/refs/tags/#{version}.tar.gz"
  sha256 "3918e764ac3846b67e97c28a3e1b58350cee38d8465506c54cfe11008234e3fb"

  depends_on "python@3.12"

  def install
    bin.install "httpServe"
  end

  def caveats
    <<~EOS
      ⚠️ This server is for development and local file sharing only.
      It has not been audited for security. Use at your own risk.
    EOS
  end
end
