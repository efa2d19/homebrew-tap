class BwGuarded < Formula
  version "1.0.1"
  desc "Bitwarden CLI overhead to make it guarded with root password and GPG"
  homepage "https://github.com/efa2d19/bw-guarded"
  url "https://github.com/efa2d19/bw-guarded/archive/refs/tags/#{version}.tar.gz"
  sha256 "1be527e943e5b740eb16864aae88e502027284753a85165155ba9813bed2a87a"

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
