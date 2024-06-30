# Generated via: https://github.com/arran4/arrans_overlay/blob/main/.github/workflows/dev-ml-llamafile-bin-update.yaml
EAPI=8
DESCRIPTION=" Distribute and run LLMs with a single file. "
HOMEPAGE="https:// llamafile.ai/"
IUSE="doc man"
SRC_URI="amd64? ( https://github.com/${repo_owner}/${repo_name}/releases/download/v\${PV}/llamafile-\${PV}.zip -> \${P}.amd64.zip )"
LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/${P}"

src_install() {
    exeinto /opt/bin
    doexe bin/*
    if use doc; then
      dodoc README.md
      dodoc share/doc/llamafile/*
    fi
    if use man; then
      doman share/man/man1/*
    fi
}

