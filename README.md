# SignSIGN
Herramienta creada originalmente en el curso de lenguajes y compiladores segundo semestre 2015 sign.sh es la version original

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
```
## Requirements
- Paquetes: curl, gpg
- Tener una firma gpg creada y almacenada
## Usage
### Sign and verify Note (if it is a folder it creates a tar.gz first)
```bash
sign_tsa document
```
### Verify
```bash
sign_tsa -v document
```
### Only sign (why tho?)
```bash
sign_tsa -s document
```
