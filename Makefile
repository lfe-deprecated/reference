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

LFE_REBAR3_REPO = https://github.com/cnbbooks/lfe-rebar3-command-reference.git
LFE_REBAR3_DIR = lfe-rebar3

init-$(LFE_REBAR3_DIR):
	@git subtree add \
	   --prefix $(LFE_REBAR3_DIR) \
	   $(LFE_REBAR3_REPO) \
	   master \
	   --squash

update-$(LFE_REBAR3_DIR):
	@git subtree pull \
	   --m "Updated latest from $(LFE_REBAR3_DIR)." \
	   --prefix $(LFE_REBAR3_DIR) \
	   $(LFE_REBAR3_REPO) \
	   master \
	   --squash

update: \
	update-$(LFE_REBAR3_DIR)

publish: update
	@git push origin master
