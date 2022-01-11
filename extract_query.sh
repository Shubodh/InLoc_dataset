src="query/iphone7.tar.gz"
dst="query"
#query_url="http://www.ok.sc.e.titech.ac.jp/INLOC/materials/iphone7.tar.gz"
query_url="https://data.ciirc.cvut.cz/public/projects/2020VisualLocalization/InLoc/queries/iphone7.tar.gz"

wget -O $src $query_url --no-check-certificate

tar -zxvf $src -C $dst
