import SwiftUI
import Alamofire

struct ContentView: View {
    @State private var results = [Forecastday]()
    @State private var weatherData: Weather?
    @State var hourlyForecast = [Hour]()
    @State var weatherBackgroundColor = Color.init(red: 135/255, green: 206/255, blue: 235/255)
    @State var weatherImage = "☀️"
    @State var currentTemp = 0
    @State var currentHumuidity = 0
    @State var currentPrepcip = 0
    @State var currentWind = 0
    @State private var showMenu = false
    @State var conditionText = "Slighty Overcast"
    @State var cityName = "Kathmandu"
    @State var loading = true
    @State private var selectedCity: String = "Biratnagar"
    
    var body: some View {
        if loading{
            ZStack{
                Color(weatherBackgroundColor)
                    .ignoresSafeArea()
                ProgressView()
                    .task {
                        await  makeAPICall()
                    }
            }
        }else{
            
            NavigationStack {
                ZStack {
                    Color(weatherBackgroundColor)
                        .ignoresSafeArea()
                    VStack(spacing: 1) {
                        Text("\(cityName), Nepal")
                            .fontWeight(.bold)
                            .font(.system(size: 10))
                        
                        
                        
                        
                        NavigationLink(destination: WeatherDeatilPage(results: $results, cityName: $cityName, index: 0)) {
                            Text(weatherImage)
                                .font(.system(size: 60))
                        }
                        .buttonStyle(PlainButtonStyle()) // To remove the default button style
                        
                        
                        
                        HStack {
                            Text("\(currentTemp)°C")
                                .fontWeight(.bold)
                                .font(.system(size: 27))
                                .offset(x:5)
                            
                            Image(systemName: "shuffle.circle")
                                .offset(x:30)
                                .onTapGesture {
                                    
                                    print("hellow")
                                    
                                    if let randomCity = getRandomNepalCity() {
                                        
                                        selectedCity = randomCity
                                        Task {
                                            await makeAPICall()
                                        }
                                        print(selectedCity)
                                    } else {
                                        print("Nepal cities array is empty")
                                    }
                                    
                                }
                            
                        }
                        
                        
                        
                        Rectangle()
                            .overlay {
                                HStack(spacing: 17) {
                                    VStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 20))
                                        
                                        Text("Humidity")
                                            .foregroundColor(.black)
                                            .font(.system(size: 10))
                                        Text("\(currentHumuidity)%")
                                            .foregroundColor(.black)
                                            .font(.system(size: 10))
                                            .bold()
                                    }
                                    VStack {
                                        Image(systemName: "wind")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 25))
                                        Text("Wind")
                                            .foregroundColor(.black)
                                            .font(.system(size: 10))
                                        Text("\(currentWind)km/h")
                                            .foregroundColor(.black)
                                            .font(.system(size: 10))
                                            .bold()
                                    }
                                    VStack {
                                        Image(systemName: "cloud")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 30))
                                        Text("Precip")
                                            .foregroundColor(.black)
                                            .font(.system(size: 10))
                                        Text("\(currentPrepcip)mm")
                                            .foregroundColor(.black)
                                            .font(.system(size: 10))
                                            .bold()
                                    }
                                }
                            }
                            .frame(width: 180, height: 60)
                            .background(Color.white)
                            .cornerRadius(1)
                            .shadow(color: Color.black.opacity(1), radius: 5, x: 0, y: 5)
                    }
                    
                    SideMenuView(isShowing: $showMenu)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            showMenu.toggle()
                        }) {
                            Image(systemName: "line.3.horizontal")
                            
                        }
                    }
                }
            }
            
        }
        
        
    }
    
    
    func makeAPICall() async {
        // Define the URL string
        let urlString = "https://api.weatherapi.com/v1/forecast.json?key=83f5f8b352a744e58fd212956241105&q=\(selectedCity)&days=3&aqi=no&alerts=no"
        
        // Make the request using Alamofire
        _ =  AF.request(urlString).responseDecodable(of:Weather.self) { response in
            // Check if the request was successful
            if let statusCode = response.response?.statusCode {
                print("Status Code: \(statusCode)")
            } else {
                print("Status Code: Unknown")
            }
            
            // Check if there was an error
            if let error = response.error {
                print("Error: \(error)")
                return
            }
            
            // Check if data was received
            guard let data = response.data else {
                print("No data received")
                return
            }
            
            // Print response data as string
            if String(data: data, encoding: .utf8) != nil {
                //                print("Response Data:")
                //                print(dataString)
                
                switch response.result{
                case.success(let weather):
                    cityName = weather.location.name
                    results = weather.forecast.forecastday
                    currentTemp = Int(results[0].day.avgtemp_c)
                    currentHumuidity = Int(results[0].day.avghumidity)
                    hourlyForecast = results[0].hour
                    currentPrepcip = Int(results[0].day.totalprecip_mm)
                    currentWind = Int(results[0].day.maxwind_kph)
                    conditionText = results[0].day.condition.text
                    weatherBackgroundColor = getWeatherBackgroundColor(code: results[0].day.condition.code)
                    weatherImage = getWeatherImage(code: results[0].day.condition.code)
                    
                    loading = false
                    
                    
                case .failure(let error):
                    print(error)
                }
                
                
                
            } else {
                print("Unable to convert data to string")
            }
        }
    }
    
    
    func getRandomNepalCity() -> String? {
        guard !nepalCities.isEmpty else {
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<nepalCities.count)
        return nepalCities[randomIndex]
    }
    
    
    
    
}





