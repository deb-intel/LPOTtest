# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = ProjectnameIntelLowPrecisionOptimizationTool
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile


html:
	$(SPHINXBUILD) -b html "$(SOURCEDIR)" "$(BUILDDIR)/html" $(SPHINXOPTS) $(O)
	cp _static/index.html $(BUILDDIR)/html/index.html
	mkdir "$(BUILDDIR)/html/docs/imgs"
	cp docs/imgs/infrastructure.jpg "$(BUILDDIR)/html/docs/imgs/infrastructure.jpg"
	cp docs/imgs/workflow.jpg "$(BUILDDIR)/html/docs/imgs/workflow.jpg"	
	cp docs/imgs/tutorial.png "$(BUILDDIR)/html/docs/imgs/tutorial.png"
	cp docs/imgs/template.png "$(BUILDDIR)/html/docs/imgs/template.png"


# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)