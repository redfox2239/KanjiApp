//
//  ViewController.swift
//  KanjiApp
//
//  Created by 原田　礼朗 on 2017/11/22.
//  Copyright © 2017年 reo harada. All rights reserved.
//

import UIKit

// tableViewを使う準備その１
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    // tableViewの名前
    @IBOutlet weak var kanjiTableView: UITableView!
    
    // 漢字のデータを配列で用意
    let kanjiData = [
        "朝顔",
        "薔薇",
        "金盞花",
        "秋桜",
        "睡蓮",
        "躑躅",
        "彼岸花",
        "林檎",
        "蘭",
        "向日葵",
    ]
    
    // 最初どうするぅ？
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableViewを使う準備その２
        kanjiTableView.delegate = self
        kanjiTableView.dataSource = self
    }

    // ↓tableViewとの相談
    // セクションの数どうするぅ？
    func numberOfSections(in tableView: UITableView) -> Int {
        // 1個でお願いします。
        return 1
    }
    
    // セルの数どうするぅ？
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // kanjiDataの数でお願いします。
        return kanjiData.count
    }
    
    // 各行のセルの中身どうするぅ？
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // "cell"と名前つけた白いセルでお願いします
        let cell = kanjiTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // textLabelにテキストを入力
        cell.textLabel?.text = kanjiData[indexPath.row]
        // このcellでお願いします。
        return cell
    }
    // 各行のセルを選択した時どうするぅ？
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 移動先の画面を呼んでくる
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "回答画面") as! AnswerViewController
        // 移動先の画面にデータを渡す
        nextVC.selectNumber = indexPath.row
        // 画面をひょうじする
        show(nextVC, sender: nil)
    }
    // ↑tableViewとの相談
}

