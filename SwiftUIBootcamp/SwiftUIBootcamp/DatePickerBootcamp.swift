//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 27/02/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2024, month: 1, day: 1)) ?? Date()
    let endingDate: Date = Calendar.current.date(from: DateComponents(year: 2026, month: 12, day: 31)) ?? Date()
    
    var dateFormater: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        
        VStack {
//            Text("Selected Date: \(selectedDate, style: .date)")
            //Text("Selected Date: \n\(selectedDate.description)")
            Text("Selected Date: \n\(dateFormater.string(from: selectedDate))")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.bottom, 50)
            
            
            //DatePicker("Select a Date", selection: $selectedDate)
            DatePicker("Select a Date",
                       selection: $selectedDate,
                       in: startingDate...endingDate,
                       displayedComponents: [.hourAndMinute, .date])
                .accentColor(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //WheelDatePickerStyle()
                    //GraphicalDatePickerStyle()
                )
        }
        
        
    }
}

#Preview {
    DatePickerBootcamp()
}
