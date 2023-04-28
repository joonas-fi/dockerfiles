FROM alpine:latest AS downloader

RUN apk add xz
RUN cd /tmp \
	&& wget https://function61.com/app-dl/api/github.com/pdfcpu/pdfcpu/latest_releases_asset/pdfcpu_%2A_Linux_x86_64.tar.xz \
	&& xz -d pdfcpu* \
	&& tar -xf pdfcpu*.tar \
	&& mv pdfcpu*/pdfcpu /pdfcpu

FROM scratch

WORKDIR /workspace

USER 1000:1000

ENTRYPOINT ["/bin/pdfcpu"]

COPY --from=downloader /pdfcpu /bin/pdfcpu
