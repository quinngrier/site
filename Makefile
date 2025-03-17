#
# The authors of this file have waived all copyright and
# related or neighboring rights to the extent permitted by
# law as described by the CC0 1.0 Universal Public Domain
# Dedication. You should have received a copy of the full
# dedication along with this file, typically as a file
# named <CC0-1.0.txt>. If not, it may be available at
# <https://creativecommons.org/publicdomain/zero/1.0/>.
#

all:

all: gravatar-192x192.png
gravatar-192x192.png: Makefile gravatar.svg
	inkscape -w 192 -h 192 -o $@.tmp1.png gravatar.svg
	pngcrush -brute $@.tmp1.png $@.tmp2.png
	mv -f $@.tmp2.png $@
	-rm $@.tmp1.png

all: gravatar-2048x2048.png
gravatar-2048x2048.png: Makefile gravatar.svg
	inkscape -w 2048 -h 2048 -o $@.tmp1.png gravatar.svg
	pngcrush -brute $@.tmp1.png $@.tmp2.png
	mv -f $@.tmp2.png $@
	-rm $@.tmp1.png
