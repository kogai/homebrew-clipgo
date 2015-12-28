require 'formula'

TOOL_VERSION = '0.1.1'

class Clipgo < Formula
  if Hardware.is_64_bit?
    url "https://github.com/kogai/clipgo/releases/download/v#{TOOL_VERSION}/clipgo_#{TOOL_VERSION}_darwin_amd64.zip"
    sha1 "47b77a0b31a2efcf630e454fb42141024ac66306"
    version "v#{TOOL_VERSION}"
  else
    url "https://github.com/kogai/clipgo/releases/download/v#{TOOL_VERSION}/clipgo_#{TOOL_VERSION}_darwin_386.zip"
    sha1 "3226bdbcaf982e03d88f881878a1076d6ffbe423"
    version "v#{TOOL_VERSION}"
  end

  def install
    bin.install 'clipgo'
  end

  def caveats
    msg = <<-'EOF'
    インストールに成功しました
    clipgo init で設定ファイルを作成して下さい
EOF
  end
end
