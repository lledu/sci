# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="ESO Recipe Execution Tool to exec cpl scripts"
HOMEPAGE="http://www.eso.org/sci/data-processing/software/cpl/esorex.html"
SRC_URI="ftp://ftp.eso.org/pub/cpl/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples"
DEPEND=">=sci-astronomy/cpl-5"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc README AUTHORS NEWS TODO BUGS ChangeLog
	if use examples; then
		insinto /usr/share/doc/${PF}
		doins -r examples || die
	fi
}