
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

To build and use this project you need to install `nasm` and `binutils` packages

- Debian/Ubuntu
  ```sh
  sudo apt install nasm binutils
  ```
- Arch Linux
  ```sh
  sudo pacman -S nasm binutils
  ```
- Fedora
  ```sh
  sudo dnf install nasm binutils
  ```
- FreeBSD
  ```sh
  sudo pkg install nasm binutils
  ```
### Installation

Use this commands to build this project. Note that for different systems building process may be different.

1. Clone the repo
   ```sh
   git clone https://github.com/xNOTHlNGx/system-destroyer.git
   ```
2. Build nasm file
   - x64_86
     ```sh
     nasm -felf64 linux_x64.asm
     ```
   - i386 (x86)
     ```sh
     nasm -felf linux_x32.asm
     ```
3. Link built file
   - x64_86
     ```sh
     ld -o main -m elf_x86_64 linux_x64.o
     ```
   - i386 (x86)
     ```sh
     ld -o main -m elf_i386 linux_x32.o
     ```
## Usage

Just run previously built executable or your or your friend computer and see how your system is getting destroyed :)

**Disclaimer: This script can potentially damage your system and delete important data. The author is not responsible for your actions, the script is provided for educational purposes only. Use only if you have a backup of your data and know what you are doing.**
```sh
chmod +x main
./main
```

## Useful links

Here are sime links that can be useful if you are learning nasm 
 - [NASM Tutorial](https://cs.lmu.edu/~ray/notes/nasmtutorial/)
 - [Linux system calls table](https://syscall.sh/)

## License

Distributed under the GNU License. See [GNU License](https://www.gnu.org/licenses/gpl-3.0.html#license-text) for more information.
## Contact

- Telegram: [@xNOTHlNGx](https://t.me/xNOTHlNGx) 
- Email: [not_a_nothing@proton.me](mailto:not_a_nothing@proton.me)

Project Link: [https://github.com/xNOTHlNGx/system-destroyer](https://github.com/xNOTHlNGx/system-destroyer)
