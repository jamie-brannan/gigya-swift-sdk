//
//  GigyaDefinitions.swift
//  GigyaSwift
//
//  Created by Shmuel, Sagi on 03/04/2019.
//  Copyright © 2019 Gigya. All rights reserved.
//

import Foundation

struct GigyaDefinitions {
    public struct API {
        // ACCOUNT
        public static let getSdkConfig = "socialize.getSDKConfig"
        public static let login = "accounts.login"
        public static let logout = "accounts.logout"
        public static let getAccountInfo = "accounts.getAccountInfo"
        public static let setAccountInfo = "accounts.setAccountInfo"
        public static let resetPassword = "accounts.resetPassword"
        public static let refreshProviderSession = "socialize.refreshProviderSession"
        public static let initRegistration = "accounts.initRegistration"
        public static let register = "accounts.register"
        public static let letizeRegistration = "accounts.letizeRegistration"
        public static let getConflictingAccount = "accounts.getConflictingAccount"
        public static let notifyLogin = "accounts.notifyLogin"
        public static let verifyLogin = "accounts.verifyLogin"
        public static let notifySocialLogin = "accounts.notifySocialLogin"
        public static let removeConnection = "socialize.removeConnection"
        // TFA
        public static let initTFA = "accounts.tfa.initTFA"
        public static let tfaGetProviders = "accounts.tfa.getProviders"
        public static let letizeTFA = "accounts.tfa.letizeTFA"
        public static let getEmailsTFA = "accounts.tfa.email.getEmails"
        public static let emailSendVerificationCodeTFA = "accounts.tfa.email.sendVerificationCode"
        public static let emailCompleteVerificationTFA = "accounts.tfa.email.completeVerification"
        public static let phoneCompleteVerificationTFA = "accounts.tfa.phone.completeVerification"
        public static let getRegisteredPhoneNumbersTFA = "accounts.tfa.phone.getRegisteredPhoneNumbers"
        public static let sendVerificationCodeTFA = "accounts.tfa.phone.sendVerificationCode"
        public static let totpRegisterTFA = "accounts.tfa.totp.register"
        public static let totpVerifyTFA = "accounts.tfa.totp.verify"
    }

    public struct Tfa {
        public static let email = "gigyaEmail"
        public static let phone = "gigyaPhone"
        public static let topt = "gigyaTotp"
    }

    public struct Plugin {
        public static let finished = "finished"
        public static let canceled = "canceled"
    }

}
