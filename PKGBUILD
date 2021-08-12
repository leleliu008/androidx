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
sha256sums=('504601758154dd1bbf643ffe80ca49711cd5e76231ba1970a1fd88109e06fc52')

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
