//
//  Sounds.swift
//  micSwitch
//
//  Created by Vidhanth on 08/05/21.
//  Copyright © 2021 Denis Stanishevskiy. All rights reserved.
//

import AVFoundation

 class Sounds {

   static var audioPlayer:AVAudioPlayer?

   static func playSounds(soundfile: String) {

       if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

           do{

               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.prepareToPlay()
               audioPlayer?.play()

           }catch {
               print("Error")
           }
       }
    }
 }
