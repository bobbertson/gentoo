# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KMNAME="kdepim"
KDE_HANDBOOK=optional
inherit kde4-meta

DESCRIPTION="KDE Notes application (noakonadi branch)"
HOMEPAGE="https://launchpad.net/~pali/+archive/ubuntu/kdepim-noakonadi"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE="debug +handbook"

DEPEND="
	$(add_kdeapps_dep kdepimlibs '' 4.6)
	$(add_kdeapps_dep libkdepim '' 4.4.2015)
"
RDEPEND="${DEPEND}"

KMLOADLIBS="libkdepim"
