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
sha256sums=('9ba88d4bc33d9214c4e040552aee04213f32dda4f0584c0f43fcaa1027a08e74')

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
