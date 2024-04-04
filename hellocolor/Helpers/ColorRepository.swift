//
//  ColorRepository.swift
//  Color Clocks
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation

class ColorRepository {
    
    // PALLETE #1
    private static var caputMortem: ColorStyle = ColorStyle(hex: "#522B29", name: "Caput Mortem")
    private static var springGreen: ColorStyle = ColorStyle(hex: "#37FF8B", name: "Spring Green")
    private static var vividSkyBlue: ColorStyle = ColorStyle(hex: "#51D6FF", name: "Vivid Sky Blue")
    private static var vistaBlue: ColorStyle = ColorStyle(hex: "#8D9EC6", name: "Vista Blue")
    private static var pompAndPower: ColorStyle = ColorStyle(hex: "#A06B9A", name: "Pomp and Power")
    
    // PALLETE #2
    private static var linen: ColorStyle = ColorStyle(hex: "#FFEDE1", name: "Linen")
    private static var ivory: ColorStyle = ColorStyle(hex: "#F9FBF2", name: "Ivory")
    private static var lightCyan: ColorStyle = ColorStyle(hex: "#D7F9FF", name: "Light Cyan")
    private static var jordyBlue: ColorStyle = ColorStyle(hex: "#AFCBFF", name: "Jordy Blue")
    private static var oxfordBlue: ColorStyle = ColorStyle(hex: "#0E1C36", name: "Oxford Blue")
    
    // PALLETE #3
    private static var teaGreen: ColorStyle = ColorStyle(hex: "#C8FFBE", name: "Tea Green")
    private static var mindaro: ColorStyle = ColorStyle(hex: "#EDFFAB", name: "Mindaro")
    private static var rosyBrown: ColorStyle = ColorStyle(hex: "#BA9593", name: "Rosy Brown")
    private static var black: ColorStyle = ColorStyle(hex: "#08090A", name: "Black")
    private static var davyGray: ColorStyle = ColorStyle(hex: "#575A5E", name: "Davy's Gray")
    
    // PALLETE #4
    private static var asparagus: ColorStyle = ColorStyle(hex: "#6DA34D", name: "Asparagus")
    private static var englishViolet: ColorStyle = ColorStyle(hex: "#56445D", name: "English Violet")
    private static var darkCyan: ColorStyle = ColorStyle(hex: "#548687", name: "Dark Cyan")
    private static var cambridgeBlue: ColorStyle = ColorStyle(hex: "#8FBC94", name: "Cambridge Blue")
    private static var nyanza: ColorStyle = ColorStyle(hex: "#E2F4CD", name: "Nyanza")
    
    // PALLETE #5
    private static var desertSand: ColorStyle = ColorStyle(hex: "#ECC8AF", name: "Desert Sand")
    private static var melon: ColorStyle = ColorStyle(hex: "#E7AD99", name: "Melon")
    private static var oldRose: ColorStyle = ColorStyle(hex: "#CE796B", name: "Old Rose")
    private static var persianOrange: ColorStyle = ColorStyle(hex: "#C18C5D", name: "Persian Orance")
    private static var paynesGray: ColorStyle = ColorStyle(hex: "#495867", name: "Payne's Gray")
    
    // PALLETE #6
    private static var electricBlue: ColorStyle = ColorStyle(hex: "#51E5FF", name: "Electric Blue")
    private static var indigo: ColorStyle = ColorStyle(hex: "#440381", name: "Indigo")
    private static var deepPink: ColorStyle = ColorStyle(hex: "#EC368D", name: "Deep Pink")
    private static var palesDogwood: ColorStyle = ColorStyle(hex: "#CEB5A7", name: "Pale's Dogwood")
    private static var apricot: ColorStyle = ColorStyle(hex: "#FFD6C0", name: "Apricot")
    
    internal var palletes: [Style] = [
        Style(primary: caputMortem, secondary: springGreen, tertiary: vividSkyBlue, background: vistaBlue, accent: pompAndPower),
        Style(primary: linen, secondary: ivory, tertiary: lightCyan, background: jordyBlue, accent: oxfordBlue),
        Style(primary: teaGreen, secondary: mindaro, tertiary: rosyBrown, background: black, accent: davyGray),
        Style(primary: asparagus, secondary: englishViolet, tertiary: darkCyan, background: cambridgeBlue, accent: nyanza),
        Style(primary: desertSand, secondary: melon, tertiary: oldRose, background: persianOrange, accent: paynesGray),
        Style(primary: electricBlue, secondary: indigo, tertiary: deepPink, background: palesDogwood, accent: apricot)
    ]

}
