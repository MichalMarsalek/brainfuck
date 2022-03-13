include prelude
import algorithm, math

const constants = split " + ++ +++ ++++ +++++ ++++++ +++++++ ++++++++ +++++++++ ++++++++++ +++++++++++ ++++++++++++ +++++++++++++ ++++++++++++++ +++[A+++++B-]A ++++[A++++B-]A ++++[A++++B-]A+ +++[A++++++B-]A +++[A++++++B-]A+ ++++[A+++++B-]A +++[A+++++++B-]A +++[A+++++++B-]A+ ++++[A++++++B-]A- ++++[A++++++B-]A +++++[A+++++B-]A +++++[A+++++B-]A+ +++[A+++++++++B-]A ++++[A+++++++B-]A ++++[A+++++++B-]A+ +++++[A++++++B-]A +++++[A++++++B-]A+ ++++[A++++++++B-]A ++++[A++++++++B-]A+ --[A--B+++++++]A-- --[A--B+++++++]A- --[A--B+++++++]A ---[A+B+++++++]A ---[A+B+++++++]A+ ---[A+B+++++++]A++ --[A+B++++++]A--- --[A+B++++++]A-- --[A+B++++++]A- --[A+B++++++]A --[A+B++++++]A+ --[A+B++++++]A++ --[A+B++++++]A+++ -[A+B-----]A---- -[A+B-----]A--- -[A+B-----]A-- -[A+B-----]A- -[A+B-----]A -[A+B-----]A+ -[A+B-----]A++ -[A+B-----]A+++ -[A+B-----]A++++ -[A+B-----]A+++++ -[A+B+++++++++]A -[A+B+++++++++]A+ ----[A+B----]A---- ----[A+B----]A--- ----[A+B----]A-- ----[A+B----]A- ----[A+B----]A ----[A+B----]A+ ----[A+B----]A++ ----[A+B----]A+++ ----[A---B----]A ----[A---B----]A+ ----[A---B----]A++ -[A+B-------]A--- -[A+B-------]A-- -[A+B-------]A- -[A+B-------]A -[A+B-------]A+ -[A+B-------]A++ -[A+B-------]A+++ -[A+B---]A-------- -[A+B---]A------- -[A+B---]A------ -[A+B---]A----- -[A+B---]A---- -[A+B---]A--- -[A+B---]A-- -[A+B---]A- -[A+B---]A -[A+B---]A+ -[A+B---]A++ -[A+B---]A+++ -[A+B---]A++++ -[A+B---]A+++++ -[A+B---]A++++++ -[A+B---]A+++++++ -[A+B---]A++++++++ -[A+B---]A+++++++++ -[A++B-----]A------- -[A++B-----]A------ -[A++B-----]A----- -[A++B-----]A---- -[A++B-----]A--- -[A++B-----]A-- -[A++B-----]A- -[A++B-----]A -[A++B-----]A+ -[A++B-----]A++ -[A++B-----]A+++ -[A++B-----]A++++ -[A++B-----]A+++++ -[A--B-------]A-- -[A--B-------]A- -[A--B-------]A -[A--B-------]A+ -[A--B-------]A++ -[A++B+++++++++]A- -[A++B+++++++++]A -[A++B+++++++++]A+ --------[A+++B--]A ----[A+++++B--]A- ----[A+++++B--]A ------[A+++B--]A ----[A+++B--]A-- ----[A+++B--]A- ----[A+++B--]A --[A+B--]A---- --[A+B--]A--- --[A+B--]A-- --[A+B--]A- --[A+B--]A --[A-B--]A- --[A-B--]A --[A-B--]A+ --[A-B--]A++ --[A-B--]A+++ --[A-B--]A++++ ----[A---B--]A ----[A---B--]A+ ----[A---B--]A++ ------[A---B--]A ----[A-----B--]A ----[A-----B--]A+ --------[A---B--]A -[A--B+++++++++]A- -[A--B+++++++++]A -[A--B+++++++++]A+ -[A++B-------]A-- -[A++B-------]A- -[A++B-------]A -[A++B-------]A+ -[A++B-------]A++ -[A--B-----]A----- -[A--B-----]A---- -[A--B-----]A--- -[A--B-----]A-- -[A--B-----]A- -[A--B-----]A -[A--B-----]A+ -[A--B-----]A++ -[A--B-----]A+++ -[A--B-----]A++++ -[A--B-----]A+++++ -[A--B-----]A++++++ -[A--B-----]A+++++++ -[A-B---]A--------- -[A-B---]A-------- -[A-B---]A------- -[A-B---]A------ -[A-B---]A----- -[A-B---]A---- -[A-B---]A--- -[A-B---]A-- -[A-B---]A- -[A-B---]A -[A-B---]A+ -[A-B---]A++ -[A-B---]A+++ -[A-B---]A++++ -[A-B---]A+++++ -[A-B---]A++++++ -[A-B---]A+++++++ -[A-B---]A++++++++ -[A-B-------]A--- -[A-B-------]A-- -[A-B-------]A- -[A-B-------]A -[A-B-------]A+ -[A-B-------]A++ -[A-B-------]A+++ ----[A+++B----]A-- ----[A+++B----]A- ----[A+++B----]A ----[A-B----]A--- ----[A-B----]A-- ----[A-B----]A- ----[A-B----]A ----[A-B----]A+ ----[A-B----]A++ ----[A-B----]A+++ ----[A-B----]A++++ -[A-B+++++++++]A- -[A-B+++++++++]A -[A-B-----]A----- -[A-B-----]A---- -[A-B-----]A--- -[A-B-----]A-- -[A-B-----]A- -[A-B-----]A -[A-B-----]A+ -[A-B-----]A++ -[A-B-----]A+++ -[A-B-----]A++++ --[A-B++++++]A--- --[A-B++++++]A-- --[A-B++++++]A- --[A-B++++++]A --[A-B++++++]A+ --[A-B++++++]A++ --[A-B++++++]A+++ ---[A-B+++++++]A-- ---[A-B+++++++]A- ---[A-B+++++++]A --[A++B+++++++]A --[A++B+++++++]A+ --[A++B+++++++]A++ ----[A--------B+]A- ----[A--------B+]A -----[A------B+]A- -----[A------B+]A ----[A-------B+]A- ----[A-------B+]A ---[A---------B+]A -----[A-----B+]A- -----[A-----B+]A ----[A------B+]A ----[A------B+]A+ ---[A-------B+]A- ---[A-------B+]A ----[A-----B+]A ---[A------B+]A- ---[A------B+]A ----[A----B+]A- ----[A----B+]A ---[A-----B+]A -------------- ------------- ------------ ----------- ---------- --------- -------- ------- ------ ----- ---- --- -- -"

type Command = enum Inc, Dec, Clear, Out, In, Set, While, EndWhile, Repeat, Comment, EndRepeat
type Instruction = object
  kind: Command
  reg1, reg2, amount: int
type Program = object
  instructions: seq[Instruction]
  regNames: seq[string]

func isInOut(ins: Instruction): bool =
    ins.kind == Command.In or ins.kind == Command.Out
func isDecInc(ins: Instruction): bool =
    ins.kind == Command.Dec or ins.kind == Command.Inc
  
func toByteCode(source: seq[string]): Program =
  var registers: Table[string, int]
  var regNames: seq[string]
  proc getReg(register: string): int =
    if not registers.hasKey(register):
      registers[register] = registers.len
      regNames &= register
    return registers[register]
  var stack: seq[Instruction]
  for line in source:
    let w = line.strip.split
    result.instructions &= (case w[0]
    of "clear": Instruction(kind: Command.Clear, reg1: getReg(w[1]))
    of "dec":   Instruction(kind: Command.Dec, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "inc":   Instruction(kind: Command.Inc, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "out":   Instruction(kind: Command.Out, reg1: getReg(w[1]))
    of "in":    Instruction(kind: Command.In, reg1: getReg(w[1]))
    of "set":   Instruction(kind: Command.Set, reg1: getReg(w[1]), reg2: getReg(w[2]), amount: w[3].parseInt)
    of "while": (stack &= Instruction(kind: Command.While, reg1: getReg(w[1])); stack[^1])
    of "end":   (let start = stack.pop;(if start.kind == Command.While:
                    Instruction(kind: Command.EndWhile, reg1: start.reg1)
                 else:
                    Instruction(kind: Command.EndRepeat, reg1: start.reg1, reg2: start.reg2)))
    of "repeat":(stack &= Instruction(kind: Command.Repeat, reg1: getReg(w[1]), reg2: getReg(w[2])); stack[^1] )
    else:       Instruction(kind: Command.Comment))
  if stack.len > 0:
    raise newException(ValueError, "Unexpected EOF. " & $stack.len & " loop blocks still open.")
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
            if point > reg:
                debts = debts.sortedByIt(-perm_i[it.reg1])
            else:
                debts = debts.sortedByIt(perm_i[it.reg1])
            var payback = ""
            for ins in debts:
                payback &= (case ins.kind
                of Command.Dec: goto0(ins.reg1, perm_i) & "-".repeat(ins.amount)
                of Command.Inc: goto0(ins.reg1, perm_i) & "+".repeat(ins.amount)
                of Command.Out: goto0(ins.reg1, perm_i) & "."
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
        elif ins.isDecInc:
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
            of Command.Dec: goto(ins.reg1, perm) & "-".repeat(ins.amount)
            of Command.Inc: goto(ins.reg1, perm) & "+".repeat(ins.amount)
            of Command.Out: goto(ins.reg1, perm) & "."
            of Command.In: goto(ins.reg1, perm) & ","
            )
    discard goto(point, perm)
    return resultt

func getLength(program: var Program, perm: var seq[int]): int =
    return getBrainfuck(program, perm).mapIt(it.len).sum #TODO replace this with faster calculation

func interpret(program: Program, input=""): string =
    var input = input.reversed
    var program = program
    var stack: seq[int]
    for i,p in program.instructions:
        if p.kind == Command.While or p.kind == Command.Repeat:
            stack &= i
        elif p.kind == Command.EndWhile or p.kind == Command.EndRepeat:
            let w = stack.pop
            program.instructions[w].amount = i # the field amount is used as instruction pointer instead
            program.instructions[i].amount = w
    var i = 0
    var registers = newSeq[int](program.instructions.len)
    while i < program.instructions.len:
        #debugEcho (i, registers, input)
        let ins = program.instructions[i]
        case ins.kind
        of Command.Comment: discard
        of Command.EndWhile:
            if registers[ins.reg1] > 0:
                i = ins.amount
        of Command.EndRepeat:  
            registers[ins.reg1] = (registers[ins.reg1] + 1) mod 256
            registers[ins.reg2] = (registers[ins.reg2] + 255) mod 256
            if registers[ins.reg2] > 0:      
                i = ins.amount
            else:
                registers[ins.reg2] = registers[ins.reg1]
                registers[ins.reg1] = 0
        of Command.Set:
            if registers[ins.reg2] != 0:
                raise newException(ValueError, "Register " & program.regNames[ins.reg2] & " is nonzero on line " & $i)
            registers[ins.reg1] = ins.amount
        of Command.While:
            if registers[ins.reg1] > 0:
                i = ins.amount-1
        of Command.Repeat:
            if registers[ins.reg1] != 0:
                raise newException(ValueError, "Register " & program.regNames[ins.reg2] & " is nonzero on line " & $i)
            if registers[ins.reg2] == 0:
                i = ins.amount                
        of Command.Clear:  registers[ins.reg1] = 0
        of Command.Dec:    registers[ins.reg1] = (registers[ins.reg1]+256-ins.amount) mod 256
        of Command.Inc:    registers[ins.reg1] = (registers[ins.reg1] + ins.amount) mod 256
        of Command.Out:    result &= chr(registers[ins.reg1])
        of Command.In:
            if input.len == 0:
                return result & "\n(end of input)"
            registers[ins.reg1] = input.pop.ord
        i += 1

func getOptimalBrainfuck(program: var Program): (seq[string], seq[int]) =
    var perm = toSeq(0..<program.regNames.len)
    var minLength = int.high
    var minPerm: seq[int]
    var permCount = 0
    const maxPerms = 19_958_400 # 11!/2
    for _ in 1..maxPerms:
        let length = getLength(program, perm)
        if length < minLength:
            minLength = length
            minPerm = perm        
        if (not perm.nextPermutation) or 2*perm[0] > program.regNames.len: break
    return (getBrainfuck(program, minPerm), minPerm)

proc compile(source:string, input="", golf=false) =
  var lines = source.strip.splitLines
  var program = toByteCode(lines)
  let (bfLines, perm) = program.getOptimalBrainfuck
  var registers = toSeq(0..<perm.len).mapIt(perm.find it).mapIt(program.regNames[it])
  let freeMove = registers.find(program.regNames[0])
  registers = registers.mapIt(it.align(3))
  let bf = bfLines.join
  echo "Length: ", $bf.len
  echo "Memory layout: ", registers.join(" ")
  echo "               ", toSeq(0..<registers.len).mapIt(($(it - freeMove)).align(registers[it].len)).join(" ")
  echo "Golfed: ", bf
  let output = interpret(program, input)
  if output != "":
    echo "Output:"
    echo output
  let maxlen = lines.mapIt(it.len).max
  for i in 0..<lines.len:
    echo lines[i].alignLeft(maxlen + 1), bfLines[i]


var code = """
set 0 res 48
set * res 42
inc NL 10
in A
in B
while 0
    dec 0
    dec A
    dec B
end
while A
    dec A
    repeat _ B
        out *
    end
    out NL
end
"""

compile(code, "37")