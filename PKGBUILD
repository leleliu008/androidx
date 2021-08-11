# Maintainer: fpliu <leleliu008@gmail.com>

pkgname=('androidx')
pkgver='0.1.0'
pkgrel=1
pkgdesc="Android project helper"
arch=('any')
license=('custom')
url="https://github.com/leleliu008/androidx"
makedepends=()
source=(https://github.com/leleliu008/androidx/releases/download/v${pkgver}/${pkgname}-${pkgver}.tar.gz)
sha256sums=('321b506b4492ae474b6a9af9fd717b5a39daf28d48f4c5392c543ac406aea2b8')

build() {
    true
}

check() {
    cd "${srcdir}"
    bin/androidx -V
}

package() {
    depends=('zip' 'unzip' 'p7zip' 'sed' 'grep')
    
    mkdir -p ${pkgdir}/usr/local/bin
    mkdir -p ${pkgdir}/usr/local/share/zsh/site-functions
    
    cp -f ${srcdir}/bin/androidx ${pkgdir}/usr/local/bin/
    cp -f ${srcdir}/zsh-completion/_androidx ${pkgdir}/usr/local/share/zsh/site-functions/
}
