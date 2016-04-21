//
//  ViewController.swift
//  MojiMosaic
//
//  Created by Dominic Holmes on 3/7/16.
//  Copyright © 2016 Holmes Technologies. All rights reserved.
//

import UIKit
var backgroundValue = "🌚"
var letteringValue = "🌎"
var wordToMake = "EMOJIFY!"
var finalOutput = ""
var lettersPerLine = 1
var lettersSize = 2
var lineLength = 6
let template0 = [[0,1,1,0],[1,0,0,1],[1,0,0,1],[1,0,0,1],[0,1,1,0]]
let template0M = [[0,1,1,1,0],[1,0,0,0,1],[1,0,0,0,1],[1,0,0,0,1],[0,1,1,1,0]]
let template0L = [[0,1,1,1,1,0],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[0,1,1,1,1,0]]
let template1 = [[0,0,1,0],[0,1,1,0],[0,0,1,0],[0,0,1,0],[0,1,1,1]]
let template1M = [[0,0,1,0,0],[0,1,1,0,0],[0,0,1,0,0],[0,0,1,0,0],[0,1,1,1,0]]
let template1L = [[0,0,0,1,0,0],[0,0,1,1,0,0],[0,1,0,1,0,0],[0,0,0,1,0,0],[0,0,0,1,0,0],[0,1,1,1,1,1]]
let template2 = [[0,1,1,0],[0,0,0,1],[0,0,1,0],[0,1,0,0],[0,1,1,1]]
let template2M = [[0,1,1,1,0],[0,0,0,0,1],[0,0,1,1,0],[0,1,0,0,0],[0,1,1,1,1]]
let template2L = [[0,1,1,1,1,0],[1,0,0,0,0,1],[0,0,1,1,1,0],[0,1,0,0,0,0],[1,0,0,0,0,0],[1,1,1,1,1,1]]
let template3 = [[1,1,1,0],[0,0,0,1],[0,1,1,1],[0,0,0,1],[1,1,1,0]]
let template3M = [[1,1,1,1,0],[0,0,0,0,1],[0,1,1,1,0],[0,0,0,0,1],[1,1,1,1,0]]
let template3L = [[1,1,1,1,0,0],[0,0,0,0,1,0],[0,0,1,1,1,0],[0,0,0,0,1,0],[0,0,0,0,1,0],[1,1,1,1,0,0]]
let template4 = [[1,0,0,1],[1,0,0,1],[1,1,1,1],[0,0,0,1],[0,0,0,1]]
let template4M = [[1,0,0,1,0],[1,0,0,1,0],[1,1,1,1,0],[0,0,0,1,0],[0,0,0,1,0]]
let template4L = [[1,0,0,0,1,0],[1,0,0,0,1,0],[1,1,1,1,1,0],[0,0,0,0,1,0],[0,0,0,0,1,0],[0,0,0,0,1,0]]
let template5 = [[1,1,1,1],[1,0,0,0],[1,1,1,0],[0,0,0,1],[1,1,1,0]]
let template5M = [[1,1,1,1,0],[1,0,0,0,0],[1,1,1,0,0],[0,0,0,1,0],[1,1,1,0,0]]
let template5L = [[1,1,1,1,1,0],[1,0,0,0,0,0],[1,1,1,0,0,0],[1,0,0,1,0,0],[0,0,0,0,1,0],[1,1,1,1,0,0]]
let template6 = [[0,1,0,0],[1,0,0,0],[1,1,0,0],[1,0,1,0],[1,1,1,0]]
let template6M = [[0,1,1,0,0],[1,0,0,0,0],[1,1,1,0,0],[1,0,0,1,0],[0,1,1,0,0]]
let template6L = [[0,0,1,0,0,0],[0,1,0,0,0,0],[1,0,0,0,0,0],[1,1,1,0,0,0],[1,0,0,1,0,0],[0,1,1,0,0,0]]
let template7 = [[1,1,1,1],[0,0,0,1],[0,0,1,0],[0,1,0,0],[1,0,0,0]]
let template7M = [[0,1,1,1,1],[0,0,0,0,1],[0,0,0,1,0],[0,0,1,0,0],[0,1,0,0,0]]
let template7L = [[0,1,1,1,1,1],[0,0,0,0,0,1],[0,0,0,0,1,0],[0,0,0,0,1,0],[0,0,0,1,0,0],[0,0,0,1,0,0]]
let template8 = [[0,1,1,0],[1,0,0,1],[0,1,1,0],[1,0,0,1],[0,1,1,0]]
let template8M = [[0,1,1,1,0],[1,0,0,0,1],[0,1,1,1,0],[1,0,0,0,1],[0,1,1,1,0]]
let template8L = [[0,1,1,1,1,0],[1,0,0,0,0,1],[0,1,1,1,1,0],[1,0,0,0,0,1],[1,0,0,0,0,1],[0,1,1,1,1,0]]
let template9 = [[0,1,1,1],[1,0,0,1],[0,1,1,1],[0,0,0,1],[0,0,0,1]]
let template9M = [[0,0,1,1,1],[0,1,0,0,1],[0,0,1,1,1],[0,0,0,0,1],[0,0,0,0,1]]
let template9L = [[0,0,1,1,1,0],[0,1,0,0,0,1],[0,1,0,0,0,1],[0,0,1,1,1,1],[0,0,0,0,0,1],[0,0,0,0,0,1]]
let templateA = [[0,1,1,0],[1,0,0,1],[1,1,1,1],[1,0,0,1],[1,0,0,1]]
let templateAM = [[0,1,1,1,0],[1,0,0,0,1],[1,1,1,1,1],[1,0,0,0,1],[1,0,0,0,1]]
let templateAL = [[0,0,1,1,0,0],[0,1,0,0,1,0],[1,0,0,0,0,1],[1,1,1,1,1,1],[1,0,0,0,0,1],[1,0,0,0,0,1]]
let templateB = [[1,1,1,0],[1,0,0,1],[1,1,1,0],[1,0,0,1],[1,1,1,0]]
let templateBM = [[1,1,1,1,0],[1,0,0,0,1],[1,1,1,1,0],[1,0,0,0,1],[1,1,1,1,0]]
let templateBL = [[1,1,1,1,1,0],[1,0,0,0,0,1],[1,1,1,1,1,0],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,1,1,1,1,0]]
let templateC = [[0,1,1,1],[1,0,0,0],[1,0,0,0],[1,0,0,0],[0,1,1,1]]
let templateCM = [[0,1,1,1,0],[1,0,0,0,0],[1,0,0,0,0],[1,0,0,0,0],[0,1,1,1,0]]
let templateCL = [[0,0,1,1,1,1],[0,1,0,0,0,0],[0,1,0,0,0,0],[0,1,0,0,0,0],[0,1,0,0,0,0],[0,0,1,1,1,1]]
let templateD = [[1,1,1,0],[1,0,0,1],[1,0,0,1],[1,0,0,1],[1,1,1,0]]
let templateDM = [[1,1,1,1,0],[1,0,0,0,1],[1,0,0,0,1],[1,0,0,0,1],[1,1,1,1,0]]
let templateDL = [[1,1,1,1,0,0],[1,0,0,0,1,0],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,1,0],[1,1,1,1,0,0]]
let templateE = [[1,1,1,1],[1,0,0,0],[1,1,1,0],[1,0,0,0],[1,1,1,1]]
let templateEM = [[1,1,1,1,1],[1,0,0,0,0],[1,1,1,0,0],[1,0,0,0,0],[1,1,1,1,1]]
let templateEL = [[1,1,1,1,1,0],[1,0,0,0,0,0],[1,1,1,1,0,0],[1,0,0,0,0,0],[1,0,0,0,0,0],[1,1,1,1,1,0]]
let templateF = [[1,1,1,1],[1,0,0,0],[1,1,1,0],[1,0,0,0],[1,0,0,0]]
let templateFM = [[1,1,1,1,1],[1,0,0,0,0],[1,1,1,0,0],[1,0,0,0,0],[1,0,0,0,0]]
let templateFL = [[1,1,1,1,1,0],[1,0,0,0,0,0],[1,1,1,1,0,0],[1,0,0,0,0,0],[1,0,0,0,0,0],[1,0,0,0,0,0]]
let templateG = [[0,1,1,1],[1,0,0,0],[1,0,1,1],[1,0,0,1],[0,1,1,0]]
let templateGM = [[0,1,1,1,1],[1,0,0,0,0],[1,0,0,1,1],[1,0,0,0,1],[0,1,1,1,0]]
let templateGL = [[0,1,1,1,1,0],[1,0,0,0,0,1],[1,0,0,0,0,0],[1,0,0,0,1,1],[1,0,0,0,0,1],[0,1,1,1,1,0]]
let templateH = [[1,0,0,1],[1,0,0,1],[1,1,1,1],[1,0,0,1],[1,0,0,1]]
let templateHM = [[1,0,0,0,1],[1,0,0,0,1],[1,1,1,1,1],[1,0,0,0,1],[1,0,0,0,1]]
let templateHL = [[1,0,0,0,0,1],[1,0,0,0,0,1],[1,1,1,1,1,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1]]
let templateI = [[1,1,1,0],[0,1,0,0],[0,1,0,0],[0,1,0,0],[1,1,1,0]]
let templateIM = [[1,1,1,1,1],[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0],[1,1,1,1,1]]
let templateIL = [[1,1,1,1,1,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[1,1,1,1,1,0]]
let templateJ = [[0,1,1,1],[0,0,1,0],[0,0,1,0],[0,0,1,0],[1,1,1,0]]
let templateJM = [[0,1,1,1,1],[0,0,0,1,0],[0,0,0,1,0],[1,0,0,1,0],[1,1,1,1,0]]
let templateJL = [[0,0,1,1,1,1],[0,0,0,0,1,0],[0,0,0,0,1,0],[1,0,0,0,1,0],[1,0,0,0,1,0],[0,1,1,1,0,0]]
let templateK = [[1,0,0,1],[1,0,1,0],[1,1,0,0],[1,0,1,0],[1,0,0,1]]
let templateKM = [[1,0,0,0,1],[1,0,0,1,0],[1,1,1,0,0],[1,0,0,1,0],[1,0,0,0,1]]
let templateKL = [[1,0,0,0,1,0],[1,0,0,1,0,0],[1,1,1,0,0,0],[1,1,1,0,0,0],[1,0,0,1,0,0],[1,0,0,0,1,0]]
let templateL = [[1,0,0,0],[1,0,0,0],[1,0,0,0],[1,0,0,0],[1,1,1,1]]
let templateLM = [[1,0,0,0,0],[1,0,0,0,0],[1,0,0,0,0],[1,0,0,0,0],[1,1,1,1,0]]
let templateLL = [[1,0,0,0,0,0],[1,0,0,0,0,0],[1,0,0,0,0,0],[1,0,0,0,0,0],[1,0,0,0,0,0],[1,1,1,1,1,0]]
let templateM = [[1,0,0,1],[1,1,1,1],[1,1,1,1],[1,0,0,1],[1,0,0,1]]
let templateMM = [[1,0,0,0,1],[1,1,0,1,1],[1,0,1,0,1],[1,0,0,0,1],[1,0,0,0,1]]
let templateML = [[1,0,0,0,0,1],[1,1,0,0,1,1],[1,0,1,1,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1]]
let templateN = [[1,0,0,1],[1,1,0,1],[1,0,1,1],[1,0,1,1],[1,0,0,1]]
let templateNM = [[1,0,0,0,1],[1,1,0,0,1],[1,0,1,0,1],[1,0,0,1,1],[1,0,0,0,1]]
let templateNL = [[1,0,0,0,0,1],[1,1,0,0,0,1],[1,0,1,0,0,1],[1,0,0,1,0,1],[1,0,0,0,1,1],[1,0,0,0,0,1]]
let templateO = [[0,1,1,0],[1,0,0,1],[1,0,0,1],[1,0,0,1],[0,1,1,0]]
let templateOM = [[0,1,1,1,0],[1,0,0,0,1],[1,0,0,0,1],[1,0,0,0,1],[0,1,1,1,0]]
let templateOL = [[0,1,1,1,1,0],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[0,1,1,1,1,0]]
let templateP = [[1,1,1,0],[1,0,0,1],[1,1,1,0],[1,0,0,0],[1,0,0,0]]
let templatePM = [[1,1,1,0,0],[1,0,0,1,0],[1,1,1,0,0],[1,0,0,0,0],[1,0,0,0,0]]
let templatePL = [[1,1,1,1,0,0],[1,0,0,0,1,0],[1,0,0,0,1,0],[1,1,1,1,0,0],[1,0,0,0,0,0],[1,0,0,0,0,0]]
let templateQ = [[1,1,1,0],[1,0,1,0],[1,0,1,0],[1,1,1,0],[0,0,0,1]]
let templateQM = [[0,1,1,0,0],[1,0,0,1,0],[1,0,0,1,0],[0,1,1,1,0],[0,0,0,0,1]]
let templateQL = [[0,1,1,1,0,0],[1,0,0,0,1,0],[1,0,0,0,1,0],[1,0,0,1,1,0],[0,1,1,1,1,0],[0,0,0,0,0,1]]
let templateR = [[1,1,1,0],[1,0,0,1],[1,1,1,0],[1,0,1,0],[1,0,0,1]]
let templateRM = [[1,1,1,0,0],[1,0,0,1,0],[1,1,1,0,0],[1,0,1,0,0],[1,0,0,1,0]]
let templateRL = [[1,1,1,1,0,0],[1,0,0,0,1,0],[1,0,0,0,1,0],[1,1,1,1,0,0],[1,0,0,1,0,0],[1,0,0,0,1,0]]
let templateS = [[0,1,1,1],[1,0,0,0],[0,1,1,0],[0,0,0,1],[1,1,1,0]]
let templateSM = [[0,1,1,1,1],[1,0,0,0,0],[0,1,1,1,0],[0,0,0,0,1],[1,1,1,1,0]]
let templateSL = [[0,1,1,1,1,1],[1,0,0,0,0,0],[0,1,1,1,1,0],[0,0,0,0,0,1],[1,0,0,0,0,1],[0,1,1,1,1,0]]
let templateT = [[1,1,1,1],[0,1,0,0],[0,1,0,0],[0,1,0,0],[0,1,0,0]]
let templateTM = [[1,1,1,1,1],[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0]]
let templateTL = [[1,1,1,1,1,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0]]
let templateU = [[1,0,0,1],[1,0,0,1],[1,0,0,1],[1,0,0,1],[1,1,1,1]]
let templateUM = [[1,0,0,0,1],[1,0,0,0,1],[1,0,0,0,1],[1,0,0,0,1],[0,1,1,1,0]]
let templateUL = [[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[0,1,1,1,1,0]]
let templateV = [[1,0,0,1],[1,0,0,1],[1,0,0,1],[1,0,0,1],[0,1,1,0]]
let templateVM = [[1,0,0,0,1],[1,0,0,0,1],[0,1,0,1,0],[0,1,0,1,0],[0,0,1,0,0]]
let templateVL = [[1,0,0,0,0,1],[1,0,0,0,0,1],[0,1,0,0,1,0],[0,1,0,0,1,0],[0,0,1,1,0,0],[0,0,1,1,0,0]]
let templateW = [[1,0,0,1],[1,0,0,1],[1,1,1,1],[1,1,1,1],[1,0,0,1]]
let templateWM = [[1,0,0,0,1],[1,0,0,0,1],[1,0,1,0,1],[1,1,0,1,1],[1,0,0,0,1]]
let templateWL = [[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,0,0,0,1],[1,0,1,1,0,1],[1,1,0,0,1,1],[1,0,0,0,0,1]]
let templateX = [[1,0,0,1],[0,1,1,0],[0,1,1,0],[1,0,0,1],[0,0,0,0]]
let templateXM = [[1,0,0,0,1],[0,1,0,1,0],[0,0,1,0,0],[0,1,0,1,0],[1,0,0,0,1]]
let templateXL = [[1,0,0,0,0,1],[0,1,0,0,1,0],[0,0,1,1,0,0],[0,0,1,1,0,0],[0,1,0,0,1,0],[1,0,0,0,0,1]]
let templateY = [[1,0,0,1],[1,0,0,1],[0,1,1,0],[0,1,0,0],[0,1,0,0]]
let templateYM = [[1,0,0,0,1],[0,1,0,1,0],[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0]]
let templateYL = [[1,0,0,0,0,1],[0,1,0,0,1,0],[0,0,1,1,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0]]
let templateZ = [[1,1,1,1],[0,0,1,0],[0,1,0,0],[1,0,0,0],[1,1,1,1]]
let templateZM = [[1,1,1,1,1],[0,0,0,1,0],[0,0,1,0,0],[0,1,0,0,0],[1,1,1,1,1]]
let templateZL = [[1,1,1,1,1,1],[0,0,0,0,1,0],[0,0,0,1,0,0],[0,0,1,0,0,0],[0,1,0,0,0,0],[1,1,1,1,1,1]]
let templateSpac = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
let templateSpacM = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]
let templateSpacL = [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
let templateApos = [[0,1,1,1],[0,1,1,1],[0,0,1,0],[0,1,0,0],[0,0,0,0]]
let templateAposM = [[0,0,0,0,0],[0,0,1,1,0],[0,0,1,1,0],[0,0,0,1,0],[0,0,1,0,0]]
let templateAposL = [[0,0,0,1,1,0],[0,0,0,1,1,0],[0,0,0,0,1,0],[0,0,0,1,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
let templateQues = [[0,1,1,0],[1,0,0,1],[0,0,1,0],[0,0,0,0],[0,0,1,0]]
let templateQuesM = [[0,1,1,0,0],[1,0,0,1,0],[0,0,1,0,0],[0,0,0,0,0],[0,0,1,0,0]]
let templateQuesL = [[0,0,1,1,0,0],[0,1,0,0,1,0],[0,0,0,1,0,0],[0,0,0,1,0,0],[0,0,0,0,0,0],[0,0,0,1,0,0]]
let templatePeri = [[0,0,0,0],[0,1,1,0],[0,1,1,0],[0,0,0,0],[0,0,0,0]]
let templatePeriM = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,1,1,0],[0,0,1,1,0]]
let templatePeriL = [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,1,1,1,0],[0,0,1,1,1,0],[0,0,1,1,1,0]]
let templateExcl = [[0,0,1,0],[0,0,1,0],[0,0,1,0],[0,0,0,0],[0,0,1,0]]
let templateExclM = [[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0],[0,0,0,0,0],[0,0,1,0,0]]
let templateExclL = [[0,0,0,1,0,0],[0,0,0,1,0,0],[0,0,0,1,0,0],[0,0,0,1,0,0],[0,0,0,0,0,0],[0,0,0,1,0,0]]
let templateHash = [[1,0,1,0],[1,1,1,1],[1,0,1,0],[1,1,1,1],[1,0,1,0]]
let templateHashM = [[0,1,0,1,0],[1,1,1,1,1],[0,1,0,1,0],[1,1,1,1,1],[0,1,0,1,0]]
let templateHashL = [[0,1,0,0,1,0],[1,1,1,1,1,1],[0,1,0,0,1,0],[0,1,0,0,1,0],[1,1,1,1,1,1],[0,1,0,0,1,0]]
let templateDash = [[0,0,0,0],[0,0,0,0],[1,1,1,1],[0,0,0,0],[0,0,0,0]]
let templateDashM = [[0,0,0,0,0],[0,0,0,0,0],[1,1,1,1,1],[0,0,0,0,0],[0,0,0,0,0]]
let templateDashL = [[0,0,0,0,0,0],[0,0,0,0,0,0],[1,1,1,1,1,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
let templateUnde = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[1,1,1,1]]
let templateUndeM = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[1,1,1,1,1]]
let templateUndeL = [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,1,1,1,1,0]]
let templateFSla = [[0,0,0,1],[0,0,1,0],[0,1,0,0],[1,0,0,0],[0,0,0,0]]
let templateFSlaM = [[0,0,0,0,1],[0,0,0,1,0],[0,0,1,0,0],[0,1,0,0,0],[1,0,0,0,0]]
let templateFSlaL = [[0,0,0,0,0,1],[0,0,0,0,1,0],[0,0,0,1,0,0],[0,0,1,0,0,0],[0,1,0,0,0,0],[1,0,0,0,0,0]]
let templateLine = [[0,0,1,0],[0,0,1,0],[0,0,1,0],[0,0,1,0],[0,0,1,0]]
let templateLineM = [[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0]]
let templateLineL = [[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0],[0,0,1,0,0,0]]
let templateDoll = [[0,1,1,1],[1,0,1,0],[0,1,1,0],[0,0,1,1],[1,1,1,0]]
let templateDollM = [[0,1,1,1,1],[1,0,1,0,0],[0,1,1,1,0],[0,0,1,0,1],[1,1,1,1,0]]
let templateDollL = [[0,1,1,1,1,0],[1,0,0,1,0,1],[0,1,1,1,0,0],[0,0,0,1,1,0],[1,0,0,1,0,1],[0,1,1,1,1,0]]
let templatesS = ["0":template0,"1":template1,"2":template2,"3":template3,"4":template4,"5":template5,"6":template6,"7":template7,"8":template8,"9":template9,"A":templateA,"B":templateB,"C":templateC,"D":templateD,"E":templateE,"F":templateF,"G":templateG,"H":templateH,"I":templateI,"J":templateJ,"K":templateK,"L":templateL,"M":templateM,"N":templateN,"O":templateO,"P":templateP,"Q":templateQ,"R":templateR,"S":templateS,"T":templateT,"U":templateU,"V":templateV,"W":templateW,"X":templateX,"Y":templateY,"Z":templateZ," ":templateSpac,"'":templateApos,"?":templateQues,".":templatePeri,"!":templateExcl,"#":templateHash,"-":templateDash,"_":templateUnde,"/":templateFSla,"|":templateLine,"$":templateDoll]
let templatesM = ["0":template0M,"1":template1M,"2":template2M,"3":template3M,"4":template4M,"5":template5M,"6":template6M,"7":template7M,"8":template8M,"9":template9M,"A":templateAM,"B":templateBM,"C":templateCM,"D":templateDM,"E":templateEM,"F":templateFM,"G":templateGM,"H":templateHM,"I":templateIM,"J":templateJM,"K":templateKM,"L":templateLM,"M":templateMM,"N":templateNM,"O":templateOM,"P":templatePM,"Q":templateQM,"R":templateRM,"S":templateSM,"T":templateTM,"U":templateUM,"V":templateVM,"W":templateWM,"X":templateXM,"Y":templateYM,"Z":templateZM," ":templateSpacM,"'":templateAposM,"?":templateQuesM,".":templatePeriM,"!":templateExclM,"#":templateHashM,"-":templateDashM,"_":templateUndeM,"/":templateFSlaM,"|":templateLineM,"$":templateDollM]
let templatesL = ["0":template0L,"1":template1L,"2":template2L,"3":template3L,"4":template4L,"5":template5L,"6":template6L,"7":template7L,"8":template8L,"9":template9L,"A":templateAL,"B":templateBL,"C":templateCL,"D":templateDL,"E":templateEL,"F":templateFL,"G":templateGL,"H":templateHL,"I":templateIL,"J":templateJL,"K":templateKL,"L":templateLL,"M":templateML,"N":templateNL,"O":templateOL,"P":templatePL,"Q":templateQL,"R":templateRL,"S":templateSL,"T":templateTL,"U":templateUL,"V":templateVL,"W":templateWL,"X":templateXL,"Y":templateYL,"Z":templateZL," ":templateSpacL,"'":templateAposL,"?":templateQuesL,".":templatePeriL,"!":templateExclL,"#":templateHashL,"-":templateDashL,"_":templateUndeL,"/":templateFSlaL,"|":templateLineL,"$":templateDollL]
class ViewController: UIViewController {
    var currentValue = ""
    @IBOutlet weak var outputBox: UITextView!
    //@IBOutlet weak var lettersPerLineLabel: UILabel!
    //@IBOutlet weak var lettersSizeLabel: UILabel!
    @IBOutlet weak var labelS: UILabel!
    @IBOutlet weak var labelM: UILabel!
    @IBOutlet weak var labelL: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var iphone5: UILabel!
    @IBOutlet weak var iphone6: UILabel!
    @IBOutlet weak var iphone6plus: UILabel!
    @IBOutlet weak var backgroundClear: UITextField!
    @IBOutlet weak var letteringClear: UITextField!
    @IBOutlet weak var templateClear: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var clearButtonBlueImage: UIImageView!
    @IBOutlet weak var copyButtonBackground: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        renderMessage()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        
        //LightContent
        //return UIStatusBarStyle.LightContent
        
        //Default
        return UIStatusBarStyle.Default
        
    }
    @IBAction func helpMenu() {
        outputBox.text = "This will be a help/settings menu in the near future."
    }
    @IBAction func copyMessage() {
        UIPasteboard.generalPasteboard().string = finalOutput
    }
    @IBAction func copyButtonBlue() {
        copyButtonBackground.backgroundColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
    }
    @IBAction func copyButtonGrey() {
        copyButtonBackground.backgroundColor = UIColor(red: 0.666, green: 0.666, blue: 0.666, alpha: 1.0)
    }
    @IBAction func clearButtonBlue() {
        clearButton.hidden = true
    }
    @IBAction func clearButtonGrey() {
        clearButton.hidden = false
    }
    @IBAction func clearEverything() {
        backgroundValue = ""
        letteringValue = ""
        wordToMake = ""
        finalOutput = ""
        outputBox.text = ""
        backgroundClear.text = ""
        letteringClear.text = ""
        templateClear.text = ""
        renderMessage()
        clearButton.hidden = true
        clearButtonBlueImage.hidden = true
    }
    @IBAction func getBackgroundValue (textBox: UITextField) {
        let maxLength = 1
        if (textBox.text!.characters.count > maxLength) {
            textBox.deleteBackward()
        }
        backgroundValue = textBox.text!
        renderMessage()
    }
    @IBAction func getLetteringValue (textBox: UITextField){
        let maxLength = 1
        if (textBox.text!.characters.count > maxLength) {
            textBox.deleteBackward()
        }
        letteringValue = textBox.text!
        renderMessage()
    }
    @IBAction func getLettersPerLine (slider: UISlider){
        let lettersPerLineNew = Int(round(slider.value))
        if (lettersPerLineNew != lettersPerLine){
            lettersPerLine = lettersPerLineNew
            switch lettersPerLine {
            case 1:
                label1.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
                label2.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                label3.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
            case 2:
                label2.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
                label1.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                label3.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
            case 3:
                label3.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
                label1.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                label2.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
            default:
                label1.text = ("Error in switch case!")
            }
            renderMessage()
        }
    }
    @IBAction func getSizeOfLetters (slider: UISlider){
        let lettersSizeNew = Int(round(slider.value))
        if (lettersSizeNew != lettersSize){
            lettersSize = lettersSizeNew
            switch lettersSize {
                case 1:
                    labelS.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
                    labelM.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                    labelL.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                case 2:
                    labelM.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
                    labelS.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                    labelL.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                case 3:
                    labelL.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
                    labelS.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                    labelM.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
                default:
                    labelS.text = ("Error in switch case!")
            }
            renderMessage()
        }
    }
    @IBAction func getTemplateValue (textBox: UITextField) {
        let maxLength = 18
        if (textBox.text!.characters.count > maxLength) {
            textBox.deleteBackward()
        }
        wordToMake = textBox.text!.uppercaseString
        var wordLength = 0
        if wordToMake.characters.count != 0 {
            wordLength = wordToMake.characters.count - 1
            var wordIsOkay = true
            for indivLetter in 0...wordLength {
                let index = wordToMake.startIndex.advancedBy(indivLetter)
                let letterToMake = String(wordToMake[index])
                if let _ = templatesS[letterToMake] {
                } else {
                    wordIsOkay = false
                    break
                }
            }
            if wordIsOkay {
                renderMessage()
            }
            else {
                alertMessage()
            }
        } else {
            finalOutput = ""
            outputBox.text = finalOutput
            renderMessage()
        }
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }
    func alertMessage(){
        finalOutput = "Character(s) you entered are \r\n not currently supported. Sorry :)"
        outputBox.text = finalOutput
    }
    func determineFunctionality(){
        if (lineLength > 8){
            iphone5.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        } else {
            iphone5.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
        }
        if (lineLength > 11){
            iphone6.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        } else {
            iphone6.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
        }
        if (lineLength > 13){
            iphone6plus.textColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        } else {
            iphone6plus.textColor = UIColor(red: 0.055, green: 0.478, blue: 1, alpha: 1.0)
        }
    }
    func renderMessage(){
        finalOutput = ""
        if (wordToMake != ""){
            clearButton.hidden = false
            clearButtonBlueImage.hidden = false
            let wordLength = wordToMake.characters.count - 1
                //
                //
                // 1 Letter Per Line
                //
                //
            if (lettersPerLine == 1){
                if (lettersSize == 1){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    //add top border ^^
                    for indivLetter in 0...wordLength { //for each letter in the word...
                        let index = wordToMake.startIndex.advancedBy(indivLetter) //figure out where the letter is in the word...
                        let letterToMake = String(wordToMake[index]) //and then figure out what letter to make
                        for eachLine in 0...4 { //for each line in the letter...
                            finalOutput += "\(backgroundValue)" //add left border
                            for eachDot in 0...3 { //for each dot in the line
                                if (Int(templatesS[letterToMake]![eachLine][eachDot]) == 1) { //check the letter template for directions
                                    finalOutput += "\(letteringValue)" //if it's a 1, add a letter value
                                } else{
                                    finalOutput += "\(backgroundValue)" //if it's a 0, add a background value
                                }
                            }
                            finalOutput += "\(backgroundValue)" //add right border
                            finalOutput += "\r\n" //indent and make a new line
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        //add bottom border ^^
                        outputBox.text = finalOutput //push it to the output box
                        outputBox.alwaysBounceHorizontal = false
                        lineLength = 6
                    }
                } else if (lettersSize == 2){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for indivLetter in 0...wordLength {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let letterToMake = String(wordToMake[index])
                        for eachLine in 0...4 {
                            finalOutput += "\(backgroundValue)"
                            for eachLetter in 0...4 {
                                if (Int(templatesM[letterToMake]![eachLine][eachLetter]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        outputBox.text = finalOutput
                        outputBox.alwaysBounceHorizontal = false
                        lineLength = 7
                    }
                } else if (lettersSize == 3) {
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for indivLetter in 0...wordLength {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let letterToMake = String(wordToMake[index])
                        for eachLine in 0...5 {
                            finalOutput += "\(backgroundValue)"
                            for eachLetter in 0...5 {
                                if (Int(templatesL[letterToMake]![eachLine][eachLetter]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        outputBox.text = finalOutput
                        outputBox.alwaysBounceHorizontal = false
                        lineLength = 8
                    }
                }
            }
                //
                //
                // 2 Letters Per Line
                //
                //
            else if (lettersPerLine == 2){
                var divWordLength = wordLength
                var isOdd = false
                if ((wordLength % 2) == 1) {
                    print ("is even")
                } else {
                    divWordLength = (wordLength - 1)
                    isOdd = true
                }
                if (lettersSize == 1){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for var indivLetter = 0; indivLetter <= divWordLength; indivLetter += 2 {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let index2 = wordToMake.startIndex.advancedBy(indivLetter + 1)
                        let letterToMake = String(wordToMake[index])
                        let letterToMake2 = String(wordToMake[index2])
                        for eachLine in 0...4 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...3 {
                                if (Int(templatesS[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...3{
                                if (Int(templatesS[letterToMake2]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    if (isOdd == true){
                        let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                        let letterToMake = String(wordToMake[index])
                        for eachLine in 0...4 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...3 {
                                if (Int(templatesS[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    outputBox.text = finalOutput
                    outputBox.alwaysBounceHorizontal = false
                    lineLength = 10
                } else if (lettersSize == 2){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for var indivLetter = 0; indivLetter <= divWordLength; indivLetter += 2 {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let index2 = wordToMake.startIndex.advancedBy(indivLetter + 1)
                        let letterToMake = String(wordToMake[index])
                        let letterToMake2 = String(wordToMake[index2])
                        for eachLine in 0...4 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...4 {
                                if (Int(templatesM[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...4{
                                if (Int(templatesM[letterToMake2]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    if (isOdd == true){
                        let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                        let letterToMake = String(wordToMake[index])
                        for eachLine in 0...4 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...4 {
                                if (Int(templatesM[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    outputBox.text = finalOutput
                    outputBox.alwaysBounceHorizontal = false
                    lineLength = 12
                } else if (lettersSize == 3){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for var indivLetter = 0; indivLetter <= divWordLength; indivLetter += 2 {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let index2 = wordToMake.startIndex.advancedBy(indivLetter + 1)
                        let letterToMake = String(wordToMake[index])
                        let letterToMake2 = String(wordToMake[index2])
                        for eachLine in 0...5 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...5 {
                                if (Int(templatesL[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...5{
                                if (Int(templatesL[letterToMake2]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    if (isOdd == true){
                        let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                        let letterToMake = String(wordToMake[index])
                        for eachLine in 0...5 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...5 {
                                if (Int(templatesL[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    outputBox.text = finalOutput
                    outputBox.alwaysBounceHorizontal = false
                    lineLength = 14
                }
                //
                //
                // 3 Letters Per Line
                //
                //
            } else if (lettersPerLine == 3){
                var divWordLength = wordLength
                let workingWordLength = wordLength + 1
                var isMultOfThree = false
                var numExtras = 0
                if ((workingWordLength % 3) == 0) {
                    isMultOfThree = true
                    divWordLength = (workingWordLength - 1)
                } else if ((workingWordLength % 3) == 1){
                    isMultOfThree = false
                    numExtras = 1
                    divWordLength = (workingWordLength - 2)
                } else {
                    isMultOfThree = false
                    numExtras = 2
                    divWordLength = (workingWordLength - 3)
                }
                if (lettersSize == 1){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for var indivLetter = 0; indivLetter <= divWordLength; indivLetter += 3 {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let index2 = wordToMake.startIndex.advancedBy(indivLetter + 1)
                        let index3 = wordToMake.startIndex.advancedBy(indivLetter + 2)
                        let letterToMake = String(wordToMake[index])
                        let letterToMake2 = String(wordToMake[index2])
                        let letterToMake3 = String(wordToMake[index3])
                        for eachLine in 0...4 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...3 {
                                if (Int(templatesS[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...3{
                                if (Int(templatesS[letterToMake2]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...3{
                                if (Int(templatesS[letterToMake3]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    if (isMultOfThree == false){
                        if (numExtras == 1){
                            let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                            let letterToMake = String(wordToMake[index])
                            for eachLine in 0...4 {
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...3 {
                                    if (Int(templatesS[letterToMake]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        } else if (numExtras == 2){
                            let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                            let index2 = wordToMake.startIndex.advancedBy(divWordLength + 2)
                            let letterToMake = String(wordToMake[index])
                            let letterToMake2 = String(wordToMake[index2])
                            for eachLine in 0...4 {
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...3 {
                                    if (Int(templatesS[letterToMake]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...3 {
                                    if (Int(templatesS[letterToMake2]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        }
                    }
                    outputBox.text = finalOutput
                    outputBox.alwaysBounceHorizontal = true
                    lineLength = 16
                } else if (lettersSize == 2){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for var indivLetter = 0; indivLetter <= divWordLength; indivLetter += 3 {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let index2 = wordToMake.startIndex.advancedBy(indivLetter + 1)
                        let index3 = wordToMake.startIndex.advancedBy(indivLetter + 2)
                        let letterToMake = String(wordToMake[index])
                        let letterToMake2 = String(wordToMake[index2])
                        let letterToMake3 = String(wordToMake[index3])
                        for eachLine in 0...4 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...4 {
                                if (Int(templatesM[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...4{
                                if (Int(templatesM[letterToMake2]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...4{
                                if (Int(templatesM[letterToMake3]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    if (isMultOfThree == false){
                        if (numExtras == 1){
                            let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                            let letterToMake = String(wordToMake[index])
                            for eachLine in 0...4 {
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...4 {
                                    if (Int(templatesM[letterToMake]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        } else if (numExtras == 2){
                            let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                            let index2 = wordToMake.startIndex.advancedBy(divWordLength + 2)
                            let letterToMake = String(wordToMake[index])
                            let letterToMake2 = String(wordToMake[index2])
                            for eachLine in 0...4 {
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...4 {
                                    if (Int(templatesM[letterToMake]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...4 {
                                    if (Int(templatesM[letterToMake2]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        }
                    }
                    outputBox.text = finalOutput
                    outputBox.alwaysBounceHorizontal = true
                    lineLength = 19
                } else if (lettersSize == 3){
                    finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    for var indivLetter = 0; indivLetter <= divWordLength; indivLetter += 3 {
                        let index = wordToMake.startIndex.advancedBy(indivLetter)
                        let index2 = wordToMake.startIndex.advancedBy(indivLetter + 1)
                        let index3 = wordToMake.startIndex.advancedBy(indivLetter + 2)
                        let letterToMake = String(wordToMake[index])
                        let letterToMake2 = String(wordToMake[index2])
                        let letterToMake3 = String(wordToMake[index3])
                        for eachLine in 0...5 {
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...5 {
                                if (Int(templatesL[letterToMake]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...5{
                                if (Int(templatesL[letterToMake2]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            for eachDot in 0...5{
                                if (Int(templatesL[letterToMake3]![eachLine][eachDot]) == 1) {
                                    finalOutput += "\(letteringValue)"
                                } else{
                                    finalOutput += "\(backgroundValue)"
                                }
                            }
                            finalOutput += "\(backgroundValue)"
                            finalOutput += "\r\n"
                        }
                        finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                    }
                    if (isMultOfThree == false){
                        if (numExtras == 1){
                            let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                            let letterToMake = String(wordToMake[index])
                            for eachLine in 0...5 {
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...5 {
                                    if (Int(templatesL[letterToMake]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        } else if (numExtras == 2){
                            let index = wordToMake.startIndex.advancedBy(divWordLength + 1)
                            let index2 = wordToMake.startIndex.advancedBy(divWordLength + 2)
                            let letterToMake = String(wordToMake[index])
                            let letterToMake2 = String(wordToMake[index2])
                            for eachLine in 0...5 {
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...5 {
                                    if (Int(templatesL[letterToMake]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue)"
                                for eachDot in 0...5 {
                                    if (Int(templatesL[letterToMake2]![eachLine][eachDot]) == 1) {
                                        finalOutput += "\(letteringValue)"
                                    } else{
                                        finalOutput += "\(backgroundValue)"
                                    }
                                }
                                finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                            }
                            finalOutput += "\(backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue + backgroundValue)\r\n"
                        }
                    }
                    outputBox.text = finalOutput
                    outputBox.alwaysBounceHorizontal = true
                    lineLength = 22
                }
            }
        } else {
            clearButton.hidden = true
            clearButtonBlueImage.hidden = true
        }
        if (letteringValue == ""){
            if (backgroundValue == ""){
                clearButton.hidden = true
                clearButtonBlueImage.hidden = true
            }
        }
        if (backgroundValue == ""){
            if (letteringValue == ""){
                clearButton.hidden = true
                clearButtonBlueImage.hidden = true
            }
        }
        determineFunctionality()
    }
}