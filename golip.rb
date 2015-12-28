require 'formula'

TOOL_VERSION = '0.1.3'

class Golip < Formula
  if Hardware.is_64_bit?
    url "https://github.com/kogai/golip/releases/download/v#{TOOL_VERSION}/golip_#{TOOL_VERSION}_darwin_amd64.zip"
    sha1 "0d22f77af72d40b1c79f53fae84df7bbae4f73c2"
    version "v#{TOOL_VERSION}"
  else
    url "https://github.com/kogai/golip/releases/download/v#{TOOL_VERSION}/golip_#{TOOL_VERSION}_darwin_386.zip"
    sha1 "0d22f77af72d40b1c79f53fae84df7bbae4f73c2"
    version "v#{TOOL_VERSION}"
  end

  def install
    bin.install 'golip'
  end

  def caveats
    msg = <<-'EOF'
    インストールに成功しました
    golip init で設定ファイルを作成して下さい
EOF
  end
end
