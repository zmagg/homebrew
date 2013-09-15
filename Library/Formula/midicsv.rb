require 'formula'

class Midicsv < Formula
  homepage 'http://www.fourmilab.ch/webtools/midicsv'
  url 'http://www.fourmilab.ch/webtools/midicsv/midicsv-1.1.tar.gz'
  sha1 '1f34b6b874c26652ec4791701e5bfdccbbb35370'

  def install
    inreplace 'Makefile' do |s|
        # Change installation location to homebrew location.
        s.gsub! '/usr/local', prefix
    end

    system "make"
    system "make check"
    system "make install"
  end

  test do
    system "midicsv -u"
   end
end