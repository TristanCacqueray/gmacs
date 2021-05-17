DIST := "gmacs@tristancacqueray.github.io"

all: dist

.PHONY: install
install:
	mkdir -p ~/.local/share/gnome-shell/extensions/
	ln -s $(PWD)/gmacs@tristancacqueray.github.io/ ~/.local/share/gnome-shell/extensions/$(DIST)

.PHONY: test
test:
	dbus-run-session -- gnome-shell --nested --wayland

.PHONY: dist
dist: dist-meta dist-extension

.PHONY: dist-meta
dist-meta:
	mkdir -p $(DIST)/schemas
	dhall-to-json --file ./src/metadata.dhall --output $(DIST)/metadata.json

.PHONY: dist-extension
dist-extension:
	spago bundle-app -m GMacs --to $(DIST)/extension.js
	cat src/main-extension.js >> $(DIST)/extension.js
