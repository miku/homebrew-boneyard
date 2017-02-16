class Memcachedb < Formula
  homepage "http://memcachedb.org"
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/memcachedb/memcachedb-1.2.1-beta.tar.gz"
  sha256 "5af99f7970ab71ba287ba9bab61d4c36b69acf290a21f10e0dd1f64b82a9d403"

  depends_on "berkeley-db@4"
  depends_on "libevent"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-threads"
    system "make", "install"
  end
end
