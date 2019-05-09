import UIKit
class GAloginUserInfo: NSObject {
    var loginUserMobileNo : String?
    var loginUserId : String?
    var loginUserUuid : String?
    var loginUserCountry : String?
    var loginUserCountryCode : String?
    var loginUserEmail : String?
    var loginUserlatitude : String?
    var loginUserLongitude : String?
    var loginUserName : String?
    var loginUserQrcode : String?
    var loginUserProfilePic : String?
    var isverify : String?
    var loginPassword : String?
    var dateOfBirth: String?
    var earnedPoints:String?
    var loginUserGender:String?
    var loginUserFollowers:Int = 0
    
    static let shared = GAloginUserInfo()
    func saveUserInfo (dict : [String : AnyObject?] )  {

        
        if let loginUserMobileNo = dict["mobile"] as? String {
            self.loginUserMobileNo = loginUserMobileNo
        }
        if let loginUserId = dict["id"] as? String {
            self.loginUserId = loginUserId
        }
        if let loginUserUuid = dict["uuid"] as? String {
            self.loginUserUuid = loginUserUuid
            print(loginUserUuid)
        }
        if let loginUserCountry = dict["country"] as? String {
            self.loginUserCountry = loginUserCountry
        }
        if let loginUserCountryCode = dict["country_code"] as? String {
            self.loginUserCountryCode = loginUserCountryCode
        }
        if let loginUserEmail = dict["email"] as? String {
            self.loginUserEmail = loginUserEmail
        }
        if let loginUserProfilePic = dict["profile_pic"] as? String {
            self.loginUserProfilePic = loginUserProfilePic
        }
        if let loginUserLongitude = dict["logitude"] as? String {
            self.loginUserLongitude = loginUserLongitude
        }
        if let loginUserName = dict["name"] as? String {
            self.loginUserName = loginUserName
        }
        if let loginUserQrcode = dict["qr_code"] as? String {
            self.loginUserQrcode = loginUserQrcode
        }
        if let Password = dict["password"] as? String{
            self.loginPassword = Password
        }
        if let dateOfBirth = dict["dob"] as? String{
            self.dateOfBirth = dateOfBirth
        }
        if let earnedPoints = dict["points"] as? String{
            let myDouble = Double(earnedPoints)
            let doubleStr = String(format: "%.2f", myDouble!)
            self.earnedPoints = doubleStr
        }
        if let loginUserGender = dict["gender"] as? String{
            self.loginUserGender = loginUserGender
        }
        if let loginUserFollowers = dict["followersCount"] as? Int{
            self.loginUserFollowers = loginUserFollowers
        }
        
    }

}

//To Remove the Saved Values From the Dictionary on Logut
extension GAloginUserInfo {
    func removeUserInfo() {
        self.loginUserMobileNo = nil
        self.loginUserId = nil
        self.loginUserUuid = nil
        self.loginUserCountry = nil
        self.loginUserCountryCode = nil
        self.loginUserEmail = nil
        self.loginUserlatitude = nil
        self.loginUserLongitude = nil
        self.loginUserName = nil
        self.loginUserQrcode = nil
        self.loginUserProfilePic = nil
        self.isverify = nil
        self.loginPassword = nil
        self.dateOfBirth = nil
        self.earnedPoints = nil
        self.loginUserGender = nil
        self.loginUserFollowers = 0
    }
}
