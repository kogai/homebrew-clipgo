require 'formula'

TOOL_VERSION = '0.1.3'

class Golip < Formula
  if Hardware.is_64_bit?
    url "https://github.com/kogai/golip/releases/download/v#{TOOL_VERSION}/golip_#{TOOL_VERSION}_darwin_amd64.zip"
    sha256 "d0816d41357b9b47d165d3e97b2ccdb749ad6310c3179eb0ea6a123bb95a6b27"
    version "v#{TOOL_VERSION}"
  else
    url "https://github.com/kogai/golip/releases/download/v#{TOOL_VERSION}/golip_#{TOOL_VERSION}_darwin_386.zip"
    sha256 "d0816d41357b9b47d165d3e97b2ccdb749ad6310c3179eb0ea6a123bb95a6b27"
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
