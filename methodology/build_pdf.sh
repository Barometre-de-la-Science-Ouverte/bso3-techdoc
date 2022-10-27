docker run --rm -v "$(pwd):/data" -u "$(id -u)" pandocscholar/alpine
cp out.pdf bso3.pdf
cp out.latex bso3.tex
