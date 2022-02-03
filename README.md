# Container for Jmol/JSpecView

This container is providing a prepackaged wrapper to convert Bruker NMR data into the JCAMP-DX output format
The Jmol/JSpecView is obtained from https://jmol.org/ , more specifically from https://sourceforge.net/projects/jmol/files/latest/download.

## Building

The container can be built with
```
docker build -t nfdi4chem/jspecview .
```

## Running

```
docker run -it  -v $PWD/testdata:/data --rm -it nfdi4chem/jspecview:latest /data/ADG10003u_023/10/ /data/out.jdx
# docker run -it  -v $PWD/testdata:/data --rm -it nfdi4chem/jspecview:latest /data/ADG10003u_023.zip /data/out.jdx
```

The included test data `ADG10003u_023` is a urine sample in the metabolomics study "MTBLS1: A metabolomic study of urinary changes in type 2 diabetes in human compared to the control group" https://www.ebi.ac.uk/metabolights/MTBLS1/.
