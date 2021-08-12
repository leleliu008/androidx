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
sha256sums=('6194c8c32e0fb0d23ef4667d89447b969b03a22ffaaf86959bb1f4dd38ee1860')

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
