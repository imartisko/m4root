# __HEADER([Josef Kubin], [2019/11/17], [root_cz])
# ___DESCR([the examples show how to generate messages into various target formats requiring modification of special characters])
# ___POINT([different target files with specially modified characters for each file])
# ___USAGE([make h && make])

SOURCE_CODE = \
array.c \
atm.json \
hello.ini \
messages.ini \
messages.json \
qnames.json \
string.c \
stringl.c \

MARKUP_LANG = \
messages.html \
messages.xml \
mixed.xml \

APOSTROPHE = \
apost.sh \

DOUBLE_QUOTE = \
doubleq.sh \

INTACT = \
counter.csv \
hello.csv \

NOTHING = \
insect.txt \
messages.h \
summary.txt \

TARGETS = $(MARKUP_LANG)$(SOURCE_CODE)$(INTACT)$(NOTHING)$(APOSTROPHE)$(DOUBLE_QUOTE)

VPATH = ../gfiles/

.SUFFIXES:
MAKEFLAGS += --no-builtin-rules


#:all	create all targets
.PHONY: all
all: $(TARGETS)

$(MARKUP_LANG): markup.m4

$(SOURCE_CODE): code.m4

$(INTACT): unchanged.m4

$(APOSTROPHE): apost.m4

$(DOUBLE_QUOTE): doubleq.m4

$(NOTHING):

$(TARGETS): messages.mc Makefile

%: rootb.m4 queues.m4 %.m4
	m4 $(filter-out Makefile, $^) > $@


#:clean/cl	remove generated files
.PHONY: clean cl
clean cl:
	$(RM) $(TARGETS)


#:help/he/hl/h	print this text
.PHONY: help he hl h
help he hl h:
	@sed -n '/^#:/{s//\x1b[7mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- square brackets because of M4
