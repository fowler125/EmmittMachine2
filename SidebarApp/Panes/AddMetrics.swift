//
//  AddMetrics.swift
//  SidebarApp
//
//  Created by Jabari Fowler on 5/23/23.
//

import SwiftUI

struct AddMetrics: View {
    @State private var inputData = InputData()
    
    struct InputData {
        var averageHandleTime = ""
        var waitTime = ""
        var afterCallTime = ""
    }
    
    var body: some View {
        VStack {
            inputFields()
            
            Button(action: calculateAverages) {
                Text("Calculate Averages")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle("Home")
    }
    
    func inputFields() -> some View {
        VStack {
            TextField("Average Handle Time (HH:MM:SS)", text: $inputData.averageHandleTime)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Wait Time (HH:MM:SS)", text: $inputData.waitTime)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("After Call Time (HH:MM:SS)", text: $inputData.afterCallTime)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
    
    func calculateAverages() {
        // Access the stored input data
        let averageHandleTime = inputData.averageHandleTime
        let waitTime = inputData.waitTime
        let afterCallTime = inputData.afterCallTime
        
        // Perform your calculations here based on the time durations entered
        // For simplicity, let's just print the entered values
        
        print("Average Handle Time: \(averageHandleTime)")
        print("Wait Time: \(waitTime)")
        print("After Call Time: \(afterCallTime)")
    }
}

struct AddMetrics_Previews: PreviewProvider {
    static var previews: some View {
        AddMetrics()
    }
}
