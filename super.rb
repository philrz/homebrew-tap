class Super < Formula
  desc "Query and search command file formats or SuperDB data lakes"
  homepage "https://superdb.org"
  url "https://github.com/philrz/super/archive/727a84d.zip"
  sha256 "c56255af9871e5752f78d06b037ce72b51ae14e520f0ff0e2c8f020b0e48e471"

  depends_on "@1.23" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super@727a84d"
    bin.install "build/bin/ls-go"
  end
end
