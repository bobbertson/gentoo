# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4,5} pypy pypy3 )

inherit distutils-r1

MY_PN="XlsxWriter"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Python module for creating Excel XLSX files"
HOMEPAGE="https://pypi.python.org/pypi/XlsxWriter https://github.com/jmcnamara/XlsxWriter"
SRC_URI="
	mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz
	test? ( https://dev.gentoo.org/~jlec/distfiles/${MY_P}.tar.xz )
	"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )
"

S="${WORKDIR}"/${MY_P}

python_test() {
	py.test -v -v || die
}