//
//  TicketShape.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

struct TicketShape: Shape {
    func path(in rect: CGRect) -> Path {
        let arcRadius: CGFloat = 0
        let smallArcRadius:CGFloat = 20
        
        var path = Path()
        path.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y + arcRadius))
        path.addArc(center: CGPoint.zero, radius: arcRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 0) , clockwise: true)
        
       
        path.addArc(center: CGPoint(x: rect.midX, y: rect.origin.y) , radius: arcRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 0) , clockwise: true)
        
        path.addLine(to:  CGPoint(x: rect.size.width - arcRadius, y: rect.origin.y))
        path.addArc(center: CGPoint(x: rect.size.width , y: rect.origin.y), radius: arcRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 90) , clockwise: true)
        
        path.addLine(to:  CGPoint(x: rect.size.width, y: rect.size.height - smallArcRadius))
        path.addArc(center: CGPoint(x: rect.size.width , y: rect.size.height), radius: smallArcRadius, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 180) , clockwise: true)
         
        path.addLine(to:  CGPoint(x: rect.origin.x + smallArcRadius, y: rect.size.height))
        path.addArc(center: CGPoint(x: rect.origin.x , y: rect.size.height), radius: smallArcRadius, startAngle: Angle(degrees: 360), endAngle: Angle(degrees: 270) , clockwise: true)
             
        path.closeSubpath()
        return path
    }
}
