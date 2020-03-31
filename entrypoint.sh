#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PW -e "set ftp:ssl-force $INPUT_FORCE_SSL; set ssl:verify-certificate false; mirror --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"