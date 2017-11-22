//
//  AnswerViewController.swift
//  KanjiApp
//
//  Created by 原田　礼朗 on 2017/11/22.
//  Copyright © 2017年 reo harada. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    // 回答のラベル
    @IBOutlet weak var answerLabel: UILabel!
    
    // 回答のデータ
    let kanjiData = [
        "あさがお",
        "ばら",
        "きんせんか",
        "こすもす",
        "すいれん",
        "つつじ",
        "ひがんばな",
        "りんご",
        "らん",
        "ひまわり",
    ]
    
    // 選んだ番号
    var selectNumber = 0

    // 最初どうするぅ？
    override func viewDidLoad() {
        super.viewDidLoad()
        // ラベルに答えをひょうじする
        answerLabel.text = kanjiData[selectNumber]
    }

}
