# SignTSA
Herramienta creada originalmente en el curso de lenguajes y compiladores segundo semestre 2015 sign.sh es la version original


## Installation
```bash
git clone https://github.com/paroque28/SignSINPE.git
cd SignSINPE
chmod +x ./sign_tsa
export PATH=$PATH:$(pwd)
```
Or to export PATH permanently
```bash
echo "export PATH=\$PATH:\$(pwd)" >> ~/.bashrc
echo "export PATH=\$PATH:\$(pwd)" >> ~/.profile
echo "export PATH=\$PATH:\$(pwd)" >> ~/.bash_profile
```
## Requirements
- Paquetes: curl, gpg
- Tener una firma gpg creada y almacenada
## Usage
### Sign and verify
**Note: (if it is a folder or multiplefiles it creates a tar.gz first)**
- Option 1
```bash
sign_tsa document
```
- Option 2
```bash
sign_tsa folder
```
- Option 3
```bash
sign_tsa document1 document2 ...
```
### Verify
```bash
sign_tsa -v document
```
### Only sign (why tho?)
```bash
sign_tsa -s document
```

## Example of verification
```bash
$ sign_tsa -v README.md
---------------------------------------
GPG verification:
gpg: Good signature from ""cyanpablo@protonmail.com" <cyanpablo@protonmail.com>" [ultimate]

SHA1 verification:
SHA1 coincide

Timestamp verification:
Verification: OK
Time stamp: Feb 12 20:40:57.736089 2019 GMT
```
# Bonus
Additionally, there is a tool called md2pdf to convert from MarkDown to pdf

### Steps to make PDF from md and sign it
```bash
md2pdf 2014084649-resumen00.md
sign_tsa 2014084649-resumen00.md 2014084649-resumen00.pdf
```
Output:
```bash
Signing file: ./2014084649-resumen00.tar.gz

---------------------------------------
GPG verification:
gpg: Good signature from ""cyanpablo@protonmail.com" <cyanpablo@protonmail.com>" [ultimate]

SHA1 verification:
SHA1 coincide

Timestamp verification:
Verification: OK
Time stamp: Feb 15 19:24:04.734488 2019 GMT

```
