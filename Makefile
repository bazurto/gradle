VERSION=UNKNOWN
JAVAVERSION=UNKNOWN
ASSET=gradle-v$(VERSION).zip

DOWNLOADURL='https://services.gradle.org/distributions/gradle-$(VERSION)-bin.zip'
DOWNLOADZIP='gradle-$(VERSION)-bin.zip'
EXTRACTEDDIR=gradle-$(VERSION)

$(ASSET):
	if test "$(VERSION)" = "UNKNOWN"; then echo -e "\n\nmust pass a version. e.g.: make VERSION=8.2.1 JAVAVERSION=17\n\n"; false; fi
	if test "$(JAVAVERSION)" = "UNKNOWN"; then echo -e "\n\nmust pass a version. e.g.: make VERSION=8.2.1 JAVAVERSION=17\n\n"; false; fi
	wget -O $(DOWNLOADZIP) $(DOWNLOADURL)
	rm -fr $(EXTRACTEDDIR)
	unzip $(DOWNLOADZIP)
	echo '{deps:["github.com/bazurto/openjdk@$(JAVAVERSION)"]}' > .bz
	echo '{"deps":[{"server":"github.com","owner":"bazurto","repo":"openjdk","version":"$(JAVAVERSION)"}]}' > .bz.lock
	cp .bz $(EXTRACTEDDIR)
	cp .bz.lock $(EXTRACTEDDIR)
	cd $(EXTRACTEDDIR) && zip -r ../$(ASSET) .

release: $(ASSET)
	gh release delete --cleanup-tag -y v$(VERSION) | true
	gh release create --generate-notes -t v$(VERSION) v$(VERSION) $(ASSET)


.PHONY: clean
clean:
	rm -fr $(DOWNLOADZIP)
	rm -fr $(ASSET)
	rm -fr $(EXTRACTEDDIR)

