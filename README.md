# SignSIGN
Herramienta creada originalmente en el curso de lenguajes y compiladores segundo semestre 2015 sign.sh es la version original
## Installation
```bash
git clone https://github.com/paroque28/SignSINPE.git
cd SignSINPE
export PATH=$PATH:$(pwd)
```
## Requirements
- Paquetes: curl, gpg
- Tener una firma gpg creada y almacenada
## Usage
### Sign and verify
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
