include prelude
import algorithm

const constants = split " + ++ +++ ++++ +++++ ++++++ +++++++ ++++++++ +++++++++ ++++++++++ +++++++++++ ++++++++++++ +++++++++++++ ++++++++++++++ +++[A+++++B-]A ++++[A++++B-]A ++++[A++++B-]A+ +++[A++++++B-]A +++[A++++++B-]A+ ++++[A+++++B-]A +++[A+++++++B-]A +++[A+++++++B-]A+ ++++[A++++++B-]A- ++++[A++++++B-]A +++++[A+++++B-]A +++++[A+++++B-]A+ +++[A+++++++++B-]A ++++[A+++++++B-]A ++++[A+++++++B-]A+ +++++[A++++++B-]A +++++[A++++++B-]A+ ++++[A++++++++B-]A ++++[A++++++++B-]A+ --[A--B+++++++]A-- --[A--B+++++++]A- --[A--B+++++++]A ---[A+B+++++++]A ---[A+B+++++++]A+ ---[A+B+++++++]A++ --[A+B++++++]A--- --[A+B++++++]A-- --[A+B++++++]A- --[A+B++++++]A --[A+B++++++]A+ --[A+B++++++]A++ --[A+B++++++]A+++ -[A+B-----]A---- -[A+B-----]A--- -[A+B-----]A-- -[A+B-----]A- -[A+B-----]A -[A+B-----]A+ -[A+B-----]A++ -[A+B-----]A+++ -[A+B-----]A++++ -[A+B-----]A+++++ -[A+B+++++++++]A -[A+B+++++++++]A+ ----[A+B----]A---- ----[A+B----]A--- ----[A+B----]A-- ----[A+B----]A- ----[A+B----]A ----[A+B----]A+ ----[A+B----]A++ ----[A+B----]A+++ ----[A---B----]A ----[A---B----]A+ ----[A---B----]A++ -[A+B-------]A--- -[A+B-------]A-- -[A+B-------]A- -[A+B-------]A -[A+B-------]A+ -[A+B-------]A++ -[A+B-------]A+++ -[A+B---]A-------- -[A+B---]A------- -[A+B---]A------ -[A+B---]A----- -[A+B---]A---- -[A+B---]A--- -[A+B---]A-- -[A+B---]A- -[A+B---]A -[A+B---]A+ -[A+B---]A++ -[A+B---]A+++ -[A+B---]A++++ -[A+B---]A+++++ -[A+B---]A++++++ -[A+B---]A+++++++ -[A+B---]A++++++++ -[A+B---]A+++++++++ -[A++B-----]A------- -[A++B-----]A------ -[A++B-----]A----- -[A++B-----]A---- -[A++B-----]A--- -[A++B-----]A-- -[A++B-----]A- -[A++B-----]A -[A++B-----]A+ -[A++B-----]A++ -[A++B-----]A+++ -[A++B-----]A++++ -[A++B-----]A+++++ -[A--B-------]A-- -[A--B-------]A- -[A--B-------]A -[A--B-------]A+ -[A--B-------]A++ -[A++B+++++++++]A- -[A++B+++++++++]A -[A++B+++++++++]A+ --------[A+++B--]A ----[A+++++B--]A- ----[A+++++B--]A ------[A+++B--]A ----[A+++B--]A-- ----[A+++B--]A- ----[A+++B--]A --[A+B--]A---- --[A+B--]A--- --[A+B--]A-- --[A+B--]A- --[A+B--]A --[A-B--]A- --[A-B--]A --[A-B--]A+ --[A-B--]A++ --[A-B--]A+++ --[A-B--]A++++ ----[A---B--]A ----[A---B--]A+ ----[A---B--]A++ ------[A---B--]A ----[A-----B--]A ----[A-----B--]A+ --------[A---B--]A -[A--B+++++++++]A- -[A--B+++++++++]A -[A--B+++++++++]A+ -[A++B-------]A-- -[A++B-------]A- -[A++B-------]A -[A++B-------]A+ -[A++B-------]A++ -[A--B-----]A----- -[A--B-----]A---- -[A--B-----]A--- -[A--B-----]A-- -[A--B-----]A- -[A--B-----]A -[A--B-----]A+ -[A--B-----]A++ -[A--B-----]A+++ -[A--B-----]A++++ -[A--B-----]A+++++ -[A--B-----]A++++++ -[A--B-----]A+++++++ -[A-B---]A--------- -[A-B---]A-------- -[A-B---]A------- -[A-B---]A------ -[A-B---]A----- -[A-B---]A---- -[A-B---]A--- -[A-B---]A-- -[A-B---]A- -[A-B---]A -[A-B---]A+ -[A-B---]A++ -[A-B---]A+++ -[A-B---]A++++ -[A-B---]A+++++ -[A-B---]A++++++ -[A-B---]A+++++++ -[A-B---]A++++++++ -[A-B-------]A--- -[A-B-------]A-- -[A-B-------]A- -[A-B-------]A -[A-B-------]A+ -[A-B-------]A++ -[A-B-------]A+++ ----[A+++B----]A-- ----[A+++B----]A- ----[A+++B----]A ----[A-B----]A--- ----[A-B----]A-- ----[A-B----]A- ----[A-B----]A ----[A-B----]A+ ----[A-B----]A++ ----[A-B----]A+++ ----[A-B----]A++++ -[A-B+++++++++]A- -[A-B+++++++++]A -[A-B-----]A----- -[A-B-----]A---- -[A-B-----]A--- -[A-B-----]A-- -[A-B-----]A- -[A-B-----]A -[A-B-----]A+ -[A-B-----]A++ -[A-B-----]A+++ -[A-B-----]A++++ --[A-B++++++]A--- --[A-B++++++]A-- --[A-B++++++]A- --[A-B++++++]A --[A-B++++++]A+ --[A-B++++++]A++ --[A-B++++++]A+++ ---[A-B+++++++]A-- ---[A-B+++++++]A- ---[A-B+++++++]A --[A++B+++++++]A --[A++B+++++++]A+ --[A++B+++++++]A++ ----[A--------B+]A- ----[A--------B+]A -----[A------B+]A- -----[A------B+]A ----[A-------B+]A- ----[A-------B+]A ---[A---------B+]A -----[A-----B+]A- -----[A-----B+]A ----[A------B+]A ----[A------B+]A+ ---[A-------B+]A- ---[A-------B+]A ----[A-----B+]A ---[A------B+]A- ---[A------B+]A ----[A----B+]A- ----[A----B+]A ---[A-----B+]A -------------- ------------- ------------ ----------- ---------- --------- -------- ------- ------ ----- ---- --- -- -"

type Command = enum Inc, Dec, Clear, Out, In, Set, While, End, Repeat, Comment
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
  var stack: seq[int]
  for line in source:
    let w = line.strip.split
    result.instructions &= (case w[0]
    of "clear": Instruction(kind: Command.Clear, reg1: getReg(w[1]))
    of "dec":   Instruction(kind: Command.Dec, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "inc":   Instruction(kind: Command.Inc, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "out":   Instruction(kind: Command.Out, reg1: getReg(w[1]))
    of "in":    Instruction(kind: Command.In, reg1: getReg(w[1]))
    of "set":   Instruction(kind: Command.Set, reg1: getReg(w[1]), reg2: getReg(w[2]), amount: w[3].parseInt)
    of "while": (stack &= getReg(w[1]); Instruction(kind: Command.While, reg1: getReg(w[1])))
    of "end":   Instruction(kind: Command.End, reg1: stack.pop)
    of "repeat":(stack &= getReg(w[1]); Instruction(kind: Command.Repeat, reg1: getReg(w[1]), reg2: getReg(w[2])))
    else:       Instruction(kind: Command.Comment))
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
            debts = debts.sortedByIt(perm_i[it.reg1])
            if point > reg:
                debts = debts.reversed
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
            of Command.End: goto(ins.reg1, perm) & "]"
            of Command.Set: goto(ins.reg2, perm) & constants[ins.amount].replace("A", goto(ins.reg1, perm)).replace("B", goto(ins.reg2, perm)).replace("A", goto(ins.reg1, perm))
            of Command.While: goto(ins.reg1, perm) & "["
            of Command.Repeat: goto(ins.reg2, perm) & "[-" & goto(ins.reg1, perm) & "+" & goto(ins.reg2, perm) & "]" & goto(ins.reg1, perm) & "[-" & goto(ins.reg2, perm) & "+"
            of Command.Clear: goto(ins.reg1, perm) & "[-]"
            of Command.Dec: goto(ins.reg1, perm) & "-".repeat(ins.amount)
            of Command.Inc: goto(ins.reg1, perm) & "+".repeat(ins.amount)
            of Command.Out: goto(ins.reg1, perm) & "."
            of Command.In: goto(ins.reg1, perm) & ","
            )
    return resultt

func getLength(program: var Program, perm: var seq[int]): int =
    return getBrainfuck(program, perm).join.len #TODO replace this with faster calculation
    var point = 0
    var freeMove = true
    template goto(reg: int) =
        let reg2 = reg
        if freeMove:
            freeMove = false
        else:
            result += abs(perm[reg2] - point)
        point = perm[reg2]
    for ins in program.instructions:
        case ins.kind
        of Command.Comment: discard
        of Command.Set: goto(ins.reg2); goto(ins.reg1); goto(ins.reg2); goto(ins.reg1)
        of Command.Repeat: goto(ins.reg2); goto(ins.reg1);goto(ins.reg2); goto(ins.reg1);goto(ins.reg2)
        else: goto(ins.reg1)

func interpret(program: Program): string =
    if program.instructions.anyIt(it.kind == Command.In): return
    return ""

func getOptimalBrainfuck(program: var Program): (seq[string], seq[int]) =
    var perm = toSeq(0..<program.regNames.len)
    var minLength = int.high
    var minPerm: seq[int]
    while true:
        let length = getLength(program, perm)
        if length < minLength:
            minLength = length
            minPerm = perm        
        if (not perm.nextPermutation) or 2*perm[0] > program.regNames.len: break
    return (getBrainfuck(program, minPerm), minPerm)

proc compile(source:string, golf=false) =
  var lines = source.strip.splitLines
  var program = toByteCode(lines)
  let (bfLines, perm) = program.getOptimalBrainfuck
  var registers = perm.mapIt(program.regNames[it])
  let freeMove = registers.find(program.regNames[0])
  registers = registers.mapIt(it.align(3))
  let bf = bfLines.join
  echo "Length: ", $bf.len
  echo "Memory layout: ", registers.join(" ")
  echo "               ", toSeq(0..<registers.len).mapIt(($(it - freeMove)).align(registers[it].len)).join(" ")
  echo "Golfed: ", bf
  let maxlen = lines.mapIt(it.len).max
  for i in 0..<lines.len:
    echo lines[i].alignLeft(maxlen + 1), bfLines[i]

var code = """
set rep letter 26
set letter _ 64
while rep
    dec rep
    inc letter
    out letter
end
"""

compile code