//
//  SoundManager.swift
//  Cryptify
//
//  Created by Jan Babák on 30.11.2022.
//

import Foundation
import AVKit
import SwiftUI

//sound manager implemented as singleton patter
class SoundManager {
    static let instance = SoundManager()
    
    @AppStorage("soundOn") static var soundOn = false
    
    private var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case transitionLeft
        case transitionRight
        case tab
    }
    
    func playSound(sound: SoundOption) {
        guard SoundManager.soundOn else { return }
        
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".wav") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("[PLAY SOUND ERROR]", error.localizedDescription)
        }
    }
    
    func playTab() {
        playSound(sound: SoundOption.tab)
    }
    
    func playTransitionRight() {
        playSound(sound: SoundOption.transitionLeft)
    }
    
    func playTransitionLeft() {
        playSound(sound: SoundOption.transitionLeft)
    }
}