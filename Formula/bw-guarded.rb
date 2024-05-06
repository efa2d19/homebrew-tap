class BwGuarded < Formula
  version "1.1.0"
  desc "Bitwarden CLI overhead to make it guarded with root password and GPG"
  homepage "https://github.com/efa2d19/bw-guarded"
  url "https://github.com/efa2d19/bw-guarded/archive/refs/tags/#{version}.tar.gz"
  sha256 "74fcaf91a560894a30f2ceab40e2038c4755315758abf9ccabe2f739a7794b09"

  depends_on "gnupg"
  depends_on "bitwarden-cli"

  def install
    bin.install "bw-guarded" => "bw"
  end

  test do
  	assert_match "bw --generate-session-key", shell_output("bw-guarded --help")
  end

  def caveats
      <<~EOS
        Unlink bitwarden-cli if you see errors above
        Now you can use bitwarden-cli as usual
        But run this first to init and encrypt session
          bw --generate-session-key
      EOS
    end
end
