include prelude
import algorithm, math

const constants = split "A A+ A++ A+++ A++++ A+++++ A++++++ A+++++++ A++++++++ A+++++++++ A++++++++++ A+++++++++++ A++++++++++++ A+++++++++++++ A++++++++++++++ +++[A+++++B-]A ++++[A++++B-]A ++++[A++++B-]A+ +++[A++++++B-]A +++[A++++++B-]A+ ++++[A+++++B-]A +++[A+++++++B-]A +++[A+++++++B-]A+ ++++[A++++++B-]A- ++++[A++++++B-]A +++++[A+++++B-]A +++++[A+++++B-]A+ +++[A+++++++++B-]A ++++[A+++++++B-]A ++++[A+++++++B-]A+ +++++[A++++++B-]A +++++[A++++++B-]A+ ++++[A++++++++B-]A ++++[A++++++++B-]A+ --[A--B+++++++]A-- --[A--B+++++++]A- --[A--B+++++++]A ---[A+B+++++++]A ---[A+B+++++++]A+ ---[A+B+++++++]A++ --[A+B++++++]A--- --[A+B++++++]A-- --[A+B++++++]A- --[A+B++++++]A --[A+B++++++]A+ --[A+B++++++]A++ --[A+B++++++]A+++ -[A+B-----]A---- -[A+B-----]A--- -[A+B-----]A-- -[A+B-----]A- -[A+B-----]A -[A+B-----]A+ -[A+B-----]A++ -[A+B-----]A+++ -[A+B-----]A++++ -[A+B-----]A+++++ -[A+B+++++++++]A -[A+B+++++++++]A+ ----[A+B----]A---- ----[A+B----]A--- ----[A+B----]A-- ----[A+B----]A- ----[A+B----]A ----[A+B----]A+ ----[A+B----]A++ ----[A+B----]A+++ ----[A---B----]A ----[A---B----]A+ ----[A---B----]A++ -[A+B-------]A--- -[A+B-------]A-- -[A+B-------]A- -[A+B-------]A -[A+B-------]A+ -[A+B-------]A++ -[A+B-------]A+++ -[A+B---]A-------- -[A+B---]A------- -[A+B---]A------ -[A+B---]A----- -[A+B---]A---- -[A+B---]A--- -[A+B---]A-- -[A+B---]A- -[A+B---]A -[A+B---]A+ -[A+B---]A++ -[A+B---]A+++ -[A+B---]A++++ -[A+B---]A+++++ -[A+B---]A++++++ -[A+B---]A+++++++ -[A+B---]A++++++++ -[A+B---]A+++++++++ -[A++B-----]A------- -[A++B-----]A------ -[A++B-----]A----- -[A++B-----]A---- -[A++B-----]A--- -[A++B-----]A-- -[A++B-----]A- -[A++B-----]A -[A++B-----]A+ -[A++B-----]A++ -[A++B-----]A+++ -[A++B-----]A++++ -[A++B-----]A+++++ -[A--B-------]A-- -[A--B-------]A- -[A--B-------]A -[A--B-------]A+ -[A--B-------]A++ -[A++B+++++++++]A- -[A++B+++++++++]A -[A++B+++++++++]A+ --------[A+++B--]A ----[A+++++B--]A- ----[A+++++B--]A ------[A+++B--]A ----[A+++B--]A-- ----[A+++B--]A- ----[A+++B--]A --[A+B--]A---- --[A+B--]A--- --[A+B--]A-- --[A+B--]A- --[A+B--]A --[A-B--]A- --[A-B--]A --[A-B--]A+ --[A-B--]A++ --[A-B--]A+++ --[A-B--]A++++ ----[A---B--]A ----[A---B--]A+ ----[A---B--]A++ ------[A---B--]A ----[A-----B--]A ----[A-----B--]A+ --------[A---B--]A -[A--B+++++++++]A- -[A--B+++++++++]A -[A--B+++++++++]A+ -[A++B-------]A-- -[A++B-------]A- -[A++B-------]A -[A++B-------]A+ -[A++B-------]A++ -[A--B-----]A----- -[A--B-----]A---- -[A--B-----]A--- -[A--B-----]A-- -[A--B-----]A- -[A--B-----]A -[A--B-----]A+ -[A--B-----]A++ -[A--B-----]A+++ -[A--B-----]A++++ -[A--B-----]A+++++ -[A--B-----]A++++++ -[A--B-----]A+++++++ -[A-B---]A--------- -[A-B---]A-------- -[A-B---]A------- -[A-B---]A------ -[A-B---]A----- -[A-B---]A---- -[A-B---]A--- -[A-B---]A-- -[A-B---]A- -[A-B---]A -[A-B---]A+ -[A-B---]A++ -[A-B---]A+++ -[A-B---]A++++ -[A-B---]A+++++ -[A-B---]A++++++ -[A-B---]A+++++++ -[A-B---]A++++++++ -[A-B-------]A--- -[A-B-------]A-- -[A-B-------]A- -[A-B-------]A -[A-B-------]A+ -[A-B-------]A++ -[A-B-------]A+++ ----[A+++B----]A-- ----[A+++B----]A- ----[A+++B----]A ----[A-B----]A--- ----[A-B----]A-- ----[A-B----]A- ----[A-B----]A ----[A-B----]A+ ----[A-B----]A++ ----[A-B----]A+++ ----[A-B----]A++++ -[A-B+++++++++]A- -[A-B+++++++++]A -[A-B-----]A----- -[A-B-----]A---- -[A-B-----]A--- -[A-B-----]A-- -[A-B-----]A- -[A-B-----]A -[A-B-----]A+ -[A-B-----]A++ -[A-B-----]A+++ -[A-B-----]A++++ --[A-B++++++]A--- --[A-B++++++]A-- --[A-B++++++]A- --[A-B++++++]A --[A-B++++++]A+ --[A-B++++++]A++ --[A-B++++++]A+++ ---[A-B+++++++]A-- ---[A-B+++++++]A- ---[A-B+++++++]A --[A++B+++++++]A --[A++B+++++++]A+ --[A++B+++++++]A++ ----[A--------B+]A- ----[A--------B+]A -----[A------B+]A- -----[A------B+]A ----[A-------B+]A- ----[A-------B+]A ---[A---------B+]A -----[A-----B+]A- -----[A-----B+]A ----[A------B+]A ----[A------B+]A+ ---[A-------B+]A- ---[A-------B+]A ----[A-----B+]A ---[A------B+]A- ---[A------B+]A ----[A----B+]A- ----[A----B+]A ---[A-----B+]A A-------------- A------------- A------------ A----------- A---------- A--------- A-------- A------- A------ A----- A---- A--- A-- A-"

type Command = enum Inc, Clear, Out, In, Set, While, EndWhile, Repeat, Comment, EndRepeat, Move, Bf, Hint, Place, Fill, Define, EndDefine, Call
type MemoryConstraint = ref object
    permute: bool
    register: int
    sons: seq[MemoryConstraint]
type Instruction = object
    kind: Command
    reg1, reg2, amount: int
    text: string
type Init = object
    base: int
    big, small: Table[int, int]
type Program = object
    instructions: seq[Instruction]
    memoryContraints: MemoryConstraint
    regNames: seq[string]
    init: Init


func `$`(cons: MemoryConstraint): string =
    if cons.sons.len == 0: return $cons.register
    let inner = cons.sons.mapIt($it).join " "
    if cons.permute:
        return "{" & inner & "}"
    return "(" & inner & ")"

func incStr(x: int): string =
    var x = x
    if x > 128:
        x -= 256
    repeat(if x < 0: "-" else: "+", abs x)

func moveStr(x: int): string =
    repeat(if x < 0: "<" else: ">", abs x)

func isInOut(ins: Instruction): bool =
    ins.kind == Command.In or ins.kind == Command.Out
func isInc(ins: Instruction): bool =
    ins.kind == Command.Inc and ins.amount != 0

func getMemoryTokens(w: seq[string]): seq[string] =
    for x in w:
        var x = x
        while x[0] in "({":
            result &= $x[0]
            x = x[1..^1]
        var close: seq[string]
        while x[^1] in ")}":
            close = $x[^1] & close
            x = x[0..^2]
        result &= x & close

iterator permutations(n: int): seq[int] =
    var perm = toSeq(0..<n)
    while true:
        yield perm
        if not perm.nextPermutation: break

func countPermutations(cons: MemoryConstraint): float =
    if cons.sons.len == 0: return 1.0
    result = 1.0
    for i, son in cons.sons:
        result *= countPermutations(son)
        if cons.permute:
            result *= float(1+i)

func invert(perm: seq[int]): seq[int] =
    result = newSeq[int](perm.len)
    for i, x in perm:
        result[x] = i

func getPermutations(cons: MemoryConstraint): seq[seq[int]] =
    if cons.sons.len == 0: return @[@[cons.register]]
    var partialPerms = cons.sons.map getPermutations
    var result: seq[seq[int]]
    for pi in permutations cons.sons.len:
        proc recurse(i: int, prefix: seq[int]) =
            if i == cons.sons.len:
                result &= prefix
            else:
                for x in partialPerms[pi[i]]:
                    recurse(i+1, prefix & x)
        recurse(0, @[])
        if not cons.permute: break
    return result

func myUnescape(text: string): string =
    var esc = false
    if text[0] notin "\"'":
        raise newException(ValueError, "String literals must start with \" or '.")
    var edge = text[0]
    var text = text[1..^1]
    for c in text:
        if esc:
            esc = false
            try:
                result &= toTable({'n': '\n', 'r': '\r', 't': '\t', '\\': '\\', edge: edge})[c]
            except:
                raise newException(ValueError, "Unknown escape sequence " & c & ".")
        else:
            if c == edge: return
            if c == '\\':
                esc = true
            else:
                result &= c

func calculateInit(targets: Table[int, int]): Init =
    var results: seq[(int, int)]
    var minCost = int.high
    for B in 0..16:
        var temp = Init(base: B)
        var cost = B - 4*int(B == 16) - int(B == 15)
        for r, t in targets:
            var best, bestDist = 256
            for x in 0..16:
                if abs(t - B*x mod 256) < bestDist:
                    bestDist = abs(t - B*x mod 256)
                    best = x
            temp.big[r] = best
            temp.small[r] = t - B*best mod 256
            cost += best + abs(t - B*best mod 256)
        if cost < minCost:
            result = temp

func fillPattern(pattern: seq[int]): string =
    if pattern.len == 1:
        var c = constants[pattern[0]]
        if c[0] == '+':
            c = c[1..^1]
        else:
            c = '-' & c
        c = c.replace("A", "<")
        c = c.replace("B", ">")
        result = "-" & ">>+[" & c & ">>+]"
        result = result.replace("<>", "")
        let res2 = incStr(sgn pattern[0]) & "[>" & incStr(-pattern[0]) & "]"
        if pattern[0] mod 2 == 0 and res2.len < result.len:
            result = res2
    else:
        raise newException(ValueError, "General fill pattern not implemented yet.")

func toByteCode(source: seq[string]): Program =
    var registers: Table[string, int]
    var regNames: seq[string]
    var memory = MemoryConstraint(permute: true)
    proc getReg(register: string, addToMemory = true): int =
        if not registers.hasKey(register):
            registers[register] = registers.len
            regNames &= register
            if addToMemory:
                memory.sons &= MemoryConstraint(register: registers[register])
        return registers[register]
    var stack: seq[Instruction]
    var init: Table[int, int]
    var memorySet = false
    for i, line in source:
        let w = line.strip.split
        case w[0]
        of "memory":
            if i != 0:
                raise newException(ValueError, "The memory command must be on line 1.")
            else:
                memorySet = true
                var tokens = getMemoryTokens(w[1..^1])
                var stack = @[memory]
                for token in tokens:
                    if token in ["(", "{"]:
                        stack &= MemoryConstraint(permute: token == "{")
                        stack[^2].sons &= stack[^1]
                    elif token == ")":
                        if stack.pop.permute:
                            raise newException(ValueError, "Unmatched parenthesis.")
                    elif token == "}":
                        if not stack.pop.permute:
                            raise newException(ValueError, "Unmatched parenthesis.")
                    else:
                        stack[^1].sons &= MemoryConstraint(register: getReg(token, false))
                if stack.len != 1:
                    raise newException(ValueError, "Unmatched parenthesis.")

                result.instructions &= Instruction(kind: Command.Comment)
        of "init":
            if result.instructions.len > 0 and result.instructions[^1].kind != Command.Comment:
                raise newException(ValueError, "Init must be at the beggining of the program.")
            try:
                init[getReg(w[1])] = w[2..^1].join.myUnescape[0].ord
            except:
                try:
                    init[getReg(w[1])] = w[2].parseInt
                except:
                    raise newException(ValueError, "Value to be set must be a string or number literal.")
            result.instructions &= Instruction(kind: Command.Comment)
        of "fill":
            var fill: seq[int]
            if not (i == 0 or (memorySet and i == 1)):
                raise newException(ValueError, "Fill must be at the beggining of the program.")
            try:
                fill = w[1..^1].join.myUnescape.mapIt it.ord
            except:
                try:
                    fill = w[1..^1].map parseInt
                except:
                    raise newException(ValueError, "Fill pattern must be a string or sequence of number literals.")
            result.instructions &= Instruction(kind: Command.Fill, text: fillPattern fill)
        of "clear": result.instructions &= Instruction(kind: Command.Clear, reg1: getReg(w[1]))
        of "dec": result.instructions &= Instruction(kind: Command.Inc, reg1: getReg(w[1]), amount: 256-(try: w[2].parseInt except: 1))
        of "inc": result.instructions &= Instruction(kind: Command.Inc, reg1: getReg(w[1]), amount: (try: w[2].parseInt except: 1))
        of "out": result.instructions &= Instruction(kind: Command.Out, reg1: getReg(w[1]), amount: (try: w[2].parseInt except: 1))
        of "in": result.instructions &= Instruction(kind: Command.In, reg1: getReg(w[1]), amount: (try: w[2].parseInt except: 1))
        of "set":
            if w[3].len == 1:
                result.instructions &= Instruction(kind: Command.Set, reg1: getReg(w[1]), reg2: getReg(w[2]), amount: w[3][0].ord)
            elif w[3].parseInt in 15..241:
                result.instructions &= Instruction(kind: Command.Set, reg1: getReg(w[1]), reg2: getReg(w[2]), amount: w[3].parseInt)
            else:
                raise newException(ValueError, "The amount to be set must be in 15..241.")
        of "while":
            stack &= Instruction(kind: Command.While, reg1: getReg(w[1]))
            result.instructions &= stack[^1]
        of "end":
            var start: Instruction
            try:
                start = stack.pop
            except:
                raise newException(ValueError, "Unexpected end on line " & $(i+1) & ". No blocks still open.")
            if start.kind == Command.While:
                result.instructions &= Instruction(kind: Command.EndWhile, reg1: start.reg1)
            elif start.kind == Command.Repeat:
                result.instructions &= Instruction(kind: Command.EndRepeat, reg1: start.reg1, reg2: start.reg2)
            else:
                result.instructions &= Instruction(kind: Command.EndDefine)
        of "repeat":
            stack &= Instruction(kind: Command.Repeat, reg1: getReg(w[1]), reg2: getReg(w[2]))
            result.instructions &= stack[^1]
        of "move":
            result.instructions &= Instruction(kind: Command.Move, reg1: getReg(w[1]), reg2: getReg(w[2]))
        of "bf":
            result.instructions &= Instruction(kind: Command.Bf, text: w[1])
        of "hint":
            result.instructions &= Instruction(kind: Command.Hint, reg1: getReg(w[1]))
        of "place":
            result.instructions &= Instruction(kind: Command.Place, reg1: getReg(w[1]), text: w[2..^1].join.myUnescape)
        of "define":
            if stack.anyIt it.kind == Command.Define:
                raise newException(ValueError, "Cannot nest template definitions.")
            stack &= Instruction(kind: Command.Define, text: w[1])
            result.instructions &= stack[^1]
        of "call":
            result.instructions &= Instruction(kind: Command.Call, text: w[1])
        else:
            result.instructions &= Instruction(kind: Command.Comment)
    if stack.len > 0:
        raise newException(ValueError, "Unexpected EOF. " & $stack.len & " loop blocks still open.")
    result.memoryContraints = memory
    result.init = calculateInit init
    result.regNames = regNames

func getBrainfuck(init: Init, perm: seq[int], point: var int): string =
    # TODO
    # make use for holes in the init registers for the base counter, instead
    # of just the cell on the left
    # this strategy is better
    # On the other hand, if there are no holes use [<] instead of <<<<<<<<<
    if init.base == 15:
        result = "+++[>+++++<-]>"
    elif init.base == 16:
        result = "+[>-[-<]>>]>"
    else:
        result = incStr init.base
    result &= "[->"
    var regs = init.big.keys.toSeq.sortedByIt(perm[it])
    point = perm[regs[0]]
    var x = 1
    for r in regs:
        if init.big[r] != 0:
            result &= moveStr(perm[r] - point)
            x += perm[r] - point
            point = perm[r]
            result &= incStr init.big[r]
    result &= moveStr(-x) & "]>"
    point = perm[regs[0]]
    for r in regs:
        if init.small[r] != 0:
            result &= moveStr(perm[r] - point)
            point = perm[r]
            result &= incStr init.small[r]

func getBrainfuck(program: var Program, perm: var seq[int]): seq[string] =
    var point = 0
    var debts: seq[Instruction]
    var ioDebt = -1
    var callStack = @[0]
    var resultt = newSeq[string](program.instructions.len)
    var lastDebtLine = 0
    var templates: Table[string, int]
    if program.init.small.len > 0:
        resultt[0] &= getBrainfuck(program.init, perm, point)
    proc goto0(reg: int, perm_i: var seq[int]): string =
        result = moveStr(perm_i[reg] - point)
        point = perm_i[reg]
    proc goto(reg: int, perm_i: var seq[int]): string =
        var perm_i = perm_i
        if debts.len > 0:
            if reg >= 0 and point > perm_i[reg]:
                debts = debts.sortedByIt(-perm_i[it.reg1])
            else:
                debts = debts.sortedByIt(perm_i[it.reg1])
            var payback = ""
            for ins in debts:
                payback &= (case ins.kind
                of Command.Inc: goto0(ins.reg1, perm_i) & incStr ins.amount
                of Command.Out: goto0(ins.reg1, perm_i) & ".".repeat(ins.amount)
                of Command.In: goto0(ins.reg1, perm_i) & ","
                else: "")
            resultt[lastDebtLine] &= payback
            ioDebt = -1
            debts = @[]
        if reg >= 0:
            return goto0(reg, perm_i)
    while callStack[^1] < program.instructions.len:
        let ins = program.instructions[callStack[^1]]
        if ins.isInOut and (ioDebt == -1 or ioDebt == perm[ins.reg1]):
            ioDebt = perm[ins.reg1]
            debts &= ins
            lastDebtLine = callStack[0]
        elif ins.isInc:
            debts &= ins
            lastDebtLine = callStack[0]
        elif callStack[^1] > 0 or resultt[0] == "":
            resultt[callStack[0]] &= (case ins.kind
            of Command.Comment: ""
            of Command.EndWhile: goto(ins.reg1, perm) & "]"
            of Command.EndRepeat: goto(ins.reg1, perm) & "+" & goto(ins.reg2, perm) & "-]" & goto(ins.reg1, perm) & "[-" & goto(ins.reg2, perm) & "+" & goto(
                    ins.reg1, perm) & "]"
            of Command.Set: goto(ins.reg2, perm) & constants[ins.amount].replace("A", goto(ins.reg1, perm)).replace("B", goto(ins.reg2, perm)).replace("A",
                    goto(ins.reg1, perm))
            of Command.While: goto(ins.reg1, perm) & "["
            of Command.Repeat: goto(ins.reg2, perm) & "["
            of Command.Clear: goto(ins.reg1, perm) & "[-]"
            of Command.Move: goto0(ins.reg1, perm) & "[" & "-" & goto0(ins.reg2, perm) & "+" & goto0(ins.reg1, perm) & "]"
            of Command.Inc: goto(ins.reg1, perm) & incStr ins.amount
            of Command.Out: goto(ins.reg1, perm) & ".".repeat(ins.amount)
            of Command.In: goto(ins.reg1, perm) & ","
            of Command.Bf: (discard goto(-1, perm); ins.text)
            of Command.Hint: (discard goto(ins.reg1, perm); "")
            of Command.Place: goto(ins.reg1, perm) & ins.text.mapIt(constants[it.ord].multireplace(("A", ">"), ("B", "<"))).join(">") & ">"
            of Command.Fill: ins.text
            of Command.Define: (
                templates[ins.text] = callStack[^1]; (while program.instructions[callStack[^1]].kind != Command.EndDefine: inc callStack[^1]); ""
            )
            of Command.EndDefine: (discard callStack.pop; "")
            of Command.Call: (callStack &= templates[ins.text]; "")
            )
        inc callStack[^1]
    discard goto(-1, perm)
    return resultt

func getLength(program: var Program, perm: var seq[int]): int =
    return getBrainfuck(program, perm).mapIt(it.len).sum #TODO replace this with faster calculation

func getOptimalPerms(program: var Program): seq[seq[int]] =
    var minLength = int.high
    var minPerms: seq[seq[int]]
    for perm in program.memoryContraints.getPermutations.map invert:
        var perm = perm
        let length = getLength(program, perm)
        if length < minLength:
            minPerms = newSeq[seq[int]]()
            minLength = length
        if length == minLength:
            minPerms &= perm
    return minPerms

proc compile(source: string, input = "") =
    var lines = source.strip.splitLines
    var program = toByteCode(lines)
    let permCount = program.memoryContraints.countPermutations
    if permCount > 3628800.0:
        echo "Permutation count too high. Turning permutations off. Constraint the memory layout using the memory command."
        program.memoryContraints = MemoryConstraint(sons: toSeq(0..<program.regNames.len).mapIt(MemoryConstraint(register: it)))
    echo "Permutation count: ", permCount
    let perms = program.getOptimalPerms
    for perm in perms:
        var perm = perm
        let bfLines = getBrainfuck(program, perm)
        var registers = perm.invert.mapIt(program.regNames[it])
        registers = registers.mapIt(it.align(3))
        let bf = bfLines.join
        echo "Length: ", $bf.len
        echo "Memory layout: ", registers.join(" ")
        echo "               ", toSeq(0..<registers.len).mapIt(($it).align(registers[it].len)).join(" ")
        echo "Golfed: ", bf
    let maxlen = lines[1..^1].mapIt(it.len).max
    var perm = perms[0]
    let bfLines = getBrainfuck(program, perm)
    for i in 0..<lines.len:
        let bf = if program.instructions[i].kind != Command.Bf: bfLines[i] else: ""
        echo lines[i].alignLeft(maxlen + 1), bf

var code, input: string
try:
    code = 1.paramStr.readFile
    try:
        input = 2.paramStr.readFile
    except: discard
except:
    echo "Provide source file and optionally input file in cmd args."
if code != "":
    compile(code, input)
