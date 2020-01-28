////
////  GigyaApi.swift
////  GigyaSwift
////
////  Created by Shmuel, Sagi on 05/03/2019.
////  Copyright © 2019 Gigya. All rights reserved.
////
//
import Foundation

@objc(GSSession)
public class GigyaSession: NSObject, NSSecureCoding {
    public static var supportsSecureCoding: Bool = true

    var token: String = ""

    var secret: String = ""

    public var sessionExpirationTimestamp: Double?

    var lastLoginProvider = ""

    public init?(sessionToken token: String, secret: String) {
        self.token = token
        self.secret = secret
    }

    public func encode(with aCoder: NSCoder) {
        aCoder.encode(self.token, forKey: "authToken")
        aCoder.encode(self.secret, forKey: "secret")
        aCoder.encode(self.sessionExpirationTimestamp, forKey: "sessionExpirationTimestamp")
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init()

        GigyaLogger.log(with: self, message: "[GigyaSession] decode - \(aDecoder.debugDescription)")

        guard let token = aDecoder.decodeObject(forKey: "authToken") as? String,
            let secret = aDecoder.decodeObject(forKey: "secret") as? String else { return }

        self.token = token
        self.secret = secret

        let expiration = aDecoder.decodeObject(forKey: "sessionExpirationTimestamp") as? Double
        self.sessionExpirationTimestamp = expiration
    }

    func isValid() -> Bool {
        if let sessionExpiration = self.sessionExpirationTimestamp, sessionExpiration > 0, Date().timeIntervalSince1970 > sessionExpiration {
            return false
        }

        return isActive()
    }

    func isActive() -> Bool {
        return !token.isEmpty && !secret.isEmpty
    }
}

