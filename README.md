sitec-bsp-manifest
==================

Manifest repositroy for building BSPs for sitec-systems devices.

This repository contains setup scripts and the manifest file for creating a Yocto Project
based build system for building complete BSPs for sitec-systems Linux devices.

Before you can start with your build you need the `repo` tool from Google. This tool is able
to handle multiple git repositories for one project. `repo` requires python2 to be used.
For the installation of repo, do:

	$ mkdir ~/bin
	$ PATH=~/bin:$PATH

	$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
	$ chmod a+x ~/bin/repo

`repo` is installed and ready for usage.

Create a working directory and use `repo` to intialize your build environment.

	$ mkdir <WORKING>
	$ cd <WORKING>
	$ repo init -u https://github.com/sitec-systems/sitec-bsp-manifest.git
	$ repo sync

Now you can setup your build environment using the `bootstrap` script. For the first time run:

	$ source bootstrap -f

This performs a full setup with the creation of the build directory and the installation of the prepared
configuration files. If you have already a prepared build environment and you only want to continue your
work do

	$ source bootstrap

If you want to use an alternative build directory instead of the default one (which is build), define 
the variable `BUILDDIR` before running the bootstrap script:

	$ BUILDDIR=out source bootstrap -f

Now your build environment is setup and ready for usage:

	$ bitbake sitec-image

For any hints on required packages for your build host please refer the Yocto Project Quick Start Guide

http://www.yoctoproject.org/docs/2.2.1/yocto-project-qs/yocto-project-qs.html

If you find any bugs please report them here

https://github.com/sitec-systems/s4-manifest/issues
