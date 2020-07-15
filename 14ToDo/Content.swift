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
    //todo....resetTimeをStringから時間を表す型に変えること?....
    let resetTime:String //リセット時刻
    let resetDay:WeekDay? //リセット曜日 列挙型WeekDay
    var isComplete: Bool = false //完了したらtrue
    var description:String? //補足説明文
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

func makeDeadlines() -> [Deadline] {
    var deadlines = [Deadline]()
    for _ in 0 ..< 19 {
        deadlines.append(.daily)
    }
    for _ in 0 ..< 19 {
        deadlines.append(.weekly)
    }
    return deadlines
}


let names = ["エキスパートルーレット",
             "Lv80ルーレット",
             "Lv50・60・70ルーレット",
             "レベリングルーレット",
             "討伐・討滅戦ルーレット",
             "メインクエストルーレット",
             "アライアンスレイドルーレット",
             "レイドルーレット",
             "ギルドオーダールーレット",
             "メンタールーレット",
             "デイリーチャレンジ フロントライン",
             "蛮族デイリークエスト",
             "ベテラン・モブ手配書",
             "クラン・モブ手配書",
             "モブ手配書",
             "ミニくじテンダー",
             "調達任務",
             "収集品納品",
             "冒険者小隊 訓練",
             "希望の園エデン: 共鳴編 零式1層",
             "希望の園エデン: 共鳴編 零式2層",
             "希望の園エデン: 共鳴編 零式3層",
             "希望の園エデン: 共鳴編 零式4層",
             "希望の園エデン: 共鳴編 4層",
             "複製サレタ工場廃墟",
             "ファッションチェック",
             "クロの空想帳",
             "お得意様取引",
             "ドマ町人地復興",
             "マスクカーニバル",
             "冒険者小隊 小隊任務",
             "極まりし蛮神たち",
             "大魔導士の祝福",
             "いにしえの鼓動",
             "ベテランリスキーモブ",
             "クランリスキーモブ",
             "リスキーモブ",
             "ジャンボくじテンダー当選発表"]

func makeResetTimes() -> [String] {
    var resetTimes = [String]()
    
    for _ in 0 ..< 16 {
        resetTimes.append("0:00")
    }
    for _ in 0 ... 2 {
        resetTimes.append("5:00")
    }
    for _ in 0 ... 17 {
        resetTimes.append("17:00")
    }
    resetTimes.append("21:00")
    return resetTimes
}

func makeResetDays() -> [WeekDay?]{
    var resetDays = [WeekDay?]()
    for _ in 0 ... 18 {
        resetDays.append(nil)
    }
    for _ in 0 ... 17 {
        resetDays.append(.tuesday)
    }
    resetDays.append(.saturday)
    return resetDays
}

func makeContents() -> [Content]{
    var contents = [Content]()
    let deadlines = makeDeadlines()
    let resetTimes = makeResetTimes()
    let resetDays = makeResetDays()
    
    for i in 0 ... 37 {
        var c = Content(name: names[i], deadline: deadlines[i], resetTime: resetTimes[i], resetDay: resetDays[i], description: nil)
        switch c.name {
        case "蛮族デイリークエスト":
            c.description = "最大12クエスト"
        case "ベテラン・モブ手配書":
            c.description = "漆黒エリアの指定されたモブを討伐する"
        case "クラン・モブ手配書":
            c.description = "蒼天・紅蓮エリアの指定されたモブを討伐する"
        case "モブ手配書":
            c.description = "新生エリアの指定されたモブを討伐する"
        case "冒険者小隊 訓練":
            c.description = "訓練回数のリセット"
        case "ファッションチェック":
            c.description = "チャレンジの解放日は金曜日"
        case "クロの空想帳":
            c.description = "有効期限は最大2週間"
        case "極まりし蛮神たち":
            c.description = "極ガルーダ、極タイタン、極イフリートを攻略する"
        case "大魔導士の祝福":
            c.description = "古代の民の迷宮、シルクスの塔、闇の世界を攻略する"
        case "いにしえの鼓動":
            c.description = "影の国ダンスカーを攻略する"
        case "ベテランリスキーモブ":
            c.description = "漆黒エリアの指定されたBモブを討伐する"
        case "クランリスキーモブ":
            c.description = "蒼天・紅蓮エリアの指定されたBモブを討伐する"
        case "リスキーモブ":
            c.description = "新生エリアの指定されたBモブを討伐する"
        default:
            c.description = nil
        }
        contents.append(c)
    }
    
    return contents
}
