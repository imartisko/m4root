# __HEADER([Josef Kubin], [2019/10/13], [root_cz])
# ___DESCR([keeps two ASM files consistent for both Intel and AT&T notation; uses a local .vimrc file with iabbrev-s])
# ___POINT([two ASM file formats generated from one metafile])
# ___USAGE([make h && make])

SYMBOL = Hello, world!
TARGETS = intel.s att.s
VPATH = ../gfiles

.SECONDARY:

#:all	create all targets
.PHONY: all
all: $(TARGETS)

%.s: Makefile rootb.m4 all.m4 %.m4 hello.m4 hello.mc
	m4 -DSYMBOL='$(SYMBOL)' $(filter-out Makefile, $^) > $@

%: %.s
	gcc -o $@ $<
	./$@

#:clean/cl	remove generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(TARGETS)


#:help/he/hl/h	print this text
.PHONY: help he hl h
help he hl h:
	@sed -n '/^#:/{s//\x1b[7mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- square brackets because of M4
