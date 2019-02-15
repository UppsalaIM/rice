from itertools import product

def makeBitToInOut(b):
    if b=='0':
        return 'in'
    elif b=='1':
        return 'out'
    else:
        raise Exception('Not valid bit')

def makeAllValences(argNames):
    n = len(argNames)
    u = pow(2, n)
    allModes = list()
    for i in range(0, u):
        ubin = format(i, "b")
        ubinpadded = ('0')*(n-len(ubin)) + ubin
        modes = list(ubinpadded)
        modesStr = list(map(makeBitToInOut, modes))
        modesWithArgNames = dict(zip(argNames, modesStr))
        allModes.append(modesWithArgNames)
    return allModes

def allValencesForProj(sourceArgs, projItems, projArgs):
    modesSource = makeAllValences(sourceArgs)
    modesProj = makeAllValences(projArgs)
    projOpValences = product(modesSource, modesProj)
    projOpValencesWithProjItems = [(sourceModes, projItems, projModes) for (sourceModes, projModes) in projOpValences]
    return list(projOpValencesWithProjItems)

def allValencesForAND(andArgs, pArgs, qArgs):
    modesAnd = makeAllValences(andArgs)
    modesP = makeAllValences(pArgs)
    modesQ = makeAllValences(qArgs)
    andpqmodes = product(modesAnd, modesP, modesQ)
    return list(andpqmodes)

def isWellModedProj(projCombinedValence):
    (sourceModes, projItems, projModes) = projCombinedValence
    projItemsInverted = {newName:oldName for oldName, newName in projItems.items()}
    # if source is in-and-out then all ins must be included in the projection and at least one out.
    sourceHasIns = 'in' in sourceModes.values()
    sourceHasOuts = 'out' in sourceModes.values()
    # if sourceHasIns:
    #     for name in sourceModes.keys():
    #         if name not in projItems.keys():
    #             return False
    if sourceHasIns:
        atLeastOneOutIsProjected = False
        for name, mode in sourceModes.items():
            if mode=='in' and name not in projItems.keys():
                return False
            if mode=='out' and name in projItems.keys():
                atLeastOneOutIsProjected = True
            if mode=='in' and projItems[name] not in projModes.keys():
                return False
        if sourceHasOuts and not atLeastOneOutIsProjected:
            return False
    # all the projected args should exist in source and they should have the same modes
    for name, mode in projModes.items():
        if projItemsInverted[name] not in sourceModes.keys():
            return False
        if sourceModes[projItemsInverted[name]]!=mode:
            return False
    return True

def isWellModedAND(combValence):
    (andModes, pModes, qModes) = combValence
    for name, mode in pModes.items():
        if mode=='in' and andModes[name]=='out':
            return False
    for name, mode in qModes.items():
        if mode=='in':
            if name not in pModes:
                if andModes[name]=='out':
                    return False
            if name in pModes:
                if pModes[name]=='in' and andModes[name]=='out':
                    return False
    for name, mode in andModes.items():
        if name in pModes and name not in qModes:
            if mode=='out' and pModes[name]=='in':
                return False
        if name not in pModes and name in qModes:
            if mode=='out' and qModes[name]=='in':
                return False
        if name in pModes and name in qModes:
            if mode=='out' and pModes[name]=='in' and qModes[name]=='in':
                return False
    return True

def generateAllWellModedProjValences():
    allValences = list()
    # projs with unbound arguments (_) are disabled
    allValences.extend(allValencesForProj(['A'], {'A':'U'}, ['U']))
    # allValences.extend(allValencesForProj(['A', '_'], {'A':'U'}, ['U']))
    # allValences.extend(allValencesForProj(['_', 'B'], {'B':'U'}, ['U']))
    allValences.extend(allValencesForProj(['A', 'B'], {'A':'U', 'B':'V'}, ['U', 'V']))
    # allValences.extend(allValencesForProj(['A', '_', '_'], {'A':'U'}, ['U']))
    # allValences.extend(allValencesForProj(['_', 'B', '_'], {'B':'U'}, ['U']))
    # allValences.extend(allValencesForProj(['_', '_', 'C'], {'C':'U'}, ['U']))
    # allValences.extend(allValencesForProj(['A', 'B', '_'], {'A':'U', 'B':'V'}, ['U','V']))
    # allValences.extend(allValencesForProj(['A', '_', 'C'], {'A':'U', 'C':'V'}, ['U','V']))
    # allValences.extend(allValencesForProj(['_', 'B', 'C'], {'B':'U', 'C':'V'}, ['U','V']))
    allValences.extend(allValencesForProj(['A', 'B', 'C'], {'A':'U', 'B':'V', 'C':'X'}, ['U','V','X']))
    allWellModedValences = filter(isWellModedProj, allValences)
    return allWellModedValences

def generateAllWellModedValencesForAND():
    # no symmetric combinations should go here, symmetry between P and Q is introduced later.
    # combinations of arguments are written in here to avoid one level of proj (also to be complete wrd ande semantics).
    argNameCombinations = [[['A'], ['A'], ['A']],                               # unary
        [['A', 'B'], ['A'], ['A', 'B']],                                        # binary joint
        [['A', 'B'], ['A', 'B'], ['B']],
        [['A', 'B'], ['A', 'B'], ['A', 'B']],
        # [['A', 'B'], ['A'], ['B']],                                             # binary disjoint ?
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['A']],                              # ternary joint
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['B']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['C']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['A', 'B']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['A', 'C']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['B', 'C']],
        # [['A', 'B', 'C'], ['A', 'B'], ['A', 'C']],
        # [['A', 'B', 'C'], ['A', 'B'], ['B', 'C']],
        # [['A', 'B', 'C'], ['A', 'C'], ['B', 'C']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['A', 'B', 'C']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['A', 'C', 'B']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['B', 'A', 'C']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['B', 'C', 'A']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['C', 'A', 'B']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['C', 'B', 'A']],
        # [['A', 'B', 'C'], ['A', 'B', 'C'], ['C', 'B', 'A']],
        [['A', 'B', 'C'], ['A'], ['B', 'C']],                                   # ternary disjoint
        # [['A', 'B', 'C'], ['A'], ['C', 'B']],
        # [['A', 'B', 'C'], ['B'], ['A', 'C']],
        # [['A', 'B', 'C'], ['B'], ['C', 'A']],
        # [['A', 'B', 'C'], ['C'], ['A', 'B']],
        # [['A', 'B', 'C'], ['C'], ['B', 'A']],
        # [['A', 'B', 'C', 'D'], ['A'], ['B', 'C', 'D']],                         # quoternary disjoint
        # [['A', 'B', 'C', 'D'], ['A'], ['B', 'D', 'C']],
        # [['A', 'B', 'C', 'D'], ['A'], ['C', 'B', 'D']],
        # [['A', 'B', 'C', 'D'], ['A'], ['C', 'D', 'B']],
        # [['A', 'B', 'C', 'D'], ['A'], ['D', 'B', 'C']],
        # [['A', 'B', 'C', 'D'], ['A'], ['D', 'C', 'B']],
        # [['A', 'B', 'C', 'D'], ['B'], ['A', 'C', 'D']],
        # [['A', 'B', 'C', 'D'], ['B'], ['A', 'D', 'C']],
        # [['A', 'B', 'C', 'D'], ['B'], ['C', 'A', 'D']],
        # [['A', 'B', 'C', 'D'], ['B'], ['C', 'D', 'A']],
        # [['A', 'B', 'C', 'D'], ['B'], ['D', 'A', 'C']],
        # [['A', 'B', 'C', 'D'], ['B'], ['D', 'C', 'A']],
        # [['A', 'B', 'C', 'D'], ['C'], ['A', 'B', 'D']],
        # [['A', 'B', 'C', 'D'], ['C'], ['A', 'D', 'B']],
        # [['A', 'B', 'C', 'D'], ['C'], ['B', 'A', 'D']],
        # [['A', 'B', 'C', 'D'], ['C'], ['B', 'D', 'A']],
        # [['A', 'B', 'C', 'D'], ['C'], ['D', 'A', 'B']],
        # [['A', 'B', 'C', 'D'], ['C'], ['D', 'B', 'A']],
        # [['A', 'B', 'C', 'D'], ['D'], ['A', 'B', 'C']],
        # [['A', 'B', 'C', 'D'], ['D'], ['A', 'C', 'B']],
        # [['A', 'B', 'C', 'D'], ['D'], ['B', 'A', 'C']],
        # [['A', 'B', 'C', 'D'], ['D'], ['B', 'C', 'A']],
        # [['A', 'B', 'C', 'D'], ['D'], ['C', 'A', 'B']],
        # [['A', 'B', 'C', 'D'], ['D'], ['C', 'B', 'A']],
        [['A', 'B', 'C', 'D'], ['A', 'B'], ['C', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'C'], ['B', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'D'], ['B', 'C']],
        # [['A', 'B', 'C', 'D'], ['B', 'A'], ['C', 'D']],
        # [['A', 'B', 'C', 'D'], ['B', 'C'], ['A', 'D']],
        # [['A', 'B', 'C', 'D'], ['B', 'D'], ['A', 'C']],
        # [['A', 'B', 'C', 'D'], ['C', 'A'], ['B', 'D']],
        # [['A', 'B', 'C', 'D'], ['C', 'B'], ['A', 'D']],
        # [['A', 'B', 'C', 'D'], ['C', 'D'], ['A', 'B']],
        # [['A', 'B', 'C', 'D'], ['D', 'A'], ['B', 'C']],
        # [['A', 'B', 'C', 'D'], ['D', 'B'], ['A', 'C']],
        # [['A', 'B', 'C', 'D'], ['D', 'C'], ['A', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A']],                    # quoternary joint
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'B', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'C', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'A', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'C', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'A', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'B', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'B', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'D', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'A', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'D', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'A', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'B', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'C', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'D', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'A', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'D', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'A', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'C', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'C', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'D', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'B', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'D', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'B', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'C', 'B']],
        [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'B', 'D', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'C', 'B', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'C', 'D', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'D', 'B', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['A', 'D', 'C', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'A', 'C', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'A', 'D', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'C', 'A', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'C', 'D', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'D', 'A', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['B', 'D', 'C', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'A', 'B', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'A', 'D', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'B', 'A', 'D']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'B', 'D', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'D', 'A', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['C', 'D', 'B', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'A', 'B', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'A', 'C', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'B', 'A', 'C']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'B', 'C', 'A']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'C', 'A', 'B']],
        # [['A', 'B', 'C', 'D'], ['A', 'B', 'C', 'D'], ['D', 'C', 'B', 'A']],
        ]
    allValences = list()
    for c in argNameCombinations:
        allValences.extend(allValencesForAND(c[0], c[1], c[2]))
        allValences.extend(allValencesForAND(c[0], c[2], c[1])) # symmetry
    allWellModedValences = filter(isWellModedAND, allValences)
    return allWellModedValences

def dictToPythonArgList(d):
    namesModes = [n+':'+m for n,m in d.items()]
    return "["+(", ".join(namesModes))+"]"

def dictToPythonProjItemList(d):
    oldNamesNewNames = [no+'->'+nn for no,nn in d.items()]
    return "["+(", ").join(oldNamesNewNames)+"]"


def projValenceIntoPrologLine(valence):
    (sourceModes, projItems, projModes) = valence
    valenceProjArgs = [dictToPythonArgList(sourceModes), dictToPythonProjItemList(projItems), dictToPythonArgList(projModes)]
    return "valenceProj("+(", ".join(valenceProjArgs))+")."

def andValenceIntoPrologLine(valence):
    argLists = map(dictToPythonArgList, list(valence))
    return "valenceAnde("+(", ".join(argLists))+")."


file = open("valences_generated.pl", "w")

allValencesProj = generateAllWellModedProjValences()
allLinesProj = map(projValenceIntoPrologLine, allValencesProj)
file.write("% valenceProj(SourceValence, ProjItems, ProjValence) \n")
for l in allLinesProj:
    file.write(l + "\n")

allValencesAND = generateAllWellModedValencesForAND()
allLinesAND = map(andValenceIntoPrologLine, allValencesAND)
file.write("% valenceAnde(AndeValence, PValence, QValence) \n")
for l in allLinesAND:
    file.write(l + "\n")

file.close()

print('Generating valences completed.')

# for op in range(1, 2):
#     for p in range(1, and):
#         for q in range(1, and):
#             gen(op, p, q)
