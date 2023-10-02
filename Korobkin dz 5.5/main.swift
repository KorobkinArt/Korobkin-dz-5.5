//
//  main.swift
//  Korobkin dz 5.5
//
//  Created by Артем Коробкин on 30/9/23.
//
import Foundation
//1
UserDefaults.standard.setValue("settings", forKey: "mySettings")
let mySettings = UserDefaults.standard.string(forKey: "mySettings")
print(mySettings ?? "")

//2
UserDefaults.standard.setValue(["name", "surname"], forKey: "userName")
let userName = UserDefaults.standard.array(forKey: "userName") ?? ["nameDefault", "surnameDefault"]
print("userName = \(userName[0]), userSurname = \(userName[1])")

//3
UserDefaults.standard.setValue(28.2, forKey: "temperature")
print(UserDefaults.standard.double(forKey: "temperature"))

//4
struct Car: Codable {
    let brand: String
    let year: Int
    var owner: String
}
var toyota = Car(brand: "toyota", year: 2010, owner: "geeks")
var toyotaData = try JSONEncoder().encode(toyota)
UserDefaults.standard.setValue(toyotaData, forKey: "toyota2010")

//5
UserDefaults.standard.setValue(true, forKey: "themeDark")
var screenThemeDark = UserDefaults.standard.bool(forKey: "themeDark")
if screenThemeDark {
    print("Phone theme is dark")
} else {
    print("Phone theme is standart")
}

//6
UserDefaults.standard.setValue(["x":1284, "y":2778], forKey: "screenResolution")
let screenResolution = UserDefaults.standard.dictionary(forKey: "screenResolution")
print("Your screen resolution is \(screenResolution?["x"] ?? "")x\(screenResolution?["y"] ?? "")")

//7
UserDefaults.standard.setValue("https://developer.apple.com/documentation/foundation/userdefaults", forKey: "appleUserdefaultsUrl")
let appleUserdefaultsUrl = URL(string: UserDefaults.standard.string(forKey: "appleUserdefaultsUrl") ?? "")
print(appleUserdefaultsUrl ?? "")
//8
let urlGoogle = URL(string: "https://www.google.ru/")
UserDefaults.standard.set(urlGoogle, forKey: "urlGoogle")
let url = UserDefaults.standard.url(forKey: "urlGoogle")
print(url ?? "")

//9
UserDefaults.standard.setValue(["Facebook", "Amazon", "Apple", "Netflix", "Alphabet"], forKey: "FAANG")
let faang = UserDefaults.standard.array(forKey: "FAANG")
print(faang ?? "")

//10
UserDefaults.standard.setValue("string", forKey: "string")
UserDefaults.standard.removeObject(forKey: "string")


