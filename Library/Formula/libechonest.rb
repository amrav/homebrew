class Libechonest < Formula
  homepage "https://projects.kde.org/projects/playground/libs/libechonest"
  url "http://files.lfranchi.com/libechonest-2.3.1.tar.bz2"
  sha256 "56756545fd1cb3d9067479f52215b6157c1ced2bc82b895e72fdcd9bebb47889"

  bottle do
    cellar :any
    revision 1
    sha1 "c28f255845403371492620b020672e8e64d19b9b" => :yosemite
    sha1 "12ab88fa73e2c0ab2650972f31a446c0ea90bb62" => :mavericks
    sha1 "1ae85cce12862896bcc2d28509854dd8e6b3d9be" => :mountain_lion
  end

  depends_on "cmake" => :build
  depends_on "qt"
  depends_on "qjson"

  conflicts_with "doxygen", :because => "cmake fails to configure build."

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
