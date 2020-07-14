# Maintainer: fpliu <leleliu008@gmail.com>

pkgname=('androidx')
pkgver=0.1.0
pkgrel=1
pkgdesc="Android project helper"
arch=('any')
license=('custom')
url="https://github.com/leleliu008/androidx"
makedepends=()
source=(https://github.com/leleliu008/androidx/releases/download/v0.1.0/${pkgname}-${pkgver}.tar.gz)
sha256sums=('e7e5fa1246e3134acf910c1624d169c07c8369ae5eab64fc120706b5d6d533e2')

build() {
    true
}

check() {
    cd "${srcdir}"
    bin/androidx -V
}

package() {
    depends=('curl' 'tar' 'gzip' 'bzip2' 'xz' 'make' 'cmake' 'vim' 'tree')
    
    mkdir -p ${pkgdir}/usr/bin
    mkdir -p ${pkgdir}/usr/share/zsh/site-functions
    
    cp -f ${srcdir}/bin/androidx ${pkgdir}/usr/bin/
    cp -f ${srcdir}/zsh-completion/_androidx ${pkgdir}/usr/share/zsh/site-functions/
}
