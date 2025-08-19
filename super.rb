class Super < Formula
  desc "A new analytics database that fuses structured and semi-structured data"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/4130d71.zip"
  sha256 "4130d71067170452b2f22d2dc19157cc200351fd"
  version "4130d71"

  depends_on "go@1.24" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"build/src").mkpath
    ln_s buildpath, buildpath/"build/src/github.com"
    system "GOPATH=$PWD/build go install github.com/brimdata/super/cmd/super@4130d71"
    bin.install "build/bin/super"
  end
end
