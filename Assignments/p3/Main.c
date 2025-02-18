code Main

  -- OS Class: Project 3
  --
  -- <Nazanin Yousefi>
  --

-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      SleepingBarber()
    endFunction
    
-----------------------------  Poblem 1: Sleeping Barber
const chairsNum = 5
enum E,S,B,F,L,start,end,X,n						

var
chairs:array[5] of int
customers: int=0
waitingCustomers:int=0 
barberNum: int=0
costumerStatus: array[12] of int

customersThreads: array [12] of Thread = new array of Thread { 12 of new Thread }
barberThread: Thread

customerSemaphore: Semaphore=new Semaphore
barberSemaphore: Semaphore=new Semaphore		
mutexSemaphore: Semaphore=new Semaphore 
mutex: int=1

index: int=0	

function SleepingBarber()
--  print("Whaatttt")
-- ok afte implementing barber and customer we should design a case to test it
-- we have 11 customer:
	print("       Barber     1  2  3  4  5  6  7  8  9  10  11  \n")

-- initialization
costumerStatus = new array of int {12 of '?'}
chairs=new array of int {5 of n } -- non occupied enum at the beginning 
-- semaphores
customerSemaphore.Init(customers)							
barberSemaphore.Init(barberNum)								
mutexSemaphore.Init(mutex)								
barberThread=new Thread		

-- ok now let's move on to setup structure
barberThread.Init("Barber")
barberThread.Fork(barber,0)

customersThreads[0].Init("Customer1")
customersThreads[0].Fork(customer,1)

customersThreads[1].Init("Customer2")
customersThreads[1].Fork(customer,2)

customersThreads[2].Init("Customer3")
customersThreads[2].Fork(customer,3)

customersThreads[3].Init("Customer4")
customersThreads[3].Fork(customer,4)

customersThreads[4].Init("Customer5")
customersThreads[4].Fork(customer,5)

customersThreads[5].Init("Customer6")
customersThreads[5].Fork(customer,6)

delay(100)
customersThreads[6].Init("Customer7")
customersThreads[6].Fork(customer,7)

customersThreads[7].Init("Customer8")
customersThreads[7].Fork(customer,8)

customersThreads[8].Init("Customer9")
customersThreads[8].Fork(customer,9)

customersThreads[9].Init("Customer10")
customersThreads[9].Fork(customer,10)

customersThreads[10].Init("Customer11")
customersThreads[10].Fork(customer,11)

ThreadFinish()
endFunction

function barber(p: int)
  -- what does barber do? it should down customer and check if ther's any cut their hair if not sleep!
  -- so we will decrease waiting list and then up the barbers then cut hair
  while true
    customerSemaphore.Down()
    mutexSemaphore.Down() -- we are entering a critical section
    chairs[index]=n -- that chair will change to not occupied
    index=(index-1) % chairsNum
    waitingCustomers=waitingCustomers-1
    barberSemaphore.Up()
    mutexSemaphore.Up()
    cutHair(p)
  endWhile
endFunction

function cutHair(p: int)
  var i:int
  -- first we should chane the p status 
  costumerStatus[p]=start
  -- now we want to print statuses before haircutting and it is a critical section
  mutexSemaphore.Down()
  PrintAllStatus(p)
  mutexSemaphore.Up()

  -- ok now we should act as it takes time to cut hair so we should yield for a while
  for i=i to 100
    currentThread.Yield() 	
  endFor

  -- now we change p status to done and we will print all status again
  costumerStatus[p]=end
  mutexSemaphore.Down()
  PrintAllStatus(p)
  mutexSemaphore.Up()

  -- and we are all done
endFunction


function customer(p:int)
  -- what should the customer do?

  -- first they enter so we will change the status to enter and it should be inside mutex lock cuase it's a critical section
  mutexSemaphore.Down()
  costumerStatus[p]=E 
  PrintAllStatus(p) -- after all status changing
  -- then we should check what to do next -> if there is no one waiting -> get haircut if not wait
  if(waitingCustomers<chairsNum)
    -- we can seat and wait:
    waitingCustomers = waitingCustomers+1
    chairs[index] = X
    index = (index+1)% chairsNum

    costumerStatus[p]=S 
    PrintAllStatus(p)

    customerSemaphore.Up()
    -- we are out of critical section now so
    mutexSemaphore.Up()

    barberSemaphore.Down()
    getHaircut(p)

    -- then we can easily leave
    costumerStatus[p]=L 
    mutexSemaphore.Down()
    PrintAllStatus(p)
    mutexSemaphore.Up()
  endIf
  if(waitingCustomers>=chairsNum)
  -- customer should leave
    costumerStatus[p]=L 
    -- we are in critical
    PrintAllStatus(p)
    mutexSemaphore.Up()
  endIf
endFunction

function getHaircut(p:int)
  var i:int

  mutexSemaphore.Down()
  costumerStatus[p]=B 
  PrintAllStatus(p)

      waitingCustomers=waitingCustomers-1

  chairs[index]=n -- that chair will change to not occupied
    --  index=(index-1) % chairsNum

  mutexSemaphore.Up()
  for i=i to 120
    currentThread.Yield()
  endFor

  costumerStatus[p]=F 
  mutexSemaphore.Down()
  PrintAllStatus(p)
  mutexSemaphore.Up()

endFunction


function delay(time: int)						
  var i: int
  for i =  1 to time
  endFor
endFunction

function PrintAllStatus(j: int)									--printing status of each cutomer
var
	  i:int
          p: int
	
	for i=0 to 4										--prints the status of chairs
	  switch chairs[i]
	    case X:
		print("X")
		break
	    case n:
		print("0")
		break
	 endSwitch
	endFor
	
        if j != 0
           print ("          ")
        endIf

	for p = 1 to j										--prints the status of the cutomer 
            print ("   ")
        endFor  
          switch costumerStatus [j]
            case B:
              print ("B  ")
              break
            case E:
              print ("E  ")
              break
            case S:
              print ("S  ")
              break
	    case F:
	      print ("F  ")
	      break
            case L:
	      print ("L  ")
	      break

	    case start:
	      print ("  Start   ")
	      break
	    case end:
	     print ("  End     ")
	     break
	  default: print ("   ")
          endSwitch
        nl ()
endFunction


-----------------------------  Poblem 2: Game Parler

endCode
