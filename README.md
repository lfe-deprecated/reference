# LFE Reference

## About this Repository

This repository is a collection of `git subtree`s for published LFE reference materials.

Please do not issue pull requests against this repo, as it is essentially read-only.

Acutal reference content is mainted in Markdown files in `builder` branches (see the repositories linked below). Content is generated in `master` branches. Pull requests need to be issued against the Markdown files in the `builder` branches below.

Any feedback, bugs, requests, etc., should be filed against the appropriate software reference in the links below.

Developers and contributers should scroll to the bottom of this file to read instructions on how to incorporate and publish changes to the LFE books.

---

## Published LFE Reference Materials

This includes core LFE software documentation, tooling, libraries, applications, etc.

If you are lookng for LFE books, guides, etc., you should visit [https://github.com/lfe/books](https://github.com/lfe/books).

### `rebar3_lfe` Command Reference

* [Official repository](https://github.com/cnbbooks/lfe-rebar3-command-reference.git)
* [Submit request/feedback ticket](https://github.com/cnbbooks/lfe-rebar3-command-reference/issues/new)
* [Published content](https://lfe.io/reference/lfe-rebar3/)

---

## Developer / Contributor Notes

1. To update a reference, visit the repository for that reference (linked above).
1. For the repository, and clone to your machine.
1. Create a branch for your change, commit, and push to your fork.
1. Issue a PR against the reference publisher's repository for the reference.

At this point, a reviewer will examine the change, provide feedback, and iterate with you on any needed changes.

Once approved, the changes will be merged to the `builder` branch and the reviewer will publish these changes to `master`.

Then the reviewer will update the `master` branch that collects all publised LFE reference materials ([https://github.com/lfe/reference](https://github.com/lfe/reference)) and push that up to Github, at which point you changes will show up for the given reference.
