# If this makefile is not generic enough to support a translation,
# please contact debian-www.

WMLBASE=../..
CUR_DIR=vote/2005
SUBS=platforms
VOTE=$(basename $(wildcard vote_*.wml))

include $(WMLBASE)/Make.lang


$(foreach i, $(VOTE), $(i).$(LANGUAGE).html): %.$(LANGUAGE).html: %.wml \
  $(wildcard suppl_*.wml) \
  $(wildcard $(ENGLISHSRCDIR)/$(CUR_DIR)/../[0-9]*/vote_*.wml) \
  $(TEMPLDIR)/template.wml $(TEMPLDIR)/votebar.wml
	$(WML) $(<F)
index.$(LANGUAGE).html: index.wml $(wildcard vote_*.wml) \
  $(wildcard $(ENGLISHSRCDIR)/$(CUR_DIR)/../[0-9]*/vote_*.wml) \
  $(TEMPLDIR)/template.wml $(TEMPLDIR)/recent_list.wml \
  $(TEMPLDIR)/votebar.wml

ifeq "$(LANGUAGE)" "en"

textfiles := vote_001.quorum.err vote_001.quorum.log vote_001.quorum.txt  \
             vote_001_results.dot vote_001_results.png                    \
             leader2005_results.txt leader2005_tally.txt                  \
             leader2005_vote.png leader2005_vote_detailed.png             \
             Log-debian-dpl-debate.txt  Log-debian-dpl-replies.txt        \
             Log-debian-dpl-discuss.txt Log-debian-dpl-moderator.txt      \
             vote_002.quorum.err vote_002.quorum.log vote_002.quorum.txt  \
             leader2005_voters.txt vote_002_results.dot                   \
             vote_002_results.png vote_002_results.txt                    \
             vote_002_tally.txt vote_002_vote.png                         \
             vote_002_vote_detailed.png vote_002_voters.txt

desttextfiles := $(patsubst %,$(HTMLDIR)/%,$(textfiles))

install:: $(desttextfiles)

$(desttextfiles): $(HTMLDIR)/%: %
	@test -d $(HTMLDIR) || mkdir -m g+w -p $(HTMLDIR)
	install -m 664 -p $< $(HTMLDIR)

cleandest::
	rm -f $(desttextfiles)
endif
