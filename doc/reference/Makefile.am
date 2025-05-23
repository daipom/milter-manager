MAINTAINERCLEANFILES = Makefile.in

# The name of the module.
DOC_MODULE = milter-manager

# The top-level SGML file.
DOC_MAIN_SGML_FILE = milter-manager-docs.sgml

# Extra options to supply to gtkdoc-scan
SCAN_OPTIONS =							\
	--deprecated-guards="MILTER_DISABLE_DEPRECATED"		\
	--rebuild-sections

# The directory containing the source code.
DOC_SOURCE_DIR =				\
	$(top_srcdir)/milter			\
	$(top_srcdir)/libmilter

# Used for dependencies
HFILE_GLOB =					\
	$(top_srcdir)/milter/*.h		\
	$(top_srcdir)/milter/*/*.h		\
	$(top_srcdir)/libmilter/*.h
CFILE_GLOB=					\
	$(top_srcdir)/milter/*/*.c		\
	$(top_srcdir)/libmilter/*.c

# Headers to ignore
IGNORE_HFILES=					\
	milter-marshalers.h

AM_CPPFLAGS =					\
	-I$(top_srcdir)/libmilter		\
	-I$(top_srcdir)				\
	-I$(top_builddir)			\
	$(GLIB_CFLAGS)

GTKDOC_LIBS =							\
	$(top_builddir)/milter/core/libmilter-core.la		\
	$(top_builddir)/milter/client/libmilter-client.la	\
	$(top_builddir)/milter/server/libmilter-server.la	\
	$(top_builddir)/milter/manager/libmilter-manager.la	\
	$(top_builddir)/libmilter/libmilter.la			\
	$(GLIB_LIBS)

# Extra options to supply to gtkdoc-mkdb
MKDB_OPTIONS=--sgml-mode --output-format=xml

generated_image_files =					\
	mta-and-milter-manager-and-child-milter.png	\
	mta-and-milter-manager-and-child-milter-ja.png	\
	sendmail-and-milter.png				\
	sendmail-and-milter-ja.png			\
	sendmail-and-postfix-and-milter.png		\
	sendmail-and-postfix-and-milter-ja.png		\
	milter-manager-log-analyzer-graphs.png

# Images to copy into HTML directory
HTML_IMAGES = $(generated_image_files)

# Extra SGML files that are included by $(DOC_MAIN_SGML_FILE)
content_files =					\
	version.xml				\
	readme.xml				\
	news.xml				\
	introduction.xml			\
	configuration.xml			\
	performance.xml				\
	install.xml				\
	install-to-debian.xml			\
	install-to-ubuntu.xml			\
	install-to-centos5.xml			\
	install-to-centos6.xml			\
	install-to-centos7.xml			\
	install-to-centos.xml			\
	install-to-freebsd.xml			\
	install-to-others.xml			\
	install-options-to-debian.xml		\
	install-options-to-ubuntu.xml		\
	install-options-to-centos.xml		\
	install-options-to-freebsd.xml		\
	upgrade-on-debian.xml			\
	upgrade-on-ubuntu.xml			\
	upgrade-on-centos.xml			\
	upgrade-on-freebsd.xml			\
	upgrade-options-on-debian.xml		\
	upgrade-options-on-ubuntu.xml		\
	upgrade-options-on-centos.xml		\
	upgrade-options-on-freebsd.xml		\
	milter-manager.xml			\
	milter-test-server.xml			\
	milter-test-client.xml			\
	milter-performance-check.xml		\
	milter-report-statistics.xml		\
	milter-manager-log-analyzer.xml		\
	reverse-dictionary.xml			\
	users.xml				\
	ruby-milter-tutorial.xml		\
	ruby-milter-reference.xml		\
	ruby-milter-configuration.xml		\
	available-milters.xml			\
	log-list.xml				\
	maintenance-policy.xml

# Extra options to supply to gtkdoc-fixxref
FIXXREF_OPTIONS=

CATALOGS=ja.po

# include common portion ...
include $(top_srcdir)/gtk-doc.make

if GTK_DOC_BUILD_HTML
HTML_BUILD_STAMP += html-ja-build.stamp
endif
# TODO Enable build Japanese PDF?
# if GTK_DOC_BUILD_PDF
# PDF_BUILD_STAMP += pdf-ja-build.stamp
# endif

generated_xml_files =				\
	readme.xml				\
	readme.xml.ja				\
	news.xml				\
	news.xml.ja				\
	introduction.xml			\
	introduction.xml.ja			\
	configuration.xml			\
	configuration.xml.ja			\
	performance.xml				\
	performance.xml.ja			\
	install.xml				\
	install.xml.ja				\
	install-to-debian.xml			\
	install-to-debian.xml.ja		\
	install-to-ubuntu.xml			\
	install-to-ubuntu.xml.ja		\
	install-to-centos5.xml			\
	install-to-centos5.xml.ja		\
	install-to-centos6.xml			\
	install-to-centos6.xml.ja		\
	install-to-centos7.xml			\
	install-to-centos7.xml.ja		\
	install-to-centos.xml			\
	install-to-centos.xml.ja		\
	install-to-freebsd.xml			\
	install-to-freebsd.xml.ja		\
	install-to-others.xml			\
	install-to-others.xml.ja		\
	install-options-to-debian.xml		\
	install-options-to-debian.xml.ja	\
	install-options-to-ubuntu.xml		\
	install-options-to-ubuntu.xml.ja	\
	install-options-to-centos.xml		\
	install-options-to-centos.xml.ja	\
	install-options-to-freebsd.xml		\
	install-options-to-freebsd.xml.ja	\
	upgrade-on-debian.xml			\
	upgrade-on-debian.xml.ja		\
	upgrade-on-ubuntu.xml			\
	upgrade-on-ubuntu.xml.ja		\
	upgrade-on-centos.xml			\
	upgrade-on-centos.xml.ja		\
	upgrade-on-freebsd.xml			\
	upgrade-on-freebsd.xml.ja		\
	upgrade-options-on-debian.xml		\
	upgrade-options-on-debian.xml.ja	\
	upgrade-options-on-ubuntu.xml		\
	upgrade-options-on-ubuntu.xml.ja	\
	upgrade-options-on-centos.xml		\
	upgrade-options-on-centos.xml.ja	\
	upgrade-options-on-freebsd.xml		\
	upgrade-options-on-freebsd.xml.ja	\
	milter-manager.xml			\
	milter-manager.xml.ja			\
	milter-test-server.xml			\
	milter-test-server.xml.ja		\
	milter-test-client.xml			\
	milter-test-client.xml.ja		\
	milter-performance-check.xml		\
	milter-performance-check.xml.ja		\
	milter-report-statistics.xml		\
	milter-report-statistics.xml.ja		\
	milter-manager-log-analyzer.xml		\
	milter-manager-log-analyzer.xml.ja	\
	reverse-dictionary.xml			\
	reverse-dictionary.xml.ja		\
	users.xml				\
	users.xml.ja				\
	ruby-milter-tutorial.xml		\
	ruby-milter-tutorial.xml.ja		\
	ruby-milter-reference.xml		\
	ruby-milter-reference.xml.ja		\
	ruby-milter-configuration.xml		\
	ruby-milter-configuration.xml.ja	\
	available-milters.xml			\
	available-milters.xml.ja		\
	log-list.xml				\
	log-list.xml.ja				\
	maintenance-policy.xml			\
	maintenance-policy.xml.ja

MAINTAINERCLEANFILES +=			\
	$(generated_xml_files)		\
	$(generated_image_files)	\
	milter-manager-sections.txt	\
	milter-manager.types

# Other files to distribute
EXTRA_DIST +=					\
	html-build.stamp			\
	version.xml.in				\
	$(generated_xml_files)			\
	head.html				\
	head-ja.html				\
	header.html				\
	header-ja.html				\
	footer.html				\
	footer-ja.html				\
	ja.po

$(DOC_MODULE).pot: sgml-build.stamp
	xml2po -k -o $(DOC_MODULE).pot				\
	  $(srcdir)/$(DOC_MAIN_SGML_FILE) $(srcdir)/xml/*.xml

update-po: Makefile sgml.stamp
	$(MAKE) $(DOC_MODULE).pot
	for catalog in $(CATALOGS); do		\
	  xml2po -k -u $$catalog		\
	    $(srcdir)/$(DOC_MAIN_SGML_FILE)	\
	    $(srcdir)/xml/*.xml;		\
	done

EXPAND_RD2_SNIPPET = $(CUTTER_SOURCE_PATH)/misc/expand-rd2-snippet.rb
RD2LIB_DIR = $(CUTTER_SOURCE_PATH)/misc
RD2REFENTRY_LIB_FILE = rd2refentry-lib.rb
RD2REFENTRY_LIB = $(RD2LIB_DIR)/$(RD2REFENTRY_LIB_FILE)
RD2DOCBOOK = $(RUBY) -Eutf-8:utf-8 -I $(RD2LIB_DIR) $(RD2) -r $(RD2REFENTRY_LIB_FILE) --name=MILTER-MANAGER
RD2DOCBOOK_JA = $(RD2DOCBOOK) --po=$(srcdir)/ja.po
SVG2PNG = inkscape --export-dpi=60 --export-background=white --export-png

html-ja-build.stamp: sgml.stamp $(CATALOGS) $(DOC_MAIN_SGML_FILE) $(content_files) $(expand_content_files)
	for catalog in $(CATALOGS); do					\
	  lang=`echo $$catalog | sed 's/.po$$//'`;			\
	  echo "$$lang:";						\
	  rm -rf $$lang;						\
	  mkdir -p $$lang/html;						\
	  mkdir -p $$lang/xml;						\
	  po2xml $(DOC_MAIN_SGML_FILE) $(srcdir)/$$catalog >		\
	    $$lang/$(DOC_MAIN_SGML_FILE);				\
	  for xml in $(builddir)/xml/*.xml; do				\
	    po2xml $$xml $(srcdir)/$$catalog >				\
	      $$lang/xml/`basename $$xml`;				\
	  done;								\
	  for file in $(content_files); do				\
	    if test -f $$file; then					\
	      if test -f $$file.$$lang; then				\
	        cp $$file.$$lang $$lang/$$file;				\
	      else							\
	        cp $$file $$lang;					\
	      fi;							\
	    else							\
	      if test -f $(srcdir)/$$file.$$lang; then			\
	        cp $(srcdir)/$$file.$$lang $$lang/$$file;		\
	      else							\
	        cp $(srcdir)/$$file $$lang;				\
	      fi;							\
	    fi;								\
	  done;								\
	  mkhtml_options="";						\
	  gtkdoc-mkhtml 2>&1 --help | grep  >/dev/null "\-\-verbose";	\
	  if test "$$?" = "0"; then					\
	    if test "x$(V)" = "x1"; then				\
	      mkhtml_options="$$mkhtml_options --verbose";		\
	    fi;								\
	  fi;								\
	  gtkdoc-mkhtml 2>&1 --help | grep  >/dev/null "\-\-path";	\
	  if test "$$?" = "0"; then					\
	    mkhtml_options="$$mkhtml_options --path=\"$(abs_srcdir)\"";	\
	  fi;								\
	  (cd $$lang/html &&						\
	     gtkdoc-mkhtml $$mkhtml_options $(MKHTML_OPTIONS)		\
	     $(DOC_MODULE) ../$(DOC_MAIN_SGML_FILE));			\
	  if test "x$(HTML_IMAGES)" != "x"; then			\
	    for image in $(HTML_IMAGES); do				\
	      if test -r "$(srcdir)/$$image"; then			\
		cp $(srcdir)/$$image $$lang/html/;			\
	      else							\
		cp $(builddir)/$$image $$lang/html/;			\
	      fi							\
	    done;							\
	  fi;								\
	  echo 'gtk-doc: Fixing cross-references';			\
	  gtkdoc-fixxref --module=$(DOC_MODULE)				\
	    --module-dir=$$lang/html					\
	    --html-dir=$(HTML_DIR) $(FIXXREF_OPTIONS);			\
	  touch html-$$lang-build.stamp;				\
	done

### RD -> XML
readme.xml: $(top_srcdir)/README $(RD2REFENTRY_LIB) readme.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/README > readme.xml

readme.xml.ja: $(top_srcdir)/README.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/README.ja > readme.xml.ja

news.xml: $(top_srcdir)/NEWS $(RD2REFENTRY_LIB) news.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/NEWS > news.xml

news.xml.ja: $(top_srcdir)/NEWS.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/NEWS.ja > news.xml.ja

introduction.xml: $(top_srcdir)/doc/introduction.rd $(RD2REFENTRY_LIB) introduction.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/introduction.rd > introduction.xml

introduction.xml.ja: $(top_srcdir)/doc/introduction.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/introduction.rd.ja > introduction.xml.ja

configuration.xml: $(top_srcdir)/doc/configuration.rd $(RD2REFENTRY_LIB) configuration.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/configuration.rd > configuration.xml

configuration.xml.ja: $(top_srcdir)/doc/configuration.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/configuration.rd.ja > configuration.xml.ja

performance.xml: $(top_srcdir)/doc/performance.rd $(RD2REFENTRY_LIB) performance.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/performance.rd > performance.xml

performance.xml.ja: $(top_srcdir)/doc/performance.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/performance.rd.ja > performance.xml.ja

install.xml: $(top_srcdir)/doc/install.rd $(RD2REFENTRY_LIB) install.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install.rd > install.xml

install.xml.ja: $(top_srcdir)/doc/install.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install.rd.ja > install.xml.ja

install-to-debian.xml: $(top_srcdir)/doc/install-to-debian.rd $(RD2REFENTRY_LIB) install-to-debian.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-debian.rd > install-to-debian.xml

install-to-debian.xml.ja: $(top_srcdir)/doc/install-to-debian.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-debian.rd.ja > install-to-debian.xml.ja

install-to-ubuntu.xml: $(top_srcdir)/doc/install-to-ubuntu.rd $(RD2REFENTRY_LIB) install-to-ubuntu.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-ubuntu.rd > install-to-ubuntu.xml

install-to-ubuntu.xml.ja: $(top_srcdir)/doc/install-to-ubuntu.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-ubuntu.rd.ja > install-to-ubuntu.xml.ja

install-to-centos5.xml: $(top_srcdir)/doc/install-to-centos5.rd $(RD2REFENTRY_LIB) install-to-centos5.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-centos5.rd > install-to-centos5.xml

install-to-centos5.xml.ja: $(top_srcdir)/doc/install-to-centos5.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-centos5.rd.ja > install-to-centos5.xml.ja

install-to-centos6.xml: $(top_srcdir)/doc/install-to-centos6.rd $(RD2REFENTRY_LIB) install-to-centos6.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-centos6.rd > install-to-centos6.xml

install-to-centos6.xml.ja: $(top_srcdir)/doc/install-to-centos6.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-centos6.rd.ja > install-to-centos6.xml.ja

install-to-centos7.xml: $(top_srcdir)/doc/install-to-centos7.rd $(RD2REFENTRY_LIB) install-to-centos7.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-centos7.rd > install-to-centos7.xml

install-to-centos7.xml.ja: $(top_srcdir)/doc/install-to-centos7.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-centos7.rd.ja > install-to-centos7.xml.ja

install-to-centos.xml: $(top_srcdir)/doc/install-to-centos.rd $(RD2REFENTRY_LIB) install-to-centos.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-centos.rd > install-to-centos.xml

install-to-centos.xml.ja: $(top_srcdir)/doc/install-to-centos.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-centos.rd.ja > install-to-centos.xml.ja

install-to-freebsd.xml: $(top_srcdir)/doc/install-to-freebsd.rd $(RD2REFENTRY_LIB) install-to-freebsd.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-freebsd.rd > install-to-freebsd.xml

install-to-freebsd.xml.ja: $(top_srcdir)/doc/install-to-freebsd.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-freebsd.rd.ja > install-to-freebsd.xml.ja

install-to-others.xml: $(top_srcdir)/doc/install-to-others.rd $(RD2REFENTRY_LIB) install-to-others.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-to-others.rd > install-to-others.xml

install-to-others.xml.ja: $(top_srcdir)/doc/install-to-others.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-to-others.rd.ja > install-to-others.xml.ja

install-options-to-ubuntu.xml: $(top_srcdir)/doc/install-options-to-ubuntu.rd $(RD2REFENTRY_LIB) install-options-to-ubuntu.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-options-to-ubuntu.rd > install-options-to-ubuntu.xml

install-options-to-ubuntu.xml.ja: $(top_srcdir)/doc/install-options-to-ubuntu.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-options-to-ubuntu.rd.ja > install-options-to-ubuntu.xml.ja

install-options-to-debian.xml: $(top_srcdir)/doc/install-options-to-debian.rd $(RD2REFENTRY_LIB) install-options-to-debian.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-options-to-debian.rd > install-options-to-debian.xml

install-options-to-debian.xml.ja: $(top_srcdir)/doc/install-options-to-debian.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-options-to-debian.rd.ja > install-options-to-debian.xml.ja

install-options-to-centos.xml: $(top_srcdir)/doc/install-options-to-centos.rd $(RD2REFENTRY_LIB) install-options-to-centos.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-options-to-centos.rd > install-options-to-centos.xml

install-options-to-centos.xml.ja: $(top_srcdir)/doc/install-options-to-centos.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-options-to-centos.rd.ja > install-options-to-centos.xml.ja

install-options-to-freebsd.xml: $(top_srcdir)/doc/install-options-to-freebsd.rd $(RD2REFENTRY_LIB) install-options-to-freebsd.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/install-options-to-freebsd.rd > install-options-to-freebsd.xml

install-options-to-freebsd.xml.ja: $(top_srcdir)/doc/install-options-to-freebsd.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/install-options-to-freebsd.rd.ja > install-options-to-freebsd.xml.ja

upgrade-on-debian.xml: $(top_srcdir)/doc/upgrade-on-debian.rd $(RD2REFENTRY_LIB) upgrade-on-debian.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-on-debian.rd > upgrade-on-debian.xml

upgrade-on-debian.xml.ja: $(top_srcdir)/doc/upgrade-on-debian.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-on-debian.rd.ja > upgrade-on-debian.xml.ja

upgrade-on-ubuntu.xml: $(top_srcdir)/doc/upgrade-on-ubuntu.rd $(RD2REFENTRY_LIB) upgrade-on-ubuntu.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-on-ubuntu.rd > upgrade-on-ubuntu.xml

upgrade-on-ubuntu.xml.ja: $(top_srcdir)/doc/upgrade-on-ubuntu.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-on-ubuntu.rd.ja > upgrade-on-ubuntu.xml.ja

upgrade-on-centos.xml: $(top_srcdir)/doc/upgrade-on-centos.rd $(RD2REFENTRY_LIB) upgrade-on-centos.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-on-centos.rd > upgrade-on-centos.xml

upgrade-on-centos.xml.ja: $(top_srcdir)/doc/upgrade-on-centos.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-on-centos.rd.ja > upgrade-on-centos.xml.ja

upgrade-on-freebsd.xml: $(top_srcdir)/doc/upgrade-on-freebsd.rd $(RD2REFENTRY_LIB) upgrade-on-freebsd.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-on-freebsd.rd > upgrade-on-freebsd.xml

upgrade-on-freebsd.xml.ja: $(top_srcdir)/doc/upgrade-on-freebsd.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-on-freebsd.rd.ja > upgrade-on-freebsd.xml.ja

upgrade-options-on-debian.xml: $(top_srcdir)/doc/upgrade-options-on-debian.rd $(RD2REFENTRY_LIB) upgrade-options-on-debian.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-options-on-debian.rd > upgrade-options-on-debian.xml

upgrade-options-on-debian.xml.ja: $(top_srcdir)/doc/upgrade-options-on-debian.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-options-on-debian.rd.ja > upgrade-options-on-debian.xml.ja

upgrade-options-on-ubuntu.xml: $(top_srcdir)/doc/upgrade-options-on-ubuntu.rd $(RD2REFENTRY_LIB) upgrade-options-on-ubuntu.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-options-on-ubuntu.rd > upgrade-options-on-ubuntu.xml

upgrade-options-on-ubuntu.xml.ja: $(top_srcdir)/doc/upgrade-options-on-ubuntu.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-options-on-ubuntu.rd.ja > upgrade-options-on-ubuntu.xml.ja

upgrade-options-on-centos.xml: $(top_srcdir)/doc/upgrade-options-on-centos.rd $(RD2REFENTRY_LIB) upgrade-options-on-centos.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-options-on-centos.rd > upgrade-options-on-centos.xml

upgrade-options-on-centos.xml.ja: $(top_srcdir)/doc/upgrade-options-on-centos.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-options-on-centos.rd.ja > upgrade-options-on-centos.xml.ja

upgrade-options-on-freebsd.xml: $(top_srcdir)/doc/upgrade-options-on-freebsd.rd $(RD2REFENTRY_LIB) upgrade-options-on-freebsd.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/upgrade-options-on-freebsd.rd > upgrade-options-on-freebsd.xml

upgrade-options-on-freebsd.xml.ja: $(top_srcdir)/doc/upgrade-options-on-freebsd.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/upgrade-options-on-freebsd.rd.ja > upgrade-options-on-freebsd.xml.ja

milter-manager.xml: $(top_srcdir)/doc/milter-manager.rd $(RD2REFENTRY_LIB) milter-manager.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/milter-manager.rd > milter-manager.xml

milter-manager.xml.ja: $(top_srcdir)/doc/milter-manager.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/milter-manager.rd.ja > milter-manager.xml.ja

milter-test-server.xml: $(top_srcdir)/doc/milter-test-server.rd $(RD2REFENTRY_LIB) milter-test-server.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/milter-test-server.rd > milter-test-server.xml

milter-test-server.xml.ja: $(top_srcdir)/doc/milter-test-server.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/milter-test-server.rd.ja > milter-test-server.xml.ja

milter-test-client.xml: $(top_srcdir)/doc/milter-test-client.rd $(RD2REFENTRY_LIB) milter-test-client.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/milter-test-client.rd > milter-test-client.xml

milter-test-client.xml.ja: $(top_srcdir)/doc/milter-test-client.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/milter-test-client.rd.ja > milter-test-client.xml.ja

milter-performance-check.xml: $(top_srcdir)/doc/milter-performance-check.rd $(RD2REFENTRY_LIB) milter-performance-check.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/milter-performance-check.rd > milter-performance-check.xml

milter-performance-check.xml.ja: $(top_srcdir)/doc/milter-performance-check.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/milter-performance-check.rd.ja > milter-performance-check.xml.ja

milter-report-statistics.xml: $(top_srcdir)/doc/milter-report-statistics.rd $(RD2REFENTRY_LIB) milter-report-statistics.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/milter-report-statistics.rd > milter-report-statistics.xml

milter-report-statistics.xml.ja: $(top_srcdir)/doc/milter-report-statistics.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/milter-report-statistics.rd.ja > milter-report-statistics.xml.ja

milter-manager-log-analyzer.xml: $(top_srcdir)/doc/milter-manager-log-analyzer.rd $(RD2REFENTRY_LIB) milter-manager-log-analyzer.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/milter-manager-log-analyzer.rd > milter-manager-log-analyzer.xml

milter-manager-log-analyzer.xml.ja: $(top_srcdir)/doc/milter-manager-log-analyzer.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/milter-manager-log-analyzer.rd.ja > milter-manager-log-analyzer.xml.ja

reverse-dictionary.xml: $(top_srcdir)/doc/reverse-dictionary.rd $(RD2REFENTRY_LIB) reverse-dictionary.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/reverse-dictionary.rd > reverse-dictionary.xml

reverse-dictionary.xml.ja: $(top_srcdir)/doc/reverse-dictionary.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/reverse-dictionary.rd.ja > reverse-dictionary.xml.ja

users.xml: $(top_srcdir)/doc/users.rd $(RD2REFENTRY_LIB) users.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/users.rd > users.xml

users.xml.ja: $(top_srcdir)/doc/users.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/users.rd.ja > users.xml.ja

ruby-milter-tutorial.xml: $(top_srcdir)/doc/ruby-milter-tutorial.rd $(RD2REFENTRY_LIB) ruby-milter-tutorial.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/ruby-milter-tutorial.rd > ruby-milter-tutorial.xml

ruby-milter-tutorial.xml.ja: $(top_srcdir)/doc/ruby-milter-tutorial.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/ruby-milter-tutorial.rd.ja > ruby-milter-tutorial.xml.ja

ruby-milter-reference.xml: $(top_srcdir)/doc/ruby-milter-reference.rd $(RD2REFENTRY_LIB) ruby-milter-reference.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/ruby-milter-reference.rd > ruby-milter-reference.xml

ruby-milter-reference.xml.ja: $(top_srcdir)/doc/ruby-milter-reference.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/ruby-milter-reference.rd.ja > ruby-milter-reference.xml.ja

ruby-milter-configuration.xml: $(top_srcdir)/doc/ruby-milter-configuration.rd $(RD2REFENTRY_LIB) ruby-milter-configuration.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/ruby-milter-configuration.rd > ruby-milter-configuration.xml

ruby-milter-configuration.xml.ja: $(top_srcdir)/doc/ruby-milter-configuration.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/ruby-milter-configuration.rd.ja > ruby-milter-configuration.xml.ja

available-milters.xml: $(top_srcdir)/doc/available-milters.rd $(RD2REFENTRY_LIB) available-milters.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/available-milters.rd > available-milters.xml

available-milters.xml.ja: $(top_srcdir)/doc/available-milters.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/available-milters.rd.ja > available-milters.xml.ja

log-list.xml: $(top_srcdir)/doc/log-list.rd $(RD2REFENTRY_LIB) log-list.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/log-list.rd > log-list.xml

log-list.xml.ja: $(top_srcdir)/doc/log-list.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/log-list.rd.ja > log-list.xml.ja

maintenance-policy.xml: $(top_srcdir)/doc/maintenance-policy.rd $(RD2REFENTRY_LIB) maintenance-policy.xml.ja
	$(RD2DOCBOOK) $(top_srcdir)/doc/maintenance-policy.rd > maintenance-policy.xml

maintenance-policy.xml.ja: $(top_srcdir)/doc/maintenance-policy.rd.ja $(RD2REFENTRY_LIB) ja.po
	$(RD2DOCBOOK_JA) $(top_srcdir)/doc/maintenance-policy.rd.ja > maintenance-policy.xml.ja

### SVG -> PNG
mta-and-milter-manager-and-child-milter.png: $(top_srcdir)/doc/mta-and-milter-manager-and-child-milter.svg
	$(SVG2PNG) $@ $<

mta-and-milter-manager-and-child-milter-ja.png: $(top_srcdir)/doc/mta-and-milter-manager-and-child-milter-ja.svg
	$(SVG2PNG) $@ $<

sendmail-and-milter.png: $(top_srcdir)/doc/sendmail-and-milter.svg
	$(SVG2PNG) $@ $<

sendmail-and-milter-ja.png: $(top_srcdir)/doc/sendmail-and-milter-ja.svg
	$(SVG2PNG) $@ $<

sendmail-and-postfix-and-milter.png: $(top_srcdir)/doc/sendmail-and-postfix-and-milter.svg
	$(SVG2PNG) $@ $<

sendmail-and-postfix-and-milter-ja.png: $(top_srcdir)/doc/sendmail-and-postfix-and-milter-ja.svg
	$(SVG2PNG) $@ $<

milter-manager-log-analyzer-graphs.png: $(top_srcdir)/doc/milter-manager-log-analyzer-graphs.svg
	$(SVG2PNG) $@ $<

upload: docs
	rm -rf tmp/
	mkdir -p tmp/
	cp -rp html/ tmp/reference
	for catalog in $(CATALOGS); do					\
	  lang=`echo $$catalog | sed 's/.po$$//'`;			\
	  cp -rp $$lang/html/ tmp/reference/$$lang/;			\
	done
	chmod -R g+w tmp/reference
	ruby $(CUTTER_SOURCE_PATH)/misc/prepare-gtk-doc-html-for-publishing.rb	\
	  --template-directory=$(srcdir) --title "$(PACKAGE_TITLE)"	\
	  tmp/reference/*.html
	ruby $(CUTTER_SOURCE_PATH)/misc/prepare-gtk-doc-html-for-publishing.rb	\
	  --template-directory=$(srcdir) --title "$(PACKAGE_TITLE)"	\
	  --language=ja tmp/reference/ja/*.html
	rsync -avz --delete tmp/reference/		\
	  $(OSDN_HTDOCS)/reference/

dist-hook-local:
	mkdir -p $(distdir)/tmpl $(distdir)/xml
	-cp tmpl/*.sgml $(distdir)/tmpl
	-cp xml/*.xml $(distdir)/xml
	for catalog in $(CATALOGS); do					\
	  lang=`echo $$catalog | sed 's/.po$$//'`;			\
	  mkdir -p $(distdir)/$$lang/html;				\
	  mkdir -p $(distdir)/$$lang/xml;				\
	  cp $$lang/html/* $(distdir)/$$lang/html;			\
	  cp $$lang/xml/* $(distdir)/$$lang/xml;			\
	  cp $$lang/$(DOC_MAIN_SGML_FILE) $(distdir)/$$lang/;		\
	  cp $$lang/*.xml $(distdir)/$$lang/;				\
	  cp $$lang/html.stamp $(distdir)/$$lang/;			\
	  cp html-$$lang-build.stamp $(distdir)/;			\
	done
	cp $(DOC_MODULE).types $(distdir)/
	cp $(DOC_MODULE)-sections.txt $(distdir)/
	cd $(distdir) && rm -f $(DISTCLEANFILES)
	-$(GTKDOC_REBASE) --online --relative --html-dir=$(distdir)/html
	rm -f $(distdir)/version.xml

distclean-local:
	rm -rf xml html $(REPORT_FILES) $(DOC_MODULE).pdf \
	    $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
	if test "$(abs_srcdir)" != "$(abs_builddir)" ; then \
	    rm -f $(SETUP_FILES) $(DOC_MODULE).types; \
	fi
	for catalog in $(CATALOGS); do					\
	  lang=`echo $$catalog | sed 's/.po$$//'`;			\
	  rm -rf $$lang html-$$lang-build.stamp;			\
	done

install-data-hook:
	for catalog in $(CATALOGS); do					\
	  if test x"$$catalog" = "x"; then				\
	    dir="html";							\
	    target_dir="";						\
	  else								\
	    lang=`echo $$catalog | sed 's/.po$$//'`;			\
	    dir="$$lang/html";						\
	    target_dir="/$$lang";					\
	  fi;								\
	  installfiles=`echo $$dir/*`;					\
	  if test "$$installfiles" = "$$dir/*"; then			\
	    echo '-- Nothing to install';				\
	  else								\
	    $(mkinstalldirs) $(DESTDIR)$(TARGET_DIR)$$target_dir;	\
	    for i in $$installfiles; do					\
	      echo "-- Installing $$i";					\
	      $(INSTALL_DATA) $$i $(DESTDIR)$(TARGET_DIR)$$target_dir;	\
	    done;							\
	    echo "-- Installing $$dir/index.sgml";			\
	    $(INSTALL_DATA) $$dir/index.sgml				\
	      $(DESTDIR)$(TARGET_DIR)$$target_dir || :;			\
	    if test "$(DESTDIR)" = ""; then				\
	      $(GTKDOC_REBASE) --relative				\
	 	--html-dir=$(DESTDIR)$(TARGET_DIR)$$target_dir;		\
	    else							\
	      $(GTKDOC_REBASE) --relative --dest-dir=$(DESTDIR)		\
	 	--html-dir=$(DESTDIR)$(TARGET_DIR)$$target_dir;		\
	    fi;								\
	  fi;								\
	done
