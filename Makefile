version  = 0.1.0
filename = androidx-$(version).tar.gz

dist: bin/androidx zsh-completion/_androidx
	@(sed -i "" "s|VERSION='.*'|VERSION='$(version)'|" bin/androidx 2> /dev/null || \
	  sed -i    "s|VERSION='.*'|VERSION='$(version)'|" bin/androidx) && \
	tar zvcf $(filename) $^ && \
	command -v openssl > /dev/null && \
    openssl sha256 $(filename) && exit 0; \
    command -v sha256sum > /dev/null && \
    sha256sum $(filename)

clean:
	rm $(filename)

.PHONY: clean
