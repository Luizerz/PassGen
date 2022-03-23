//
//  functions.swift
//  Password-Generate
//
//  Created by Luiz Sena on 11/03/22.
//

import Foundation
import ArgumentParser

func validadePassword(password: String) -> Int{
    var aux2 = 0
    if (8 <= password.count && 32 >= password.count){
        //print("Fuciona/entroou") debug
        if password.matches(".*\\d.*"){aux2 = aux2 + 1}
        if password.matches(".*[a-z].*"){aux2 = aux2 + 1}
        if password.matches(".*[A-Z].*"){aux2 = aux2 + 1}
        if password.matches(#".[.!@#$%^&(){}[:"';<>,.?/~`+]-\\=|].*"#){aux2 = aux2 + 1}

    }
    return aux2
}
func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*.!@#$%^&(){}[]:;<>,.?/~+-=|\\"
    return String((0..<length).map{ _ in letters.randomElement()! })
}


func createFile(){
    let filePath = NSHomeDirectory() + "/senhas.txt"
    if fileVerify() == false {
        (FileManager.default.createFile(atPath: filePath, contents: nil, attributes: nil))
        if fileVerify() {
            print("Arquivo criado com sucesso.")
        } else {
            print("O Arquivo não foi criado, tente novamente.")
        }
    } else {
        print("Arquivo já existe")
    }
}

func writeFile(pass_name: String, password: String){
    let filePath = NSHomeDirectory() + "/senhas.txt"
    do {
        let handle = try FileHandle(forWritingTo: URL(fileURLWithPath: filePath))
        handle.seekToEndOfFile()
        handle.write("\(pass_name)  ->  \(password)\n".data(using: .utf8)!)
        handle.closeFile()
    } catch {
        print(error)
    }
}

func fileVerify() -> Bool {
    let filePath = NSHomeDirectory() + "/senhas.txt"
    return FileManager.default.fileExists(atPath: filePath)
}



//func openG(url : String) {
//    let ls = Process()
//    ls.executableURL = URL(fileURLWithPath: "/usr/bin/open")
//    ls.arguments = [url]
//    do{
//      try ls.run()
//    } catch {
//        print(error.localizedDescription)
//    }
//}
