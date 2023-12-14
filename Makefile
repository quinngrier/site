#
# The authors of this file have waived all copyright and
# related or neighboring rights to the extent permitted by
# law as described by the CC0 1.0 Universal Public Domain
# Dedication. You should have received a copy of the full
# dedication along with this file, typically as a file
# named <CC0-1.0.txt>. If not, it may be available at
# <https://creativecommons.org/publicdomain/zero/1.0/>.
#

gravatar-2048x2048.png: Makefile gravatar.svg
	inkscape -w 2048 -h 2048 -e $@.tmp1 -z gravatar.svg
	pngcrush -brute $@.tmp1 $@.tmp2
	mv -f $@.tmp2 $@
	-rm $@.tmp1
