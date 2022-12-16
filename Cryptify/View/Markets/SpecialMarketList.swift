//
//  SpecialMarketList.swift
//  Cryptify
//
//  Created by Jan Babák on 16.12.2022.
//

import Foundation

//names of special list
enum SpecialMarketsList: String {
    case all = "All" //list where are all symbols, All list can't be deleted, symbols can't be removed from here
    case watchlist = "Watchlist" //Watchlist list, can't be deleted, list has swipe shortcut for adding symbol here
}
