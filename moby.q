/ moby-dick
moby.f:"2701.txt"
moby.b:"http://www.gutenberg.org/files/2701/"
-1"[down]loading moby-dick text";
.util.download[moby.b;;"";""] moby.f;
moby.txt:read0 `$moby.f
moby.chapters:"\nCHAPTER" vs "\n" sv 298_-373_ moby.txt
moby.s:{(3+first x ss"\n\n\n")_x} each moby.chapters
