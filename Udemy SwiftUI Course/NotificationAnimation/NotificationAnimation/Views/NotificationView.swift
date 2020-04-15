//
//  NotificationView.swift
//  NotificationAnimation
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    
    var body: some View {
        ZStack {
            Rectangle()
            .frame(width: UIScreen.main.bounds.width - 40, height: 100)
            .cornerRadius(16)
            .foregroundColor(.red)
            .shadow(radius: 16)
            Text("Notification")
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView().previewLayout(.sizeThatFits)
    }
}
