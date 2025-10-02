class Super < Formula
  desc "Deprecated - use 'brew install --cask super' instead"
  homepage "https://superdb.org"
  url "https://github.com/brimdata/super/archive/4130d71.zip"
  sha256 "3310943cf50523b83c9e5d0a0107f61e03c3f3462d52ab4f48e1c7b62a44cdfa"
  version "4130d71"

  depends_on "go@1.24" => :build

  def install
    (bin/"super").write <<~EOS
      #!/bin/bash
      echo "This formula has been replaced by a cask."
      echo "Please run: brew uninstall super && brew install --cask super"
      exit 1
    EOS
  end
end
