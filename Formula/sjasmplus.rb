class Sjasmplus < Formula
    desc "SJAsmPlus: Z80 cross-assembler"
    homepage "https://github.com/sjasmplus/sjasmplus/wiki"
    url "https://github.com/sjasmplus/sjasmplus/archive/20190306.1.tar.gz"
    sha256 "f3f6d28af19880ed2cb427b6b427e9bd42371929c7d263dac840fb71de1302d6"
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
