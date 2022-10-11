```
██████╗  █████╗ ███████╗███████╗ ██████╗ ███████╗███╗   ██╗
██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝ ██╔════╝████╗  ██║
██████╔╝███████║███████╗███████╗██║  ███╗█████╗  ██╔██╗ ██║
██╔═══╝ ██╔══██║╚════██║╚════██║██║   ██║██╔══╝  ██║╚██╗██║
██║     ██║  ██║███████║███████║╚██████╔╝███████╗██║ ╚████║
╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝
                                                           
``` 
# Gerador de senha

Construindo uma senha forte com um jeito simples.

Restrições:  
- O tamanho da senha tem que ter entre 8 e 32 caracteres.  
- Não pode ser string.  
- Pode ser um valor vazio.

OBS: O projeto não ter um código muito claro/limpo, eu estou trabalhando nisso.

# Why PassGen?
I was looking for something to help me on my daily tests, day by day i use and create a lot of passwords, and this program help me to manage all passwords in a simple way.  
  
# <img src="https://user-images.githubusercontent.com/75648725/160658125-ddd149bd-54d3-424c-8d83-1afecb03f107.png" alt="brewImage" width="50" height="50"/> Installing with brew.  

First, you need to had a brew installed on your macOS/Linux, then you run the follow commands:  

```
brew tap Luizerz/PassGen 
brew install PassGen 
```  
and just run the code:  
`passgen -s size -p name`
# How work it ?  
### First of all, you need to clone this repo, following you'll need to do a swift run or swift build and then you can execute the binary.
```terminal
git clone https://github.com/Luizerz/PassGen.git
swift run || swift build
```  
After this, will be created a folder named by .build, where you'll find the binary executable. **Be careful, in linux/macOS all .folders are hidden.**
### To execute properly you need to use a terminal and put the arguments.
Finally, on ./build go to **debug** folder (created by `swift run || swift build` as ./build) and there will be your binary executable file, they need to be called on terminal because the program need to arguments be wrote on input.  

Example: `./passgen --size 12 --pass_name name`  or with [brew install](https://github.com/Luizerz/PassGen/edit/master/README.md#installing-with-brew) `passgen --size 12 --pass_name name`.
  
![Demo1Gif](https://user-images.githubusercontent.com/75648725/159500212-d1a8e5a3-9c54-4182-b5a4-25f1612d0725.gif)  
When you run the script, will be created a `senhas.txt`in your home directory to storage all passwords.  
  
*@Code by Luiz Sena at Apple Developer Academy*
