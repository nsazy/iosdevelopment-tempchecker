//
//  ContentView.swift
//  TempChecker
//
//  Created by Nicholas Sazy on 7/3/22.
//

import SwiftUI

struct ContentView: View {
    @State var tempC: String
    @State var tempCalc: Double
    @State var tempFResult: Double
   @State var tempF: String
   @State var tempCResult: Double
    var body: some View {
        
        
        
            
        NavigationView{
            
            ScrollView{
                VStack{
                    
                    VStack{
                        Text("Enter temp in Celcius:")
                            .bold()
                            .font(.subheadline)
                            
                        TextField("Celcius", text: $tempC)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: {
                            let tempInt = Double(tempC ?? "")
                            tempFResult = ((tempInt! * 1.8) + 32)
                        }, label: {
                            
                            Text("Convert to Farhenheit")
                                .multilineTextAlignment(.center)
                            })
                        
                        //Text(tempFResult, specifier: "%.2f").padding(.all)
                        Text("\(tempFResult, specifier: "%.1f")")
                           
                           
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                    VStack(alignment:.center){
                        Text("Enter temp in Fahrenheit:")
                        TextField("Farhenheit", text: $tempF)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: {
                            let tempInt = Double(tempF ?? "")
                            tempCResult = ((tempInt! - 32) * (5/9))
                        }, label: {
                            Text("Convert to Celcius")
                        })
                        
                        Text("\(tempCResult,specifier: "%.1f")")
                           
                            
                    }
                    
                }
                .foregroundColor(.black)
                
            }
            .navigationBarTitle("Temp Converter")
            .background(.cyan)
            
        }
        
            
            
        
        
    }
}


struct ontentView_Previews:PreviewProvider {
    static var previews: some View {
            
        
        ContentView(tempC: "", tempCalc: 0, tempFResult: 0, tempF: "", tempCResult: 0)
        
    
        
    }
}
