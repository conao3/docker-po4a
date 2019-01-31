FROM perl:5.28

MAINTAINER Naoya Yamashita (@conao3)

ARG PO4A_VERSION=0.55

# Build.PL depend
#   - Module::Build
#     - inc::latest

# po4a is depend
#   - YAML::Tiny
#   - Locale::gettext
#   - Term::ReadKey
#   - Text::WrapI18N
#   - Unicode::GCString
#     - MIME::Charset

ENV INCLATEST D/DA/DAGOLDEN/inc-latest-0.500.tar.gz
ENV BUILD     L/LE/LEONT/Module-Build-0.4224.tar.gz
ENV YAMLTINY  E/ET/ETHER/YAML-Tiny-1.73.tar.gz
ENV GETTEXT   P/PV/PVANDRY/gettext-1.07.tar.gz
ENV READKEY   J/JS/JSTOWE/TermReadKey-2.38.tar.gz
ENV WRAPI18N  K/KU/KUBOTA/Text-WrapI18N-0.06.tar.gz
ENV CHARSET   N/NE/NEZUMI/MIME-Charset-1.012.2.tar.gz
ENV GCSTRING  N/NE/NEZUMI/Unicode-LineBreak-2019.001.tar.gz

ENV PERL5LIB /work/po4a-${PO4A_VERSION}/lib/:$PERL5LIB
ENV PATH     /work/po4a-${PO4A_VERSION}/:$PATH

WORKDIR /work
RUN curl -LO https://github.com/mquinson/po4a/releases/download/v${PO4A_VERSION}/po4a-${PO4A_VERSION}.tar.gz && \
    tar zxvf po4a-${PO4A_VERSION}.tar.gz && \
    rm -f po4a-${PO4A_VERSION}.tar.gz

WORKDIR /work/po4a-${PO4A_VERSION}
RUN cpan
RUN cpan ${INCLATEST} ${BUILD} ${YAMLTINY} ${GETTEXT} ${READKEY} ${WARPI18N} ${CHARSET} ${GCSTRING}
RUN perl Build.PL

RUN po4a --version

ENTRYPOINT ["po4a"]
