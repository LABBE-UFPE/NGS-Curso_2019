mkdir curso_2019
echo "Compilando Curso 2019"
echo""
echo "BoM CuRsO"

# Instalar e-search
echo "Instalando e-search"
sudo apt-get install ncbi-entrez-direct

# Instalar FastQC
echo "Instalando FastQC"
cd curso_2019
mkdir Programs
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip
unzip fastqc_v0.11.8.zip
cd FastQC/
chmod +x fastqc
export PATH="/home/labbe3/curso_2019/FastQC:$PATH"
$ source ~/.bashrc

cd

#Instalar FASTX-Toolkit
echo "Instalando FASTX-Toolkit"
sudo apt-get install fastx-toolkit

# Instalar Sickle
echo "Instalando Sickle"
sudo apt-get install sickle

# Instalar SPAdes
echo "Instalando SPAdes"
sudo apt-get install spades #ver versão do spades

# Instalar Quast
cd curso_2019
wget https://github.com/ablab/quast/releases/download/quast_5.0.2/quast-5.0.2.tar.gz
tar -vzxf quast-5.0.2.tar.gz
cd quast-5.0.2
sudo apt-get install -y pkg-config libfreetype6-dev libpng-dev python-matplotlib
./install_full.sh
export PATH="/home/labbe3/curso_2019/quast-5.0.2/:$PATH"

cd 

cd curso_2019
mkdir dados
cd dados
mkdir 0.raw_data
cd 0.raw_data
prefetch -v SRR10150629
fastq-dump --outdir /home/labbe3/labbe3/curso/ --split-files /home/labbe3/ncbi/public/sra/SRR10150629.sra