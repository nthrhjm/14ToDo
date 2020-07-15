//
//  Content.swift
//  14ToDo
//
//  Created by nhajime on 2020/07/15.
//  Copyright © 2020 Hajime Nutahara. All rights reserved.
//

import Foundation

struct Content {
    let name:String //コンテンツ名
    let deadline:Deadline //期限の種類 列挙型Deadline
    //todo....resetTimeをStringから時間を表す型に変えること....
    let resetTime:String //リセット時刻
    let resetDay:WeekDay? //リセット曜日 列挙型WeekDay
    var isComplete: Bool = false //完了したらtrue
    let description:String? //補足説明文
}

enum Deadline:String {
    case daily = "デイリー"
    case weekly = "ウィークリー"
}

enum WeekDay:String {
    case sunday = "日曜"
    case monday = "月曜"
    case tuesday = "火曜"
    case wednesday = "水曜"
    case thursday = "木曜"
    case friday = "金曜"
    case saturday = "土曜"
}

let content1 = Content(name: "エキスパートルーレット", deadline: .weekly, resetTime: "0:00", resetDay: nil, description: nil)
let content2 = Content(name: "お得意様取引", deadline: .weekly, resetTime: "17:00", resetDay: .tuesday, description: nil)
let contents:[Content] = [content1, content2]

func printContets(contents:[Content]) {
    for content in contents {
        print("<\(content.deadline.rawValue)>  \(content.name) リセット時間 \(content.resetDay?.rawValue ?? "") \(content.resetTime)　\(content.isComplete ? "完了": "未完了")\n\(content.description ?? "") ")
    }
}

