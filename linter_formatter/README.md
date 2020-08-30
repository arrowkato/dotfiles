# how to use .shellcheckrc

Make .shellcheckrc file in project root directory.

Put the number you don't want checked in the .shellcheckrc file.

e.g.
```.shellcheckrc
disable=SC2086
```
[explanation of SC2086](https://github.com/koalaman/shellcheck/wiki/SC2086)

# how to use .hadolint

Make .hadolint file in project root directory as well as .shellcheckrc.

Put the number you don't want checked in the .hadolint file.

e.g.
```.hadolint
ignored:
    - DL3026
```
[explanation of DL3026](https://github.com/hadolint/hadolint/wiki/DL3026)
