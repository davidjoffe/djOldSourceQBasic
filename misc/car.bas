DEFINT A-Z

DIM car(1 TO 148), brick(1 TO 64), crash(1 TO 112)
FOR i = 1 TO 68: READ car(i): NEXT i
FOR i = 1 TO 42: READ brick(i): NEXT i
FOR i = 1 TO 74: READ crash(i): NEXT i
SCREEN 7
PUT (0, 100), car, PSET
PUT (310, 92), brick, PSET
LINE (0, 112)-(319, 112), 15
y = 0: v = 0: a = 4
LINE (y, 100)-(y + 24, 111), 0, BF
MainLoop:
   v = v + a
   y = y + v / 10
   IF y > 286 THEN GOTO CrashTheCar
   SOUND y * 2 + 50, .1
   seconds = seconds + .1
   PUT (y, 100), car, PSET
   s! = TIMER + .1
ff:
   d! = TIMER: IF d! < s! THEN GOTO ff
   LINE (y, 100)-(y + 24, 111), 0, BF
GOTO MainLoop

CrashTheCar:
   LINE (y, 100)-(y + 1, 111), 0, BF
   PUT (292, 100), crash, PSET
   PLAY "O0L64CDEFAGABADABEDCCCDCEDCAC"
   SCREEN 0: WIDTH 80, 25
   PRINT "- Equations of motion -": PRINT
   PRINT "Written by David Joffe"
   PRINT "(C) DJ Software 1993"
END


DATA 24,12,0,0,0,0,0,0,0,8,2048,0,8,2048,0,8,2048,-253,8,2048,0,8,2048
DATA 4358,648,2048,0,8,2048,4100,1224,2048,0,0,0,4108,3196,15376,0,0,0
DATA -225,8190,-257,0,7936,-257,-193,16383,-1,0,0,0,-200,14367,1855,7,2016
DATA -8192,32311,2031,-8192,7,2016,-8192,7,2016,-8192
DATA 5,20,-2048,248,-2048,248,-2048,248,-1800,248,-2016,248,-2016,248,-2016
DATA 248,-1800,248,-2048,248,-2048,248,-2048,248,-1800,248,-2016,248,-2016
DATA 248,-2016,248,-1800,248,-2048,248,-2048,248,-2048,248,-1800,248
DATA 18,12,0,0,0,0,0,0,512,0,2,-24064,0,162,256,0,1,20739,0,17,256,0,1
DATA 19716,0,5,0,128,-32768,-29692,128,-32764,0,1152,-32768,-29682,1664
DATA -32640,256,768,129,-241,1664,165,0,0,44,-241,704,16549,0,0,1,32519
DATA 192,16421,-16384,0,192,-11519,192,16576,-13312,0,204,-13056,192,204
DATA 1024,0,4,1024,0,4
