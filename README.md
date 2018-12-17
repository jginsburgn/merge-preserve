# Merge Driver to Preserve Files

A git driver script used to preserve files on merge and mention such fact in the log.

## Install

Link `preserve.sh` to a `PATH` location, usually `/usr/local/bin/`:

```bash
ln -s $PWD/preserve.sh /usr/local/bin
```

## Configure Git

Tell git that the preserve driver exists.

```bash
git config --local merge.preserve.driver "preserve.sh %O %A %B %L %P"
git config --local merge.preserve.name preserve
```

Now, specify which files should be preserved. This can be done on a `.gitattributes` (see **gitattributes(5)** for more info and other locations) file or a strictly-local `.git/info/attributes` for avoiding version control.

First specify the glob pattern and then say that it should use this driver.

```
 *.env merge=preserve
```

Done, now `git merge` will preserve all files ending in `.git` in the current branch.

## References

1. Christophe Porteneuve's [article][1] on Medium.

[1]: https://medium.com/@porteneuve/how-to-make-git-preserve-specific-files-while-merging-18c92343826b