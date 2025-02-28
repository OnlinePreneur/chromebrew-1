require 'package'

class Youtube_dl < Package
  description 'Command-line program to download videos from YouTube.com and other video sites'
  homepage 'https://youtube-dl.org/'
  @_ver = '2021.12.17'
  version @_ver
  license 'public-domain'
  compatibility 'all'
  source_url 'https://github.com/ytdl-org/youtube-dl.git'
  git_hashtag @_ver

  binary_url({
    aarch64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/youtube_dl/2021.12.17_armv7l/youtube_dl-2021.12.17-chromeos-armv7l.tar.zst',
     armv7l: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/youtube_dl/2021.12.17_armv7l/youtube_dl-2021.12.17-chromeos-armv7l.tar.zst',
       i686: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/youtube_dl/2021.12.17_i686/youtube_dl-2021.12.17-chromeos-i686.tar.zst',
     x86_64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/youtube_dl/2021.12.17_x86_64/youtube_dl-2021.12.17-chromeos-x86_64.tar.zst',
  })
  binary_sha256({
    aarch64: '67493026c59e65899994e63542d9c032c2ab85d443b57cca9933280e81d7f6a3',
     armv7l: '67493026c59e65899994e63542d9c032c2ab85d443b57cca9933280e81d7f6a3',
       i686: '4097a2d204d79d05e2b8acba94c13c5cbce0e3e0391f4a7454ca83b03e9d3a1e',
     x86_64: '8c1848f320b4f82d25eafaba316eb0858a33318dde94dbaa6fdf8c1feaa6d41f',
  })

  def self.build
    system "python3 setup.py build #{PY3_SETUP_BUILD_OPTIONS}"
  end

  def self.install
    system "python3 setup.py install #{PY_SETUP_INSTALL_OPTIONS}"
  end
end
