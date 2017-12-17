class Skalibs < Formula
  desc "skarnet.org general-purpose libraries"
  homepage "https://skarnet.org/software/skalibs/"
  url "https://www.skarnet.org/software/skalibs/skalibs-2.6.2.0.tar.gz"
  sha256 "12f9706b412367c45310ab971d204d959441895d3fea6e5e41ab8ef8d24b71b2"

  head do
    url "https://github.com/skarnet/skalibs.git"
  end

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--disable-shared",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
