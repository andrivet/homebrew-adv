class Sjasmplus < Formula
    desc "sjasmplus: Z80 cross-assembler"
    homepage "https://github.com/andrivet/sjasmplus"
    url "https://github.com/andrivet/sjasmplus/archive/v1.14.1.tar.gz"
    sha265 "0de2724f46357ad6da0072eb930301793491a33ead4dfa7e7ad0be1dfc0b902b"
    depends_on "cmake" => :build
    depends_on "boost"
  
    def install
      system "cmake", ".", *std_cmake_args
      system "make"
      bin.install "sjasmplus"
    end
  
    test do
      system "true"
    end
  end
