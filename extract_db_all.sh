
# a. cutouts
#cutouts_url="http://www.ok.sc.e.titech.ac.jp/INLOC/materials/cutouts.tar.gz"
#cutouts_url="https://data.ciirc.cvut.cz/public/projects/2020VisualLocalization/InLoc/cutouts.tar.gz"
#wget -O database/cutouts.tar.gz $cutouts_url --no-check-certificate
#tar -zxvf database/cutouts.tar.gz -C database/

# b. scans
#scans_url="http://www.ok.sc.e.titech.ac.jp/INLOC/materials/scans.tar.gz"
#wget -O database/scans.tar.gz $scans_url 
#tar -zxvf database/scans.tar.gz -C database/
#tar -xvf database/scans/CSE3.tar -C database/scans
#tar -xvf database/scans/CSE4.tar -C database/scans
#tar -xvf database/scans/CSE5.tar -C database/scans
#tar -xvf database/scans/DUC1.tar -C database/scans
#tar -xvf database/scans/DUC2.tar -C database/scans

# c. alignments
src="database/alignments/zips"
dst="database/alignments"

#wget -O $src/DUC1.zip "http://www.ok.sc.e.titech.ac.jp/INLOC/materials/DUC1align.zip"
#wget -O $src/DUC2.zip "http://www.ok.sc.e.titech.ac.jp/INLOC/materials/DUC2align.zip"
#wget -O $src/CSE3.zip "http://www.ok.sc.e.titech.ac.jp/INLOC/materials/CSE3align.zip"
#wget -O $src/CSE4.zip "http://www.ok.sc.e.titech.ac.jp/INLOC/materials/CSE4align.zip"
#wget -O $src/CSE5.zip "http://www.ok.sc.e.titech.ac.jp/INLOC/materials/CSE5align.zip"

wget -O $src/DUC1.zip "https://www.dropbox.com/s/djf0lvetc9nnx25/DUC1.zip?dl=1"
wget -O $src/DUC2.zip "https://www.dropbox.com/s/ywvyg0zldghyzkf/DUC2.zip?dl=1"
wget -O $src/CSE3.zip "https://www.dropbox.com/s/zx7927pe3fdbmvt/CSE3.zip?dl=1"
wget -O $src/CSE4.zip "https://www.dropbox.com/s/nuuykyyarvdynjp/CSE4.zip?dl=1"
wget -O $src/CSE5.zip "https://www.dropbox.com/s/jnojxclse7regf4/CSE5.zip?dl=1"


for this_zip in `ls $src/*.zip`
do
this_dir=`basename ${this_zip%.zip}`
unzip -d $dst"/"$this_dir $this_zip
done
