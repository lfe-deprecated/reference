default: help

help:
	@echo
	@echo "To add a new reference guide to this repo, look at the Makefile"
	@echo "targets for the other guides, already present. Create targets"
	@echo "like those (along with a unique VAR for the guide's repo) and"
	@echo "pull in the new content."
	@echo
	@echo "Note: the source repo branch needs to be the one that publishes"
	@echo "the final HTML output of the generated document."
	@echo


update: update-lfe-rebar3

LFE_REBAR3 = https://github.com/cnbbooks/lfe-rebar3-command-reference.git

init-lfe-rebar3:
	@git subtree add \
	   --prefix lfe-rebar3 \
	   $(LFE_REBAR3) \
	   master \
	   --squash

update-lfe-rebar3:
	@git subtree pull \
	   --prefix lfe-rebar3 \
	   $(LFE_REBAR3) \
	   master \
	   --squash
