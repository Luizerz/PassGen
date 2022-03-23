//
//  File.swift
//  
//
//  Created by Luiz Sena on 21/03/22.
//

import Foundation
import ArgumentParser

extension String {
    func matches(_ regex: String) -> Bool {
        return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
    }
}

public struct passwordSt: ParsableCommand {
    
   public static var configuration = CommandConfiguration(commandName: "passgen")
    
    @Option(name: NameSpecification.shortAndLong, help: "Size of password")
    var size: Int
    @Option(name: NameSpecification.shortAndLong, help: "Name to be assigned to password")
    var pass_name: String
    
    public init() { }
    
    public func run() throws {
        var password = ""
        
        while true{
            
            if size < 8 {
                print(error)
                print("\nO tamaho da senha não pode ser menor que 8")
                break
            }else if size > 32 {
                print(error)
                print("\nO tamaho da senha não pode ser maior que 32")
                break
            }else{
                print(mensagem, terminator: "")
                while validadePassword(password: password) != 4 {
                    password = randomString(length: size)
                }
                print("\n\nSua senha para \(pass_name) é \(password)", terminator: "")
                print("\nSua senha tem \((Double(validadePassword(password: password))/4)*100)" + "% de força\n")
                createFile()
                writeFile(pass_name: pass_name, password: password)
                let filePath = NSHomeDirectory() + "/senhas.txt"
                do{
                    let testando = try String(contentsOf: URL(fileURLWithPath: filePath))
                    print(testando)
                }catch{
                    print(error)
                }
                break
            }
            
            
            
        }
    }
    
}
