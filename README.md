
<br/>
<div align="center">
<a href="https://github.com/ShaanCoding/ReadME-Generator">
<img src="https://png.pngtree.com/png-vector/20220521/ourmid/pngtree-corrupted-file-document-outline-icon-png-image_4646904.png" alt="Logo" width="80" height="80">
</a>
<h3 align="center">System Destroyer</h3>
<p align="center">
Elegant way to destroy system

<br/>
<br/>
  
<a href="https://github.com/xNOTHlNGx/system-destroyer/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>

</p>
</div>

## About The Project

![Product Screenshot](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Netwide_Assembler.svg/1024px-Netwide_Assembler.svg.png)

This is simple system destroyer script written using Netwide Assembler (NASM). 
## Getting Started

This is simple instructions how to build and run your code. It may depend on your OS or distro
### Prerequisites

To build and use this project you need to install Netwide Assembler and binutils

- Debian
  ```sh
  sudo apt install nasm binutils
  ```
- Arch Linux
   ```sh
  sudo pacman -S nasm binutils
  ```
### Installation

Use this commands to build this project. Note that for different systems building process may be different.

1. Clone the repo
   ```sh
   git clone https://github.com/xNOTHlNGx/system-destroyer.git
   ```
2. Build nasm file
   ```sh
   nasm -felf64 linux.asm
   ```
4. Link built file
   ```sh
   ld -o main linux.o
   ```
## Usage

Just run previously built executable or your or your friend computer and see how your system is getting destroyed :)
```sh
chmod +x main
./main
  ```
## License

Distributed under the GNU License. See [GNU License](https://www.gnu.org/licenses/gpl-3.0.html#license-text) for more information.
## Contact

- Telegram: [@xNOTHlNGx](https://t.me/xNOTHlNGx) 
- Email: [not_a_nothing@proton.me](mailto:not_a_nothing@proton.me)

Project Link: [https://github.com/xNOTHlNGx/system-destroyer](https://github.com/xNOTHlNGx/system-destroyer)
