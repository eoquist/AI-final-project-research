--=========================================================================================
-- ASSUMES Super Mario World (USA)
--=========================================================================================
Filename = "DP1.state"
ButtonNames = {"A", "B", "X", "Y", "Up", "Down", "Left", "Right"}
BoxRadius = 4 -- number of tiles on each side of Mario to look at (originally 6)
InputSize = (BoxRadius * 2 + 1) * (BoxRadius * 2 + 1)
Inputs = InputSize + 1
Outputs = #ButtonNames

marioX = nil --> getPositions
marioY = nil
screenX = nil
screenY = nil
x = nil --> getTile
y = nil
rightmost = nil --> initializeRun
pool = nil --> initializePool
controller = nil --> clearJoypad
coins = nil


Population = 300
DeltaDisjoint = 2.0
DeltaWeights = 0.4
DeltaThreshold = 1.0
StaleSpecies = 15
MutateConnectionsChance = 0.25
PerturbChance = 0.90
CrossoverChance = 0.75
LinkMutationChance = 2.0
NodeMutationChance = 0.50
BiasMutationChance = 0.40
StepSize = 0.1
DisableMutationChance = 0.4
EnableMutationChance = 0.2

TimeoutConstant = 20
MaxNodes = 1000000


form = forms.newform(200, 260, "Fitness")
maxFitnessLabel = forms.label(form, "Max Fitness: " .. math.floor(pool.maxFitness), 5, 8)
showNetwork = forms.checkbox(form, "Show Map", 5, 30)
showMutationRates = forms.checkbox(form, "Show M-Rates", 5, 52)
restartButton = forms.button(form, "Restart", initializePool, 5, 77)
saveButton = forms.button(form, "Save", savePool, 5, 102)
loadButton = forms.button(form, "Load", loadPool, 80, 102)
saveLoadFile = forms.textbox(form, Filename .. ".pool", 170, 25, nil, 5, 148)
saveLoadLabel = forms.label(form, "Save/Load:", 5, 129)
playTopButton = forms.button(form, "Play Top", playTop, 5, 170)
hideBanner = forms.checkbox(form, "Hide Banner", 5, 190)