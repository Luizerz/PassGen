//
//  functions.swift
//  Password-Generate
//
//  Created by Luiz Sena on 11/03/22.
//

import Foundation
import ArgumentParser

func validadePassword(password: String) -> Int {
    var operationProgress = 0
    if (SizeConstants.Min.rawValue <= password.count && SizeConstants.Max.rawValue >= password.count){
        if password.matches(".*\\d.*"){operationProgress += 1}
        if password.matches(".*[a-z].*"){operationProgress += 1}
        if password.matches(".*[A-Z].*"){operationProgress += 1}
        if password.matches(#".[.!@#$%^&(){}[:"';<>,.?/~`+]-\\=|].*"#){operationProgress += 1}
    }

    return operationProgress
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
            print("File created with success.")
        } else {
            print("The file dont`t created, retry.")
        }
    } else {
        print("Empty file")
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
