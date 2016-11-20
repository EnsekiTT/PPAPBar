//
//  ViewController.swift
//  PPAPBar
//
//  Created by EnsekiTT on 2016/11/20.
//  Copyright © 2016年 EnsekiTT. All rights reserved.
//

import Cocoa
import AVFoundation

class WindowController: NSWindowController, AVAudioPlayerDelegate {
    var audioPlayer:AVAudioPlayer!
    
    func soundPlay(fileName: String) {
        // 再生する audio ファイルのパスを取得
        let audioPath = Bundle.main.path(forResource: fileName, ofType: "mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        print(audioUrl)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    @IBAction func startAction(_ sender: NSButton){
        print("start")
        soundPlay(fileName: "start")
    }
    
    @IBAction func pen1Action(_ sender: NSButton){
        print("Pen")
        soundPlay(fileName: "pen1")
    }
    
    
    @IBAction func pineAplleAction(_ sender: NSButton){
        print("pineapple")
        soundPlay(fileName: "pineapple")
    }
    
    @IBAction func appleAction(_ sender: NSButton){
        print("apple")
        soundPlay(fileName: "apple")
    }

    @IBAction func pen2Action(_ sender: NSButton){
        print("pen")
        soundPlay(fileName: "pen2")
    }

    @IBAction func endAction(_ sender: NSButton){
        print("end")
        soundPlay(fileName: "end")
    }
}

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

