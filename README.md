```
██████╗  █████╗ ███████╗███████╗ ██████╗ ███████╗███╗   ██╗
██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝ ██╔════╝████╗  ██║
██████╔╝███████║███████╗███████╗██║  ███╗█████╗  ██╔██╗ ██║
██╔═══╝ ██╔══██║╚════██║╚════██║██║   ██║██╔══╝  ██║╚██╗██║
██║     ██║  ██║███████║███████║╚██████╔╝███████╗██║ ╚████║
╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝
                                                           
``` 
# Password-Generetor

A password generetor, build a strong password in a simple way.

Restrictions:  
- the password lenght had to be between 8 and 32 characteres.  
- can't be a string.  
- can be assigned for empty name

OBS: The project may be had not a clean code, i'm working on.

# How work it ?  
### First of all, you need to clone this repo, after this you'll need to do a swift run or swift build and then you can execute the binary.
```terminal
git clone https://github.com/Luizerz/PassGen.git
swift run || swift build
```  
After this, will be created a folder named by .build, where you'll find the binary executable. Be careful, in linux/macOS all .folders are hidden.
### To execute properly you need to use a terminal and put the arguments.
Finally, on ./build go to **debug** folder (created by `swift run || swift build` as ./build) and there will be your binary executable file, they need to be called on terminal because the program need to arguments be wrote on input.  

Example: `./passgen --size 12 --pass_name name`  
  
![Demo1Gif](https://user-images.githubusercontent.com/75648725/159500212-d1a8e5a3-9c54-4182-b5a4-25f1612d0725.gif)  
When you run the script, will be created a `senhas.txt`in your home directory to storage all passwords.  
  
@Code by Luiz Sena at Apple Developer Academy 
