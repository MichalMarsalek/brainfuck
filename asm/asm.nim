include prelude
import algorithm, math

const constants = split "A A+ A++ A+++ A++++ A+++++ A++++++ A+++++++ A++++++++ A+++++++++ A++++++++++ A+++++++++++ A++++++++++++ A+++++++++++++ A++++++++++++++ +++[A+++++B-]A ++++[A++++B-]A ++++[A++++B-]A+ +++[A++++++B-]A +++[A++++++B-]A+ ++++[A+++++B-]A +++[A+++++++B-]A +++[A+++++++B-]A+ ++++[A++++++B-]A- ++++[A++++++B-]A +++++[A+++++B-]A +++++[A+++++B-]A+ +++[A+++++++++B-]A ++++[A+++++++B-]A ++++[A+++++++B-]A+ +++++[A++++++B-]A +++++[A++++++B-]A+ ++++[A++++++++B-]A ++++[A++++++++B-]A+ --[A--B+++++++]A-- --[A--B+++++++]A- --[A--B+++++++]A ---[A+B+++++++]A ---[A+B+++++++]A+ ---[A+B+++++++]A++ --[A+B++++++]A--- --[A+B++++++]A-- --[A+B++++++]A- --[A+B++++++]A --[A+B++++++]A+ --[A+B++++++]A++ --[A+B++++++]A+++ -[A+B-----]A---- -[A+B-----]A--- -[A+B-----]A-- -[A+B-----]A- -[A+B-----]A -[A+B-----]A+ -[A+B-----]A++ -[A+B-----]A+++ -[A+B-----]A++++ -[A+B-----]A+++++ -[A+B+++++++++]A -[A+B+++++++++]A+ ----[A+B----]A---- ----[A+B----]A--- ----[A+B----]A-- ----[A+B----]A- ----[A+B----]A ----[A+B----]A+ ----[A+B----]A++ ----[A+B----]A+++ ----[A---B----]A ----[A---B----]A+ ----[A---B----]A++ -[A+B-------]A--- -[A+B-------]A-- -[A+B-------]A- -[A+B-------]A -[A+B-------]A+ -[A+B-------]A++ -[A+B-------]A+++ -[A+B---]A-------- -[A+B---]A------- -[A+B---]A------ -[A+B---]A----- -[A+B---]A---- -[A+B---]A--- -[A+B---]A-- -[A+B---]A- -[A+B---]A -[A+B---]A+ -[A+B---]A++ -[A+B---]A+++ -[A+B---]A++++ -[A+B---]A+++++ -[A+B---]A++++++ -[A+B---]A+++++++ -[A+B---]A++++++++ -[A+B---]A+++++++++ -[A++B-----]A------- -[A++B-----]A------ -[A++B-----]A----- -[A++B-----]A---- -[A++B-----]A--- -[A++B-----]A-- -[A++B-----]A- -[A++B-----]A -[A++B-----]A+ -[A++B-----]A++ -[A++B-----]A+++ -[A++B-----]A++++ -[A++B-----]A+++++ -[A--B-------]A-- -[A--B-------]A- -[A--B-------]A -[A--B-------]A+ -[A--B-------]A++ -[A++B+++++++++]A- -[A++B+++++++++]A -[A++B+++++++++]A+ --------[A+++B--]A ----[A+++++B--]A- ----[A+++++B--]A ------[A+++B--]A ----[A+++B--]A-- ----[A+++B--]A- ----[A+++B--]A --[A+B--]A---- --[A+B--]A--- --[A+B--]A-- --[A+B--]A- --[A+B--]A --[A-B--]A- --[A-B--]A --[A-B--]A+ --[A-B--]A++ --[A-B--]A+++ --[A-B--]A++++ ----[A---B--]A ----[A---B--]A+ ----[A---B--]A++ ------[A---B--]A ----[A-----B--]A ----[A-----B--]A+ --------[A---B--]A -[A--B+++++++++]A- -[A--B+++++++++]A -[A--B+++++++++]A+ -[A++B-------]A-- -[A++B-------]A- -[A++B-------]A -[A++B-------]A+ -[A++B-------]A++ -[A--B-----]A----- -[A--B-----]A---- -[A--B-----]A--- -[A--B-----]A-- -[A--B-----]A- -[A--B-----]A -[A--B-----]A+ -[A--B-----]A++ -[A--B-----]A+++ -[A--B-----]A++++ -[A--B-----]A+++++ -[A--B-----]A++++++ -[A--B-----]A+++++++ -[A-B---]A--------- -[A-B---]A-------- -[A-B---]A------- -[A-B---]A------ -[A-B---]A----- -[A-B---]A---- -[A-B---]A--- -[A-B---]A-- -[A-B---]A- -[A-B---]A -[A-B---]A+ -[A-B---]A++ -[A-B---]A+++ -[A-B---]A++++ -[A-B---]A+++++ -[A-B---]A++++++ -[A-B---]A+++++++ -[A-B---]A++++++++ -[A-B-------]A--- -[A-B-------]A-- -[A-B-------]A- -[A-B-------]A -[A-B-------]A+ -[A-B-------]A++ -[A-B-------]A+++ ----[A+++B----]A-- ----[A+++B----]A- ----[A+++B----]A ----[A-B----]A--- ----[A-B----]A-- ----[A-B----]A- ----[A-B----]A ----[A-B----]A+ ----[A-B----]A++ ----[A-B----]A+++ ----[A-B----]A++++ -[A-B+++++++++]A- -[A-B+++++++++]A -[A-B-----]A----- -[A-B-----]A---- -[A-B-----]A--- -[A-B-----]A-- -[A-B-----]A- -[A-B-----]A -[A-B-----]A+ -[A-B-----]A++ -[A-B-----]A+++ -[A-B-----]A++++ --[A-B++++++]A--- --[A-B++++++]A-- --[A-B++++++]A- --[A-B++++++]A --[A-B++++++]A+ --[A-B++++++]A++ --[A-B++++++]A+++ ---[A-B+++++++]A-- ---[A-B+++++++]A- ---[A-B+++++++]A --[A++B+++++++]A --[A++B+++++++]A+ --[A++B+++++++]A++ ----[A--------B+]A- ----[A--------B+]A -----[A------B+]A- -----[A------B+]A ----[A-------B+]A- ----[A-------B+]A ---[A---------B+]A -----[A-----B+]A- -----[A-----B+]A ----[A------B+]A ----[A------B+]A+ ---[A-------B+]A- ---[A-------B+]A ----[A-----B+]A ---[A------B+]A- ---[A------B+]A ----[A----B+]A- ----[A----B+]A ---[A-----B+]A A-------------- A------------- A------------ A----------- A---------- A--------- A-------- A------- A------ A----- A---- A--- A-- A-"

type Command = enum Inc, Clear, Out, In, Set, While, EndWhile, Repeat, Comment, EndRepeat, Move, Bf, Hint, Memory, Place
type MemoryConstraint = ref object
    permute: bool
    register: int
    sons: seq[MemoryConstraint]
type Instruction = object
  kind: Command
  reg1, reg2, amount: int
  text: string
type Program = object
  instructions: seq[Instruction]
  memoryContraints: MemoryConstraint
  regNames: seq[string]
  
func `$`(cons: MemoryConstraint): string =
    if cons.sons.len == 0: return $cons.register
    let inner = cons.sons.mapIt($it).join " "
    if cons.permute:
        return "{" & inner & "}"
    return "(" & inner & ")"

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

iterator permutations(n:int): seq[int] =
    var perm = toSeq(0..<n)
    while true:
        yield perm
        if not perm.nextPermutation: break

func countPermutations(cons: MemoryConstraint): float =
    if cons.sons.len == 0: return 1.0
    result = 1.0
    for i,son in cons.sons:
        result *= countPermutations(son)
        if cons.permute:
            result *= float(1+i)
            

func invert(perm: seq[int]): seq[int] =
    result = newSeq[int](perm.len)
    for i,x in perm:
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
  
func toByteCode(source: seq[string]): Program =
  var registers: Table[string, int]
  var regNames: seq[string]
  var memory = MemoryConstraint(permute: true)
  proc getReg(register: string, addToMemory=true): int =
    if not registers.hasKey(register):
      registers[register] = registers.len
      regNames &= register
      if addToMemory:
        memory.sons &= MemoryConstraint(register: registers[register])
    return registers[register]
  var stack: seq[Instruction]
  for i, line in source:
    let w = line.strip.split
    case w[0]
    of "memory":
        if i != 0:
            raise newException(ValueError, "The memory command must be on line 1.")
        else:
            var tokens = getMemoryTokens(w[1..^1])
            var stack = @[memory]
            for token in tokens:
                if token in ["(","{"]:
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
    of "clear": result.instructions &= Instruction(kind: Command.Clear, reg1: getReg(w[1]))
    of "dec":   result.instructions &= Instruction(kind: Command.Inc, reg1: getReg(w[1]), amount: 256-(try:w[2].parseInt except: 1))
    of "inc":   result.instructions &= Instruction(kind: Command.Inc, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "out":   result.instructions &= Instruction(kind: Command.Out, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "in":    result.instructions &= Instruction(kind: Command.In, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
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
            raise newException(ValueError, "Unexpected end on line " & $(i+1) & ". No loop blocks still open.")
        if start.kind == Command.While:
            result.instructions &= Instruction(kind: Command.EndWhile, reg1: start.reg1)
        else:
            result.instructions &= Instruction(kind: Command.EndRepeat, reg1: start.reg1, reg2: start.reg2)
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
        result.instructions &= Instruction(kind: Command.Place, reg1: getReg(w[1]), text: w[2..^1].join.unescape)
    else:
        result.instructions &= Instruction(kind: Command.Comment)
  if stack.len > 0:
    raise newException(ValueError, "Unexpected EOF. " & $stack.len & " loop blocks still open.")
  result.memoryContraints = memory
  result.regNames = regNames

func getBrainfuck(program: var Program, perm: var seq[int]): seq[string] =
    var point = 0
    var debts: seq[Instruction]
    var ioDebt = -1
    var freeMove = true
    var resultt: seq[string]
    var lastDebtLine = 0
    proc goto0(reg: int, perm_i: var seq[int]): string =
        if freeMove:
            freeMove = false
        else:
            result = repeat(if perm_i[reg] > point: ">" else: "<", abs(perm_i[reg] - point))
        point = perm_i[reg]
    proc goto(reg: int, perm_i: var seq[int]): string =
        var perm_i = perm_i
        if debts.len > 0:
            if point > perm_i[reg]:
                debts = debts.sortedByIt(-perm_i[it.reg1])
            else:
                debts = debts.sortedByIt(perm_i[it.reg1])
            var payback = ""
            for ins in debts:
                payback &= (case ins.kind
                of Command.Inc: goto0(ins.reg1, perm_i) & (if ins.amount < 128: "+".repeat(ins.amount) else: "-".repeat(256-ins.amount))
                of Command.Out: goto0(ins.reg1, perm_i) & ".".repeat(ins.amount)
                of Command.In:  goto0(ins.reg1, perm_i) & ","
                else: "")
            resultt[lastDebtLine] = payback
            ioDebt = -1
            debts = @[]
        goto0(reg, perm_i)
    for i, ins in program.instructions:
        if ins.isInOut and (ioDebt == -1 or ioDebt == perm[ins.reg1]):
            ioDebt = perm[ins.reg1]
            debts &= ins  
            resultt &= ""
            lastDebtLine = i
        elif ins.isInc:
            debts &= ins
            resultt &= ""
            lastDebtLine = i
        else:            
            resultt &= (case ins.kind
            of Command.Comment: ""
            of Command.EndWhile: goto(ins.reg1, perm) & "]"
            of Command.EndRepeat: goto(ins.reg1, perm) & "+" & goto(ins.reg2, perm) & "-]" & goto(ins.reg1, perm) & "[-" & goto(ins.reg2, perm) & "+" & goto(ins.reg1, perm) & "]"
            of Command.Set: goto(ins.reg2, perm) & constants[ins.amount].replace("A", goto(ins.reg1, perm)).replace("B", goto(ins.reg2, perm)).replace("A", goto(ins.reg1, perm))
            of Command.While: goto(ins.reg1, perm) & "["
            of Command.Repeat: goto(ins.reg2, perm)& "["
            of Command.Clear: goto(ins.reg1, perm) & "[-]"
            of Command.Move: goto0(ins.reg1, perm) & "[" & "-" & goto0(ins.reg2, perm) & "+" & goto0(ins.reg1, perm) & "]"
            of Command.Inc: goto(ins.reg1, perm) & (if ins.amount < 128: "+".repeat(ins.amount) else: "-".repeat(256-ins.amount))
            of Command.Out: goto(ins.reg1, perm) & ".".repeat(ins.amount)
            of Command.In: goto(ins.reg1, perm) & ","
            of Command.Bf: ins.text
            of Command.Hint: (point = ins.reg1; "")
            of Command.Place: goto(ins.reg1, perm) & ins.text.mapIt(constants[it.ord].multireplace(("A",">"),("B","<"))).join(">") & ">"
            of Command.Memory: ""
            )
    discard goto(point, perm)
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

proc compile(source:string, input="") =
  var lines = source.strip.splitLines
  var program = toByteCode(lines)
  echo program.memoryContraints
  let permCount = program.memoryContraints.countPermutations
  if permCount > 3628800.0:
    echo "Permutation count too high. Turning permutations off. Constraint the memory layout using the memory command."
    program.memoryContraints = MemoryConstraint(sons: toSeq(0..<program.regNames.len).mapIt(MemoryConstraint(register: it)))
  echo "Permutation count: ", permCount
  let perms = program.getOptimalPerms
  for perm in perms:
      var perm = perm
      let bfLines = getBrainfuck(program, perm)
      var registers = toSeq(0..<perm.len).mapIt(perm.find it).mapIt(program.regNames[it])
      let freeMove = registers.find(program.regNames[0])
      registers = registers.mapIt(it.align(3))
      let bf = bfLines.join
      echo "Length: ", $bf.len
      echo "Memory layout: ", registers.join(" ")
      echo "               ", toSeq(0..<registers.len).mapIt(($(it - freeMove)).align(registers[it].len)).join(" ")
      echo "Golfed: ", bf
  let maxlen = lines.mapIt(it.len).max
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
