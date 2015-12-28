require 'formula'

TOOL_VERSION = '0.1.2'

class Golip < Formula
  if Hardware.is_64_bit?
    url "https://github.com/kogai/golip/releases/download/v#{TOOL_VERSION}/golip_#{TOOL_VERSION}_darwin_amd64.zip"
    sha1 "96a740cc5025fe53dde603055c774a1d6a2230d7"
    version "v#{TOOL_VERSION}"
  else
    url "https://github.com/kogai/golip/releases/download/v#{TOOL_VERSION}/golip_#{TOOL_VERSION}_darwin_386.zip"
    sha1 "3226bdbcaf982e03d88f881878a1076d6ffbe423"
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
