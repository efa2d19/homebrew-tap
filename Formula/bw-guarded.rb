class BwGuarded < Formula
  version "1.0.1"
  desc "Bitwarden CLI overhead to make it guarded with root password and GPG"
  homepage "https://github.com/Drugsosos/bw-guarded"
  url "https://github.com/Drugsosos/bw-guarded/archive/refs/tags/#{version}.tar.gz"
  sha256 "85779750025385cbf808dffe10fb262893e71e9e713190a5993e16498958635e"

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
