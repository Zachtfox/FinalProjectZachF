import Foundation

/*
var BackgroundInfo = ["Acolyte":"You have spent your life in the service of a temple to a specific god or pantheon of gods. You act as an intermediary between the realm of the holy and the mortal world, performing sacred rites and offering sacrifices in order to conduct worshipers into the presence of the divine. You are not necessarily a cleric—performing sacred rites is not the same thing as channeling divine power. Choose a god, a pantheon of gods, or some other quasi-divine being, and work with your DM to detail the nature of your religious service. The Gods of the Multiverse section contains a sample pantheon, from the Forgotten Realms setting. Were you a lesser functionary in a temple, raised from childhood to assist the priests in the sacred rites? Or were you a high priest who suddenly experienced a call to serve your god in a different way? Perhaps you were the leader of a small cult outside of any established temple structure, or even an occult group that served a fiendish master that you now deny. ", "Charlatan":"Blah Blah Blah", "Criminal":"Okay",  "Entertainer":"yep", "Folk Hero":"More info here", "Guild Artisan":"So much typing", "Hermit":"I wish"]
enum BackgroundOption {
    case Acolyte, Charlatan, Criminal, Entertainer, Folk Hero, Guild Artisan, Hermit 
}

enum ClassOption {
    case Barbarian, Bard, Cleric, Druid, Fighter, Monk, Paladin, Ranger, Rogue, Sorcerer, Warlock, Wizard
}

make a function that detirmnines the proficiencies a character would have based on race, class, and background. Set proficienties to true or flase based on these functions

could create a "level up" function that would allow the user to recalculate their scores and mods when they level up.


*/

var strength = 20
var dexterity = 18
var constitution = 17
var intelligence = 16
var wisdom = 14
var charisma = 20

var ProBonus = 3

var StrengthMod = 0
var DexterityMod = 0
var ConstitutionMod = 0
var WisdomMod = 0 
var IntelligenceMod = 0
var CharismaMod = 0

let StrengthSaving = false
let DexteritySaving = false
let ConstitutionSaving = true
let WisdomSaving = false
let IntelligenceSaving = false
let CharismaSaving = true

var StrengthSavingThrow = 0
var DexteritySavingThrow = 0
var ConstitutionSavingThrow = 0
var IntelligenceSavingThrow = 0
var WisdomSavingThrow = 0
var CharismaSavingThrow = 0

    var acrobatics = 0
    var acrobaticsPro = true

    var AnimalHandlingPro = false
    var AnimalHandling = 0

    var arcana = 0
    var ArcanaPro = true

    var athletics = 0
    var athleticsPro = false

    var deception = 0
    var DeceptionPro = true

    var history = 0
    var HistoryPro = false

    var insight = 0
    var InsightPro = false

    var intimidation = 0
    var IntimidationPro = true

    var investigation = 0
    var InvestigationPro = false

    var medicine = 0
    var MedicinePro = false

    var nature = 0
    var NaturePro = false

    var perception = 0
    var PerceptionPro = false

    var performance = 0
    var PerformancePro = false

    var persuasion = 0
    var PersuasionPro = true

    var religion = 0
    var ReligionPro = false

    var sleight = 0
    var SleightPro = false

    var stealth = 0
    var StealthPro = false

    var survival = 0
    var SurvivalPro = true

    let ClassType = "Sorcerer"
    let name = "Daenerys Stormborn"
    let background = "Noble"
    let alignment = "Lawful Good"

    enum RaceOption {
        case Human, Elf, Dwarf, Halfling
    }

    var Race = RaceOption.Human

// initialize variables and get user input to continue

func CalcStrenghtModifier(strength: Int) -> Int{
    if strength == 1{
        StrengthMod = -5
    }
     if strength == 2{
        StrengthMod = -4
    }
     if strength == 3{
        StrengthMod = -4
    }
     if strength == 4{
        StrengthMod = -3
    }
     if strength == 5{
        StrengthMod = -3
    }
     if strength == 6{
        StrengthMod = -2
    }
     if strength == 7{
        StrengthMod = -2
    }
     if strength == 8{
        StrengthMod = -1
    }
     if strength == 9{
        StrengthMod = -1
    }
     if strength == 10{
        StrengthMod = 0
    }
     if strength == 11{
        StrengthMod = 0
    }
     if strength == 12{
        StrengthMod = 1
    }
     if strength == 13{
        StrengthMod = 1
    }
     if strength == 14{
        StrengthMod = 2
    }
     if strength == 15{
        StrengthMod = 2
    }
     if strength == 16{
        StrengthMod = 3
    }
     if strength == 17{
        StrengthMod = 3
    }
     if strength == 18{
        StrengthMod = 4
    }
     if strength == 19{
        StrengthMod = 4
    }
     if strength == 20{
        StrengthMod = 5
    }

    return StrengthMod
    
}

func CalcDexterityModifier(dexterity: Int) -> Int{
    if dexterity == 1{
        DexterityMod = -5
    }
     if dexterity == 2{
        DexterityMod = -4
    }
     if dexterity == 3{
        DexterityMod = -4
    }
     if dexterity == 4{
        DexterityMod = -3
    }
     if dexterity == 5{
        DexterityMod = -3
    }
     if dexterity == 6{
        DexterityMod = -2
    }
     if dexterity == 7{
        DexterityMod = -2
    }
     if dexterity == 8{
        DexterityMod = -1
    }
     if dexterity == 9{
        DexterityMod = -1
    }
     if dexterity == 10{
        DexterityMod = 0
    }
     if dexterity == 11{
        DexterityMod = 0
    }
     if dexterity == 12{
        DexterityMod = 1
    }
     if dexterity == 13{
        DexterityMod = 1
    }
     if dexterity == 14{
        DexterityMod = 2
    }
     if dexterity == 15{
        DexterityMod = 2
    }
     if dexterity == 16{
        DexterityMod = 3
    }
     if dexterity == 17{
        DexterityMod = 3
    }
     if dexterity == 18{
        DexterityMod = 4
    }
     if dexterity == 19{
        DexterityMod = 4
    }
     if dexterity == 20{
        DexterityMod = 5
    }

    return DexterityMod
}

func CalcConstitutionModifier(constitution: Int) -> Int{
    if  constitution == 1{
        ConstitutionMod = -5
    }
     if constitution == 2{
        ConstitutionMod = -4
    }
     if constitution == 3{
        ConstitutionMod = -4
    }
     if constitution == 4{
        ConstitutionMod = -3
    }
     if constitution == 5{
        ConstitutionMod = -3
    }
     if constitution == 6{
        ConstitutionMod = -2
    }
     if constitution == 7{
        ConstitutionMod = -2
    }
     if constitution == 8{
        ConstitutionMod = -1
    }
     if constitution == 9{
        ConstitutionMod = -1
    }
     if constitution == 10{
        ConstitutionMod = 0
    }
     if constitution == 11{
        ConstitutionMod = 0
    }
     if constitution == 12{
        ConstitutionMod = 1
    }
     if constitution == 13{
        ConstitutionMod = 1
    }
     if constitution == 14{
        ConstitutionMod = 2
    }
     if constitution == 15{
        ConstitutionMod = 2
    }
     if constitution == 16{
        ConstitutionMod = 3
    }
     if constitution == 17{
        ConstitutionMod = 3
    }
     if constitution == 18{
        ConstitutionMod = 4
    }
     if constitution == 19{
        ConstitutionMod = 4
    }
     if constitution == 20{
        ConstitutionMod = 5
    }

    return ConstitutionMod
}

func CalcWisdomModifier(wisdom: Int) -> Int{
    if  wisdom == 1{
        WisdomMod = -5
    }
     if wisdom == 2{
        WisdomMod = -4
    }
     if wisdom == 3{
        WisdomMod = -4
    }
     if wisdom == 4{
        WisdomMod = -3
    }
     if wisdom == 5{
        WisdomMod = -3
    }
     if wisdom == 6{
        WisdomMod = -2
    }
     if wisdom == 7{
        WisdomMod = -2
    }
     if wisdom == 8{
        WisdomMod = -1
    }
     if wisdom == 9{
        WisdomMod = -1
    }
     if wisdom == 10{
        WisdomMod = 0
    }
     if wisdom == 11{
        WisdomMod = 0
    }
     if wisdom == 12{
        WisdomMod = 1
    }
     if wisdom == 13{
        WisdomMod = 1
    }
     if wisdom == 14{
        WisdomMod = 2
    }
     if wisdom == 15{
        WisdomMod = 2
    }
     if wisdom == 16{
        WisdomMod = 3
    }
     if wisdom == 17{
        WisdomMod = 3
    }
     if wisdom == 18{
        WisdomMod = 4
    }
     if wisdom == 19{
        WisdomMod = 4
    }
     if wisdom == 20{
        WisdomMod = 5
    }

    return WisdomMod
}

func CalcIntelligenceModifier(intelligence: Int) -> Int{
    if  intelligence == 1{
        IntelligenceMod = -5
    }
     if intelligence == 2{
        IntelligenceMod = -4
    }
     if intelligence == 3{
        IntelligenceMod = -4
    }
     if intelligence == 4{
        IntelligenceMod = -3
    }
     if intelligence == 5{
        IntelligenceMod = -3
    }
     if intelligence == 6{
        IntelligenceMod = -2
    }
     if intelligence == 7{
        IntelligenceMod = -2
    }
     if intelligence == 8{
        IntelligenceMod = -1
    }
     if intelligence == 9{
        IntelligenceMod = -1
    }
     if intelligence == 10{
        IntelligenceMod = 0
    }
     if intelligence == 11{
        IntelligenceMod = 0
    }
     if intelligence == 12{
        IntelligenceMod = 1
    }
     if intelligence == 13{
        IntelligenceMod = 1
    }
     if intelligence == 14{
        IntelligenceMod = 2
    }
     if intelligence == 15{
        IntelligenceMod = 2
    }
     if intelligence == 16{
        IntelligenceMod = 3
    }
     if intelligence == 17{
        IntelligenceMod = 3
    }
     if intelligence == 18{
        IntelligenceMod = 4
    }
     if intelligence == 19{
        IntelligenceMod = 4
    }
     if intelligence == 20{
        IntelligenceMod = 5
    }

    return IntelligenceMod
}

func CalcCharismaModifier(charisma: Int) -> Int{
    if  charisma == 1{
        CharismaMod = -5
    }
     if charisma == 2{
        CharismaMod = -4
    }
     if charisma == 3{
        CharismaMod = -4
    }
     if charisma == 4{
        CharismaMod = -3
    }
     if charisma == 5{
        CharismaMod = -3
    }
     if charisma == 6{
        CharismaMod = -2
    }
     if charisma == 7{
        CharismaMod = -2
    }
     if charisma == 8{
        CharismaMod = -1
    }
     if charisma == 9{
        CharismaMod = -1
    }
     if charisma == 10{
        CharismaMod = 0
    }
     if charisma == 11{
        CharismaMod = 0
    }
     if charisma == 12{
        CharismaMod = 1
    }
     if charisma == 13{
        CharismaMod = 1
    }
     if charisma == 14{
        CharismaMod = 2
    }
     if charisma == 15{
        CharismaMod = 2
    }
     if charisma == 16{
        CharismaMod = 3
    }
     if charisma == 17{
        CharismaMod = 3
    }
     if charisma == 18{
        CharismaMod = 4
    }
     if charisma == 19{
        CharismaMod = 4
    }
     if charisma == 20{
        CharismaMod = 5
    }

    return CharismaMod
}

CalcStrenghtModifier(strength: strength)
CalcDexterityModifier(dexterity: dexterity)
CalcConstitutionModifier(constitution: constitution)
CalcWisdomModifier(wisdom: wisdom)
CalcIntelligenceModifier(intelligence: intelligence)
CalcCharismaModifier(charisma: charisma)

func CalcStrengthSavingThrow(StrengthMod: Int, ProBonus: Int, StrengthSaving: Bool) -> Int{
if StrengthSaving == true{
    StrengthSavingThrow = StrengthMod + ProBonus
}
if StrengthSaving == false{
    StrengthSavingThrow = StrengthMod
}
return StrengthSavingThrow
}

func CalcDexteritySavingThrow(DexterityMod: Int, ProBonus: Int, DexteritySaving: Bool)-> Int{
    if DexteritySaving == true{
        DexteritySavingThrow = DexterityMod + ProBonus
    }
    if DexteritySaving == false{
        DexteritySavingThrow = DexterityMod
    }
    return DexteritySavingThrow
}
func CalcConstitutionSavingThrow(ConstitutionMod: Int, ProBonus: Int, ConstitutionSaving: Bool)-> Int{
    if ConstitutionSaving == true{
        ConstitutionSavingThrow = ConstitutionMod + ProBonus
    }
    if ConstitutionSaving == false{
        ConstitutionSavingThrow = ConstitutionMod
    }
    return ConstitutionSavingThrow
}

func CalcIntelligenceSavingThrow(IntelligenceMod: Int, ProBonus: Int, IntelligenceSaving: Bool)-> Int{
    if IntelligenceSaving == true{
        IntelligenceSavingThrow = IntelligenceMod + ProBonus
    }
    if DexteritySaving == false{
        IntelligenceSavingThrow = IntelligenceMod
    }
    return IntelligenceSavingThrow
}

func CalcWisdomSavingThrow(WisdomMod: Int, ProBonus: Int, WisdomSaving: Bool)-> Int{
    if WisdomSaving == true{
        WisdomSavingThrow = WisdomMod + ProBonus
    }
    if WisdomSaving == false{
        WisdomSavingThrow = WisdomMod
    }
    return WisdomSavingThrow
}

func CalcCharismaSavingThrow(CharismaMod: Int, ProBonus: Int, CharismaSaving: Bool)-> Int{
    if CharismaSaving == true{
        CharismaSavingThrow = CharismaMod + ProBonus
    }
    if CharismaSaving == false{
        CharismaSavingThrow = CharismaMod
    }
    return CharismaSavingThrow
}

func CalcSkills(StrengthMod: Int, DexterityMod: Int, ConstitutionMod: Int, IntelligenceMod: Int, WisdomMod: Int, CharismaMod:Int, ProBonus: Int) -> (Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int){



    if acrobaticsPro == true{
        acrobatics = DexterityMod + ProBonus
    }
    if acrobaticsPro == false{
        acrobatics = DexterityMod
    }
    if AnimalHandlingPro == true{
        AnimalHandling = WisdomMod + ProBonus
    }
    if AnimalHandlingPro == false{
        AnimalHandling = WisdomMod
    }
    if ArcanaPro == true{
        arcana = IntelligenceMod + ProBonus
    }
    if ArcanaPro == false{
        arcana = IntelligenceMod
    }
    if athleticsPro == true{
        athletics = StrengthMod + ProBonus
    }
    if athleticsPro == false{
        athletics = StrengthMod
    }
    if DeceptionPro == true{
        deception = CharismaMod + ProBonus
    }
    if DeceptionPro == false{
        deception = CharismaMod
    }
    if HistoryPro == true{
        history = IntelligenceMod + ProBonus
    }
    if HistoryPro == false{
        history = IntelligenceMod
    }
    if InsightPro == true{
        insight = WisdomMod + ProBonus
    }
    if InsightPro == false{
        insight = WisdomMod
    }
    if IntimidationPro == true{
        intimidation = CharismaMod + ProBonus
    }
    if IntimidationPro == false{
        intimidation = CharismaMod
    }
    if InvestigationPro == true{
        investigation = IntelligenceMod + ProBonus
    }
    if InvestigationPro == false{
        investigation = IntelligenceMod
    }
    if MedicinePro == true{
        medicine = WisdomMod + ProBonus
    }
    if MedicinePro == false{
        medicine = WisdomMod
    }
    if NaturePro == true{
        nature = IntelligenceMod + ProBonus
    }
    if NaturePro == false{
        nature = IntelligenceMod
    }
    if PerceptionPro == true{
        perception = WisdomMod
    }
    if PerceptionPro == false{
        perception = WisdomMod
    }
    if PerformancePro == true{
        performance = CharismaMod + ProBonus
    }
    if PerformancePro == false{
        performance = CharismaMod
    }
    if PersuasionPro == true{
        persuasion = CharismaMod + ProBonus
    }
    if PersuasionPro == false{
        persuasion = CharismaMod
    }
    if ReligionPro == true{
        religion = IntelligenceMod + ProBonus
    }
    if ReligionPro == false{
        religion = IntelligenceMod
    }
    if SleightPro == true{
    sleight = DexterityMod + ProBonus
    }
    if SleightPro == false{
        sleight = DexterityMod
    }
    if StealthPro == true{
        stealth = DexterityMod + ProBonus
    }
    if StealthPro == false{
        stealth = DexterityMod
    }
    if SurvivalPro == true{
        survival = WisdomMod + ProBonus
    }
    if SurvivalPro == false{
        survival = WisdomMod
    }

    return (acrobatics, AnimalHandling, arcana, athletics, deception, history, insight, intimidation, investigation, medicine, nature, perception, performance, persuasion, religion, sleight, stealth, survival)


}

CalcStrengthSavingThrow(StrengthMod: StrengthMod, ProBonus: ProBonus, StrengthSaving: StrengthSaving)
CalcDexteritySavingThrow(DexterityMod: DexterityMod, ProBonus: ProBonus, DexteritySaving: DexteritySaving)
CalcConstitutionSavingThrow(ConstitutionMod: ConstitutionMod, ProBonus: ProBonus, ConstitutionSaving: ConstitutionSaving)
CalcIntelligenceSavingThrow(IntelligenceMod: IntelligenceMod, ProBonus: ProBonus, IntelligenceSaving: IntelligenceSaving)
CalcWisdomSavingThrow(WisdomMod: WisdomMod, ProBonus: ProBonus, WisdomSaving: WisdomSaving)
CalcCharismaSavingThrow(CharismaMod: CharismaMod, ProBonus: ProBonus, CharismaSaving: CharismaSaving)

CalcSkills(StrengthMod: StrengthMod, DexterityMod: DexterityMod, ConstitutionMod: ConstitutionMod, IntelligenceMod: IntelligenceMod, WisdomMod: WisdomMod, CharismaMod: CharismaMod, ProBonus: ProBonus)

class Character {
    static var level = 1

    var CharacterName: String 
    var CharacterClassType: String
    var CharacterBackground: String
    var CharacterAlignment: String

    // ability scores

    var CharacterStregthScore: Int
    var CharacterDexterityScore: Int
    var CharacterConstitutionScore: Int
    var CharacterIntelligenceScore: Int
    var CharacterWisdomScore: Int
    var CharacterCharismaScore: Int

    // ability modifiers

    var CharacterStrengthMod: Int
    var CharacterConstitutionMod: Int
    var CharacterDexterityMod: Int
    var CharacterIntelligenceMod: Int
    var CharacterWisdomMod: Int
    var CharacterCharismaMod: Int

    // saving throws

    var CharacterStrengthSavingThrow: Int
    var CharacterDexteritySavingThrow: Int
    var CharacterConstitutionSavingThrow: Int
    var CharacterIntelligenceSavingThrow: Int
    var CharacterWisdomSavingThrow: Int
    var CharacterCharismaSavingThrow: Int

    // ability

    var CharacterAcrobatics: Int
    var CharacterAnimalHandling: Int
    var CharacterArcana: Int
    var CharacterAthletics: Int
    var CharacterDeception: Int
    var CharacterHistory: Int
    var CharacterInsight: Int
    var CharacterIntimidation: Int
    var CharacterInvestigation: Int
    var CharacterMedicine: Int
    var CharacterNature: Int
    var CharacterPerception: Int
    var CharacterPerformance: Int
    var CharacterPersuasion: Int
    var CharacterReligion: Int
    var CharacterSleight: Int
    var CharacterStealth: Int
    var CharacterSurvival: Int


    init(CharacterName: String, CharacterClassType: String, CharacterBackground: String, CharacterAlignment: String, CharacterStregthScore: Int, CharacterDexterityScore: Int, CharacterConstitutionScore: Int, CharacterIntelligenceScore: Int, CharacterWisdomScore: Int, CharacterCharismaScore: Int, CharacterStrengthMod: Int, CharacterDexterityMod: Int, CharacterConstitutionMod: Int, CharacterIntelligenceMod: Int, CharacterWisdomMod: Int, CharacterCharismaMod: Int, CharacterStrengthSavingThrow: Int, CharacterDexteritySavingThrow: Int, CharacterConstitutionSavingThrow: Int, CharacterIntelligenceSavingThrow: Int, CharacterWisdomSavingThrow: Int, CharacterCharismaSavingThrow: Int, CharacterAcrobatics: Int, CharacterAnimalHandling: Int, CharacterArcana: Int, CharacterAthletics: Int, CharacterDeception: Int, CharacterHistory: Int, CharacterInsight: Int, CharacterIntimidation: Int, CharacterInvestigation: Int, CharacterMedicine: Int, CharacterNature: Int, CharacterPerception: Int, CharacterPerformance: Int, CharacterPersuasion: Int, CharacterReligion: Int, CharacterSleight: Int, CharacterStealth: Int, CharacterSurvival: Int){
        self.CharacterName = CharacterName
        self.CharacterClassType = CharacterClassType
        self.CharacterBackground = CharacterBackground
        self.CharacterAlignment = CharacterAlignment

        self.CharacterStregthScore = CharacterStregthScore
        self.CharacterDexterityScore = CharacterDexterityScore
        self.CharacterConstitutionScore = CharacterConstitutionScore
        self.CharacterIntelligenceScore = CharacterIntelligenceScore
        self.CharacterWisdomScore = CharacterWisdomScore
        self.CharacterCharismaScore = CharacterCharismaScore

        self.CharacterStrengthMod = CharacterStrengthMod
        self.CharacterConstitutionMod = CharacterConstitutionMod
        self.CharacterDexterityMod = CharacterDexterityMod
        self.CharacterIntelligenceMod = CharacterIntelligenceMod
        self.CharacterWisdomMod = CharacterWisdomMod
        self.CharacterCharismaMod = CharacterCharismaMod

        self.CharacterStrengthSavingThrow = CharacterStrengthSavingThrow
        self.CharacterDexteritySavingThrow = CharacterDexteritySavingThrow
        self.CharacterConstitutionSavingThrow = CharacterConstitutionSavingThrow
        self.CharacterIntelligenceSavingThrow = CharacterIntelligenceSavingThrow
        self.CharacterWisdomSavingThrow = CharacterWisdomSavingThrow
        self.CharacterCharismaSavingThrow = CharacterCharismaSavingThrow

        self.CharacterAcrobatics = CharacterAcrobatics
        self.CharacterAnimalHandling = CharacterAnimalHandling
        self.CharacterArcana = CharacterArcana
        self.CharacterAthletics = CharacterAthletics
        self.CharacterDeception = CharacterDeception
        self.CharacterHistory = CharacterHistory
        self.CharacterInsight = CharacterInsight
        self.CharacterIntimidation = CharacterIntimidation
        self.CharacterInvestigation = CharacterInvestigation
        self.CharacterMedicine = CharacterMedicine
        self.CharacterNature = CharacterNature
        self.CharacterPerception = CharacterPerception
        self.CharacterPerformance = CharacterPerformance
        self.CharacterPersuasion = CharacterPersuasion
        self.CharacterReligion = CharacterReligion
        self.CharacterSleight = CharacterSleight
        self.CharacterStealth = CharacterStealth
        self.CharacterSurvival = CharacterSurvival
        
    }
    
}

var PlayerCharacter1 = Character(CharacterName: name, CharacterClassType: ClassType, CharacterBackground: background, CharacterAlignment: alignment, CharacterStregthScore: strength, CharacterDexterityScore: dexterity, CharacterConstitutionScore: constitution, CharacterIntelligenceScore: intelligence, CharacterWisdomScore: wisdom, CharacterCharismaScore: charisma, CharacterStrengthMod: StrengthMod, CharacterDexterityMod: DexterityMod, CharacterConstitutionMod: ConstitutionMod, CharacterIntelligenceMod: IntelligenceMod, CharacterWisdomMod: WisdomMod, CharacterCharismaMod: CharismaMod, CharacterStrengthSavingThrow: StrengthSavingThrow, CharacterDexteritySavingThrow: DexteritySavingThrow, CharacterConstitutionSavingThrow: ConstitutionSavingThrow, CharacterIntelligenceSavingThrow: IntelligenceSavingThrow, CharacterWisdomSavingThrow: WisdomSavingThrow, CharacterCharismaSavingThrow: CharismaSavingThrow, CharacterAcrobatics: acrobatics, CharacterAnimalHandling: AnimalHandling, CharacterArcana: arcana, CharacterAthletics: athletics, CharacterDeception: deception, CharacterHistory: history, CharacterInsight: insight, CharacterIntimidation: intimidation, CharacterInvestigation: investigation, CharacterMedicine: medicine, CharacterNature: nature, CharacterPerception: perception, CharacterPerformance: performance, CharacterPersuasion: persuasion, CharacterReligion: religion, CharacterSleight: sleight, CharacterStealth: stealth, CharacterSurvival: survival)

var Equipment:Set = ["spear", "Dagger", "gold ring"]

print("Your character has been initialized! \n")

print("Your character name is:", PlayerCharacter1.CharacterName, "\n")
print("Your class is:", PlayerCharacter1.CharacterClassType, "\n")
print("Your character alignment is:", PlayerCharacter1.CharacterAlignment, "\n")
print("Your character background is:", PlayerCharacter1.CharacterBackground, "\n")

print("Your character race is:", Race, "\n")

print("Your strength score is:", PlayerCharacter1.CharacterStregthScore,"\n")
print("Your dexterity score is:", PlayerCharacter1.CharacterDexterityScore, "\n")
print("Your constitution score is:", PlayerCharacter1.CharacterConstitutionScore, "\n")
print("Your intelligence score is:", PlayerCharacter1.CharacterIntelligenceScore, "\n")
print("Your wisdom score is:", PlayerCharacter1.CharacterWisdomScore, "\n")
print("Your charisma score is:", PlayerCharacter1.CharacterIntelligenceScore, "\n")

print("Your Stength modifier is:", PlayerCharacter1.CharacterStrengthMod, "\n") 
print("Your dexterity modifier is:", PlayerCharacter1.CharacterDexterityMod, "\n")
print("Your constitution modifier is:", PlayerCharacter1.CharacterConstitutionMod, "\n")
print("Your intelligence modifier is:", PlayerCharacter1.CharacterIntelligenceMod, "\n")
print("Your wisdom modifier is:", PlayerCharacter1.CharacterWisdomMod, "\n")
print("Your charisma modifier is:", PlayerCharacter1.CharacterCharismaMod, "\n")

print("Your strength saving throw is:", PlayerCharacter1.CharacterStrengthSavingThrow, "\n")
print("Your Dexterity saving throw is:", PlayerCharacter1.CharacterDexteritySavingThrow, "\n")
print("Your constitution saving throw is:", PlayerCharacter1.CharacterConstitutionSavingThrow, "\n")
print("Your intelligence saving throw is:", PlayerCharacter1.CharacterIntelligenceSavingThrow, "\n")
print("Your wisdom saving throw is:", PlayerCharacter1.CharacterWisdomSavingThrow, "\n")
print("Your charisma saving throw is:", PlayerCharacter1.CharacterCharismaSavingThrow, "\n")

print("Your acrobatics skill modifier is:", PlayerCharacter1.CharacterAcrobatics, "\n")
print("Your Animal Handling skill modifier is:", PlayerCharacter1.CharacterAnimalHandling, "\n")
print("Your arcana skill modifier is:", PlayerCharacter1.CharacterArcana, "\n")
print("Your athletics skill modifier is:", PlayerCharacter1.CharacterAthletics, "\n")
print("Your deception skill modifier is:", PlayerCharacter1.CharacterDeception, "\n")
print("Your history skill modifier is:", PlayerCharacter1.CharacterHistory, "\n")
print("Your insight skill modifier is:", PlayerCharacter1.CharacterInsight, "\n")
print("Your intimidation skill modifier is:", PlayerCharacter1.CharacterIntimidation, "\n")
print("Your investigation skill modifier is:", PlayerCharacter1.CharacterInvestigation, "\n")
print("Your medicine skill modifier is:", PlayerCharacter1.CharacterMedicine, "\n")
print("Your nature skill modifier is:", PlayerCharacter1.CharacterNature, "\n")
print("Your perception skill modifier is:", PlayerCharacter1.CharacterPerception, "\n")
print("Your performance skill modifier is:", PlayerCharacter1.CharacterPerformance, "\n")
print("Your persuasion skill modifier is:", PlayerCharacter1.CharacterPersuasion, "\n")
print("Your religion skill modifier is:", PlayerCharacter1.CharacterReligion, "\n")
print("Your sleight skill modifier is:", PlayerCharacter1.CharacterSleight, "\n")
print("Your stealth skill modifier is:", PlayerCharacter1.CharacterStealth, "\n")
print("Your survival skill modifier is:", PlayerCharacter1.CharacterSurvival, "\n")

print("You Equipment includes:")

for item in Equipment{
    print(item)
}