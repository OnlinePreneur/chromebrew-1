require 'package'

class Ksh < Package
  description 'A powerful and complete Linux shell'
  homepage 'http://www.kornshell.org/'
  version '2020.0.0'
  license 'EPL-1.0'
  compatibility 'all'
  source_url 'https://github.com/att/ast/releases/download/2020.0.0/ksh-2020.0.0.tar.xz'
  source_sha256 '3d6287f9ad13132bf8e57a8eac512b36a63ccce2b1e4531d7a946c5bf2375c63'

  binary_url({
    aarch64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ksh/2020.0.0_armv7l/ksh-2020.0.0-chromeos-armv7l.tar.zst',
     armv7l: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ksh/2020.0.0_armv7l/ksh-2020.0.0-chromeos-armv7l.tar.zst',
       i686: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ksh/2020.0.0_i686/ksh-2020.0.0-chromeos-i686.tar.zst',
     x86_64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ksh/2020.0.0_x86_64/ksh-2020.0.0-chromeos-x86_64.tar.zst',
  })
  binary_sha256({
    aarch64: '2df5c324eef4a6233cc73bbe9621a06b6934c8414a0e5bd6884d4a17bd62188e',
     armv7l: '2df5c324eef4a6233cc73bbe9621a06b6934c8414a0e5bd6884d4a17bd62188e',
       i686: '91d5f8aab79614349997dd020e7e61218d83ed9070bf13e846128cfe6705c482',
     x86_64: 'ea5a610024ae1e3ab11ac49453f283e67da4dd3b52dd04e9cff8a75ab8559d2c',
  })

  def self.build
    system "meson #{CREW_MESON_OPTIONS} \
      -Daudit-file=#{CREW_PREFIX}/etc/ksh_audit build"
    system 'ninja -C build'
  end

  def self.install
    system "DESTDIR=#{CREW_DEST_DIR} ninja -C build install"
  end
end
