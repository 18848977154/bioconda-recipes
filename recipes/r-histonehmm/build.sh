find $PREFIX -name Rcpp.h
mkdir ~/.R
echo -e "CC=$CC -I$PREFIX/include -I$PREFIX/lib/R/library/Rcpp/include
FC=$FC
CXX=$CXX -I$PREFIX/include -I$PREFIX/lib/R/library/Rcpp/include
CXX98=$CXX -I$PREFIX/include -I$PREFIX/lib/R/library/Rcpp/include
CXX11=$CXX -I$PREFIX/include -I$PREFIX/lib/R/library/Rcpp/include
CXX14=$CXX -I$PREFIX/include -I$PREFIX/lib/R/library/Rcpp/include" > ~/.R/Makevars
$R CMD INSTALL --build .
