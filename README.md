
Like [jessfraz/dockerfiles](https://github.com/jessfraz/dockerfiles) but for software I use.

These also somewhat complement [my OS installation](https://github.com/joonas-fi/joonas-sys/)
("my app store") - most of these are aliased from my `~/.bash_aliases`.


Rules for these images In a nutshell
------------------------------------

- `<dir>/` => Docker tag `joonas/<dir>`, i.e. image built from [nmap/](nmap/) available as Docker tag `joonas/nmap`
- `FROM alpine:latest` & `apk add <program>` for all programs where possible
- Minimal images, e.g. don't ship build environment
- Unless the program is exotic, the image has entrypoint defined, so invoking
  `$ docker run joonas/nmap <args>` is the same as running `nmap <args>` inside the container.
  	* Example of "exotic" is imagemagick, which doesn't have entrypoint because it has multiple
  	  entrypoints (convert, animate, compare, display etc.)
- Most of the images' `WORKDIR` has been standardized to `/workspace`. This is so that if the program
  reads or writes files, you can map host filesystem's current dir (or something else) to there.
  	* You can use `alias exiftool="docker run --rm -v \"$(pwd):/workspace\" joonas/exiftool"` and
  	  then run `exiftool image.png` and exiftool will only be able to access your current directory.
  	* Same goes for imagemagic (convert), so you can use `convert image.png image.jpg` so imagemagic
  	  can read and write files from/to the current directory to do its job.

Why?
----

There are many images for popular programs like nmap available, but too often when I'm researching
for an image to use, I don't agree with how the images are made. E.g.:

- it's not built on top of Alpine or
- they ship their build environment or
- needlessly install from source
	* There is nothing wrong with that except the `Dockerfile` is harder to maintain than just
	  installing from an OS's package manager.

If you look at how small the complexity of an [average Dockerfile](nmap/) is, often it's just faster
maintaining my own Dockerfile for each program than researching a 3rd party one that I'm happy with
and that keeps their images updated.


Inspiration
-----------

- https://github.com/jessfraz/dotfiles/blob/master/.dockerfunc
- https://github.com/jessfraz/dockerfiles

