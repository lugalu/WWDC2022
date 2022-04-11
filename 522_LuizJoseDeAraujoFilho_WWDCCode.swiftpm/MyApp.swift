import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.onAppear(perform: {
					let fontURL = Bundle.main.url(forResource: "OldNewspaperTypes", withExtension: "ttf")
					CTFontManagerRegisterFontsForURL(fontURL! as CFURL, CTFontManagerScope.process, nil)
				})
		}
    }
}
