require 'package'

class Nspr < Package
  description 'Netscape Portable Runtime (NSPR) provides a platform-neutral API for system level and libc-like functions.'
  homepage 'https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSPR'
  version '4.32'
  license 'MPL-2.0, GPL-2 or LGPL-2.1'
  compatibility 'all'

  is_fake

  depends_on 'nss'

end
