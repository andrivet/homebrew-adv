class Sjasmplus < Formula
    desc "sjasmplus: Z80 cross-assembler"
    homepage "https://github.com/andrivet/sjasmplus"
    url "https://github.com/andrivet/sjasmplus/archive/v1.14.1.tar.gz"
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
