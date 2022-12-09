//
//  DetailsView.swift
//  Cryptify
//
//  Created by Jan Babák on 22.11.2022.
//

import SwiftUI

struct DetailsView: View {
    @State var ticker: Ticker
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Details")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 16)
            
            HStack {
                //left column
                VStack(alignment: .leading, spacing: 16) {
                    labelPropertyView(label: "Low:", property: ticker.formattedLow)
                    
                    labelPropertyView(label: "High:", property: ticker.formattedHigh)
                    
                    labelPropertyView(label: "Open:", property: ticker.formattedOpen)
                }
                
                Spacer()
                
                //right column
                VStack(alignment: .leading, spacing: 16) {
                    labelPropertyView(label: "Close:", property: ticker.formattedClose)
                    
                    labelPropertyView(label: "Quantity:", property: ticker.formattedQuantity)
                    
                    labelPropertyView(label: "TradeCount:", property: "\(ticker.tradeCount)")
                }
            }
        }
    }
    
    private func labelPropertyView(label: String, property: String) -> some View {
        HStack() {
            Text(label)
                .foregroundColor(Color.theme.secondaryText)
                .font(.callout)
            
            Text(property)
                .fontWeight(.semibold)
                .font(.callout)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(
            ticker: Ticker(
                symbol: "BTC_USDT",
                open: 1000.535904,
                close: 1003.543894,
                low: 1000.44554,
                high: 2000.5345,
                quantity: 8979,
                amount: 8479,
                tradeCount: 494,
                startTime: 7987897,
                closeTime: 8797989,
                displayName: "BTC/USDT",
                dailyChange: 1.03,
                ts: 3434
            )
        )
    }
}
