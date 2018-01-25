#! /bin/bash
# installs missing packages from the .cls files with tlmgr

echo "needed packages:"

cat *.cls | sed -n 's~^[^%]*\\RequirePackage[^{]*{\([^}]*\)}.*$~\1.sty~p' | sort -u


# where you can find the required packages in apt
#cat *.cls | sed -n 's~^[^%]*\\RequirePackage[^{]*{\([^}]*\)}.*$~\1.sty~p' | cut -d '.' -f 1 | sort -u | while read file; do apt-cache search $file; done | grep texlive | sort -u
