! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareCondition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_frameCount:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_21:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_20:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_19:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_18:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_17:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_16:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_15:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_14:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_13:
	.word	58			! length
	.ascii	"\n\nThe following shows how many times each frame was used:\n"
	.align
_StringConst_12:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_11:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_10:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_9:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_8:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_7:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_6:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_3:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_2:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_31		! .
	ret				! .
_Label_31:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_32
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_32:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_33
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_33
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_33
! Make sure _P_Kernel_ has hash value 0xc36a632a (decimal -1016437974)
	set	_packageName,r2
	set	0xc36a632a,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_33
_Label_33:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	4,r1
_Label_462:
	push	r0
	sub	r1,1,r1
	bne	_Label_462
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_34 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_463:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_463
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_36 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_function_29_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_function_27_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_function_25_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_37
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_38
	.word	-12
	.word	4
	.word	_Label_39
	.word	-16
	.word	4
	.word	_Label_40
	.word	-20
	.word	4
	.word	0
_Label_37:
	.ascii	"main\0"
	.align
_Label_38:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_39:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_40:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_30_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_464:
	push	r0
	sub	r1,1,r1
	bne	_Label_464
	mov	132,r13		! source line 132
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_41 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   _temp_42 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_43
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_44
	.word	8
	.word	4
	.word	_Label_45
	.word	-12
	.word	4
	.word	_Label_46
	.word	-16
	.word	4
	.word	_Label_47
	.word	-20
	.word	4
	.word	0
_Label_43:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_44:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_47:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_29_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_465:
	push	r0
	sub	r1,1,r1
	bne	_Label_465
	mov	169,r13		! source line 169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_48 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
!   _temp_49 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_50 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_51 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_51  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_56 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_57 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_56  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_52:
!   Perform the FOR-LOOP termination test
!   if i > _temp_57 then goto _Label_55		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_55
_Label_53:
	mov	180,r13		! source line 180
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_58)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_466:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_466
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0SE",r10
!   _temp_60 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_60  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_61 = _function_28_TestThreadManager
	set	_function_28_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_61  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_54:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_52
! END FOR
_Label_55:
! FOR STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_66 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_67 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_66  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_62:
!   Perform the FOR-LOOP termination test
!   if i > _temp_67 then goto _Label_65		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_65
_Label_63:
	mov	188,r13		! source line 188
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_68 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_64:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_62
! END FOR
_Label_65:
! IF STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=_temp_71  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_71 == 401 then goto _Label_70		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_70
!	jmp	_Label_69
_Label_69:
! THEN...
	mov	193,r13		! source line 193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_72 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_72  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	193,r13		! source line 193
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_70:
! CALL STATEMENT...
!   _temp_73 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_74
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_75
	.word	-12
	.word	4
	.word	_Label_76
	.word	-16
	.word	4
	.word	_Label_77
	.word	-20
	.word	4
	.word	_Label_78
	.word	-24
	.word	4
	.word	_Label_79
	.word	-28
	.word	4
	.word	_Label_80
	.word	-32
	.word	4
	.word	_Label_81
	.word	-36
	.word	4
	.word	_Label_82
	.word	-40
	.word	4
	.word	_Label_83
	.word	-44
	.word	4
	.word	_Label_84
	.word	-48
	.word	4
	.word	_Label_85
	.word	-52
	.word	4
	.word	_Label_86
	.word	-56
	.word	4
	.word	_Label_87
	.word	-60
	.word	4
	.word	_Label_88
	.word	-64
	.word	4
	.word	_Label_89
	.word	-68
	.word	4
	.word	_Label_90
	.word	-72
	.word	4
	.word	_Label_91
	.word	-76
	.word	4
	.word	_Label_92
	.word	-80
	.word	4
	.word	0
_Label_74:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_91:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_92:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_28_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_28_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_467:
	push	r0
	sub	r1,1,r1
	bne	_Label_467
	mov	207,r13		! source line 207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=43  sizeInBytes=1
	mov	43,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	printInt
! FOR STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_97 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_98 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_97  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_93:
!   Perform the FOR-LOOP termination test
!   if i > _temp_98 then goto _Label_96		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_96
_Label_94:
	mov	212,r13		! source line 212
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_99 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_100 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_100 [0 ] into _temp_101
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_101 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_106 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_107 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_106  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_102:
!   Perform the FOR-LOOP termination test
!   if j > _temp_107 then goto _Label_105		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_105
_Label_103:
	mov	218,r13		! source line 218
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_104:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_102
! END FOR
_Label_105:
! IF STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_111 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_111 [0 ] into _temp_112
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_110 = *_temp_112  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_110 then goto _Label_109		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_109
!	jmp	_Label_108
_Label_108:
! THEN...
	mov	222,r13		! source line 222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_113 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_113  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	222,r13		! source line 222
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_109:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=44  sizeInBytes=1
	mov	44,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
!   _temp_114 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_119 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_120 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_119  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_115:
!   Perform the FOR-LOOP termination test
!   if j > _temp_120 then goto _Label_118		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_118
_Label_116:
	mov	227,r13		! source line 227
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_117:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_115
! END FOR
_Label_118:
!   Increment the FOR-LOOP index variable and jump back
_Label_95:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_93
! END FOR
_Label_96:
! SEND STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_121 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0SE",r10
!   _temp_122 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_28_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_123
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_124
	.word	8
	.word	4
	.word	_Label_125
	.word	-12
	.word	4
	.word	_Label_126
	.word	-16
	.word	4
	.word	_Label_127
	.word	-20
	.word	4
	.word	_Label_128
	.word	-24
	.word	4
	.word	_Label_129
	.word	-28
	.word	4
	.word	_Label_130
	.word	-32
	.word	4
	.word	_Label_131
	.word	-36
	.word	4
	.word	_Label_132
	.word	-40
	.word	4
	.word	_Label_133
	.word	-44
	.word	4
	.word	_Label_134
	.word	-48
	.word	4
	.word	_Label_135
	.word	-52
	.word	4
	.word	_Label_136
	.word	-56
	.word	4
	.word	_Label_137
	.word	-60
	.word	4
	.word	_Label_138
	.word	-64
	.word	4
	.word	_Label_139
	.word	-68
	.word	4
	.word	_Label_140
	.word	-72
	.word	4
	.word	_Label_141
	.word	-76
	.word	4
	.word	_Label_142
	.word	-80
	.word	4
	.word	_Label_143
	.word	-84
	.word	4
	.word	_Label_144
	.word	-88
	.word	4
	.word	0
_Label_123:
	.ascii	"TestThreadManager\0"
	.align
_Label_124:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_141:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_142:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_143:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_144:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_27_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_27_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_468:
	push	r0
	sub	r1,1,r1
	bne	_Label_468
	mov	252,r13		! source line 252
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_145 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0SE",r10
!   _temp_146 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_147 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_148 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_148  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_153 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_154 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_153  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_149:
!   Perform the FOR-LOOP termination test
!   if i > _temp_154 then goto _Label_152		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_152
_Label_150:
	mov	263,r13		! source line 263
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_155)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_469:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_469
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_157 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_157  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0SE",r10
!   _temp_158 = _function_26_TestProcessManager
	set	_function_26_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_158  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_151:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_149
! END FOR
_Label_152:
! FOR STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_163 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_164 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_163  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_159:
!   Perform the FOR-LOOP termination test
!   if i > _temp_164 then goto _Label_162		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_162
_Label_160:
	mov	271,r13		! source line 271
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_165 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_161:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_159
! END FOR
_Label_162:
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=_temp_168  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_168 == 401 then goto _Label_167		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_167
!	jmp	_Label_166
_Label_166:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_169 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_169  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	276,r13		! source line 276
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_167:
! CALL STATEMENT...
!   _temp_170 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_27_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_171
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_172
	.word	-12
	.word	4
	.word	_Label_173
	.word	-16
	.word	4
	.word	_Label_174
	.word	-20
	.word	4
	.word	_Label_175
	.word	-24
	.word	4
	.word	_Label_176
	.word	-28
	.word	4
	.word	_Label_177
	.word	-32
	.word	4
	.word	_Label_178
	.word	-36
	.word	4
	.word	_Label_179
	.word	-40
	.word	4
	.word	_Label_180
	.word	-44
	.word	4
	.word	_Label_181
	.word	-48
	.word	4
	.word	_Label_182
	.word	-52
	.word	4
	.word	_Label_183
	.word	-56
	.word	4
	.word	_Label_184
	.word	-60
	.word	4
	.word	_Label_185
	.word	-64
	.word	4
	.word	_Label_186
	.word	-68
	.word	4
	.word	_Label_187
	.word	-72
	.word	4
	.word	_Label_188
	.word	-76
	.word	4
	.word	_Label_189
	.word	-80
	.word	4
	.word	0
_Label_171:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_188:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_189:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_26_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_26_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_470:
	push	r0
	sub	r1,1,r1
	bne	_Label_470
	mov	291,r13		! source line 291
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=43  sizeInBytes=1
	mov	43,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CE",r10
	call	printInt
! FOR STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_194 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_195 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_194  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_190:
!   Perform the FOR-LOOP termination test
!   if i > _temp_195 then goto _Label_193		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_193
_Label_191:
	mov	296,r13		! source line 296
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_196 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_197 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_197 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_202 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_203 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_202  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_198:
!   Perform the FOR-LOOP termination test
!   if j > _temp_203 then goto _Label_201		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_201
_Label_199:
	mov	302,r13		! source line 302
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_200:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_198
! END FOR
_Label_201:
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_207 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_206 = *_temp_207  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_206 then goto _Label_205		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_205
!	jmp	_Label_204
_Label_204:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_208 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_208  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_205:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=44  sizeInBytes=1
	mov	44,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_209 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_214 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_215 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_214  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_210:
!   Perform the FOR-LOOP termination test
!   if j > _temp_215 then goto _Label_213		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_213
_Label_211:
	mov	311,r13		! source line 311
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_212:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_210
! END FOR
_Label_213:
!   Increment the FOR-LOOP index variable and jump back
_Label_192:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_190
! END FOR
_Label_193:
! SEND STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   _temp_216 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0SE",r10
!   _temp_217 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_26_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_218
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_219
	.word	8
	.word	4
	.word	_Label_220
	.word	-12
	.word	4
	.word	_Label_221
	.word	-16
	.word	4
	.word	_Label_222
	.word	-20
	.word	4
	.word	_Label_223
	.word	-24
	.word	4
	.word	_Label_224
	.word	-28
	.word	4
	.word	_Label_225
	.word	-32
	.word	4
	.word	_Label_226
	.word	-36
	.word	4
	.word	_Label_227
	.word	-40
	.word	4
	.word	_Label_228
	.word	-44
	.word	4
	.word	_Label_229
	.word	-48
	.word	4
	.word	_Label_230
	.word	-52
	.word	4
	.word	_Label_231
	.word	-56
	.word	4
	.word	_Label_232
	.word	-60
	.word	4
	.word	_Label_233
	.word	-64
	.word	4
	.word	_Label_234
	.word	-68
	.word	4
	.word	_Label_235
	.word	-72
	.word	4
	.word	_Label_236
	.word	-76
	.word	4
	.word	_Label_237
	.word	-80
	.word	4
	.word	0
_Label_218:
	.ascii	"TestProcessManager\0"
	.align
_Label_219:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_234:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_236:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_25_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_25_RunFrameManagerTests,r1
	push	r1
	mov	25,r1
_Label_471:
	push	r0
	sub	r1,1,r1
	bne	_Label_471
	mov	337,r13		! source line 337
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0SE",r10
!   _temp_238 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_239 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_240 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_245 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_246 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_245  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-92]
_Label_241:
!   Perform the FOR-LOOP termination test
!   if i > _temp_246 then goto _Label_244		
	load	[r14+-92],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_244
_Label_242:
	mov	346,r13		! source line 346
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-68]
!   th = alloc (_temp_247)
	load	[r14+-68],r1
	call	_heapAlloc
	store	r1,[r14+-96]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-96],r4
	mov	1041,r3
_Label_472:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_472
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-96],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0SE",r10
!   _temp_249 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-60]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_249  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_250 = _function_24_TestFrameManager
	set	_function_24_TestFrameManager,r1
	store	r1,[r14+-56]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_250  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_243:
!   i = i + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_241
! END FOR
_Label_244:
! FOR STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_255 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_256 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_255  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-92]
_Label_251:
!   Perform the FOR-LOOP termination test
!   if i > _temp_256 then goto _Label_254		
	load	[r14+-92],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_254
_Label_252:
	mov	354,r13		! source line 354
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0SE",r10
!   _temp_257 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-44]
!   Send message Down
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_253:
!   i = i + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_251
! END FOR
_Label_254:
! CALL STATEMENT...
!   _temp_258 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_258  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_263 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_264 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_263  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-92]
_Label_259:
!   Perform the FOR-LOOP termination test
!   if i > _temp_264 then goto _Label_262		
	load	[r14+-92],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_262
_Label_260:
	mov	359,r13		! source line 359
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_265 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_267 = &_Global_frameCount
	set	_Global_frameCount,r1
	store	r1,[r14+-20]
!   Move address of _temp_267 [i ] into _temp_268
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_266 = *_temp_268  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_261:
!   i = i + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_259
! END FOR
_Label_262:
! CALL STATEMENT...
!   _temp_269 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_25_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_270
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_271
	.word	-12
	.word	4
	.word	_Label_272
	.word	-16
	.word	4
	.word	_Label_273
	.word	-20
	.word	4
	.word	_Label_274
	.word	-24
	.word	4
	.word	_Label_275
	.word	-28
	.word	4
	.word	_Label_276
	.word	-32
	.word	4
	.word	_Label_277
	.word	-36
	.word	4
	.word	_Label_278
	.word	-40
	.word	4
	.word	_Label_279
	.word	-44
	.word	4
	.word	_Label_280
	.word	-48
	.word	4
	.word	_Label_281
	.word	-52
	.word	4
	.word	_Label_282
	.word	-56
	.word	4
	.word	_Label_283
	.word	-60
	.word	4
	.word	_Label_284
	.word	-64
	.word	4
	.word	_Label_285
	.word	-68
	.word	4
	.word	_Label_286
	.word	-72
	.word	4
	.word	_Label_287
	.word	-76
	.word	4
	.word	_Label_288
	.word	-80
	.word	4
	.word	_Label_289
	.word	-84
	.word	4
	.word	_Label_290
	.word	-88
	.word	4
	.word	_Label_291
	.word	-92
	.word	4
	.word	_Label_292
	.word	-96
	.word	4
	.word	0
_Label_270:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_291:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_292:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_24_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_24_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_473:
	push	r0
	sub	r1,1,r1
	bne	_Label_473
	mov	390,r13		! source line 390
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=43  sizeInBytes=1
	mov	43,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_293 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_298 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_299 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_298  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_294:
!   Perform the FOR-LOOP termination test
!   if i > _temp_299 then goto _Label_297		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_297
_Label_295:
	mov	396,r13		! source line 396
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_304 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_305 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_304  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_300:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_305 then goto _Label_303		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_303
_Label_301:
	mov	397,r13		! source line 397
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_306 = _temp_307		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_308 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_306  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_309 = _temp_310		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_function_23_CheckAddrSpace
! FOR STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_315 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_316 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_315  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_311:
!   Perform the FOR-LOOP termination test
!   if j > _temp_316 then goto _Label_314		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_314
_Label_312:
	mov	403,r13		! source line 403
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_313:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_311
! END FOR
_Label_314:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=44  sizeInBytes=1
	mov	44,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_318 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_317 = _temp_318		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CA",r10
	call	_function_22_CheckAddrSpace2
! SEND STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_320 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_319 = _temp_320		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_321 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_319  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_326 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_327 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_326  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_322:
!   Perform the FOR-LOOP termination test
!   if j > _temp_327 then goto _Label_325		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_325
_Label_323:
	mov	410,r13		! source line 410
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_324:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_322
! END FOR
_Label_325:
!   Increment the FOR-LOOP index variable and jump back
_Label_302:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_300
! END FOR
_Label_303:
!   Increment the FOR-LOOP index variable and jump back
_Label_296:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_294
! END FOR
_Label_297:
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_328 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_329 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0SE",r10
!   _temp_330 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_24_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_331
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_332
	.word	8
	.word	4
	.word	_Label_333
	.word	-12
	.word	4
	.word	_Label_334
	.word	-16
	.word	4
	.word	_Label_335
	.word	-20
	.word	4
	.word	_Label_336
	.word	-24
	.word	4
	.word	_Label_337
	.word	-28
	.word	4
	.word	_Label_338
	.word	-32
	.word	4
	.word	_Label_339
	.word	-36
	.word	4
	.word	_Label_340
	.word	-40
	.word	4
	.word	_Label_341
	.word	-44
	.word	4
	.word	_Label_342
	.word	-48
	.word	4
	.word	_Label_343
	.word	-52
	.word	4
	.word	_Label_344
	.word	-56
	.word	4
	.word	_Label_345
	.word	-60
	.word	4
	.word	_Label_346
	.word	-64
	.word	4
	.word	_Label_347
	.word	-68
	.word	4
	.word	_Label_348
	.word	-72
	.word	4
	.word	_Label_349
	.word	-76
	.word	4
	.word	_Label_350
	.word	-80
	.word	4
	.word	_Label_351
	.word	-84
	.word	4
	.word	_Label_352
	.word	-88
	.word	4
	.word	_Label_353
	.word	-92
	.word	4
	.word	_Label_354
	.word	-96
	.word	4
	.word	_Label_355
	.word	-100
	.word	4
	.word	_Label_356
	.word	-104
	.word	4
	.word	_Label_357
	.word	-108
	.word	4
	.word	_Label_358
	.word	-112
	.word	4
	.word	_Label_359
	.word	-116
	.word	4
	.word	0
_Label_331:
	.ascii	"TestFrameManager\0"
	.align
_Label_332:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_355:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_356:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_357:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_358:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_359:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_23_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_23_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_474:
	push	r0
	sub	r1,1,r1
	bne	_Label_474
	mov	425,r13		! source line 425
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_363 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_362 = *_temp_363  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_362 == n then goto _Label_361		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_361
!	jmp	_Label_360
_Label_360:
! THEN...
	mov	428,r13		! source line 428
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_364 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	428,r13		! source line 428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_361:
! FOR STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_369 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_370 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_369  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_365:
!   Perform the FOR-LOOP termination test
!   if i > _temp_370 then goto _Label_368		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_368
_Label_366:
	mov	430,r13		! source line 430
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   _temp_371 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_371 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_375		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_375
	jmp	_Label_372
_Label_375:
!   if frameNumber < 27 then goto _Label_374		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_374
	jmp	_Label_372
_Label_374:
!   _temp_376 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_376) then goto _Label_373
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_373
!	jmp	_Label_372
_Label_372:
! THEN...
	mov	437,r13		! source line 437
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_377 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	437,r13		! source line 437
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_373:
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   _temp_378 = &_Global_frameCount
	set	_Global_frameCount,r1
	store	r1,[r14+-48]
!   Move address of _temp_378 [frameNumber ] into _temp_379
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_382 = &_Global_frameCount
	set	_Global_frameCount,r1
	store	r1,[r14+-32]
!   Move address of _temp_382 [frameNumber ] into _temp_383
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_381 = *_temp_383  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_380 = _temp_381 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_379 = _temp_380  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0IF",r10
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_390  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_390) then goto _Label_389
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_389
	jmp	_Label_384
_Label_389:
	mov	441,r13		! source line 441
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_384 else goto _Label_388
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_388
	jmp	_Label_384
_Label_388:
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_384 else goto _Label_387
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_387
	jmp	_Label_384
_Label_387:
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_391  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_391 then goto _Label_386 else goto _Label_384
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_384
	jmp	_Label_386
_Label_386:
	mov	444,r13		! source line 444
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_392  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_392 then goto _Label_385 else goto _Label_384
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_384
	jmp	_Label_385
_Label_384:
! THEN...
	mov	445,r13		! source line 445
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_393 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	445,r13		! source line 445
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_385:
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_394 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_394  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_367:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_365
! END FOR
_Label_368:
! RETURN STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_23_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_395
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_396
	.word	8
	.word	4
	.word	_Label_397
	.word	12
	.word	4
	.word	_Label_398
	.word	16
	.word	4
	.word	_Label_399
	.word	-16
	.word	4
	.word	_Label_400
	.word	-20
	.word	4
	.word	_Label_401
	.word	-9
	.word	1
	.word	_Label_402
	.word	-10
	.word	1
	.word	_Label_403
	.word	-24
	.word	4
	.word	_Label_404
	.word	-28
	.word	4
	.word	_Label_405
	.word	-32
	.word	4
	.word	_Label_406
	.word	-36
	.word	4
	.word	_Label_407
	.word	-40
	.word	4
	.word	_Label_408
	.word	-44
	.word	4
	.word	_Label_409
	.word	-48
	.word	4
	.word	_Label_410
	.word	-52
	.word	4
	.word	_Label_411
	.word	-56
	.word	4
	.word	_Label_412
	.word	-60
	.word	4
	.word	_Label_413
	.word	-64
	.word	4
	.word	_Label_414
	.word	-68
	.word	4
	.word	_Label_415
	.word	-72
	.word	4
	.word	_Label_416
	.word	-76
	.word	4
	.word	_Label_417
	.word	-80
	.word	4
	.word	_Label_418
	.word	-84
	.word	4
	.word	_Label_419
	.word	-88
	.word	4
	.word	_Label_420
	.word	-92
	.word	4
	.word	0
_Label_395:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_396:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_398:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_401:
	.byte	'C'
	.ascii	"_temp_392\0"
	.align
_Label_402:
	.byte	'C'
	.ascii	"_temp_391\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_22_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_22_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_475:
	push	r0
	sub	r1,1,r1
	bne	_Label_475
	mov	458,r13		! source line 458
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_424 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_423 = *_temp_424  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_423 == n then goto _Label_422		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_422
!	jmp	_Label_421
_Label_421:
! THEN...
	mov	461,r13		! source line 461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_425 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_425  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	461,r13		! source line 461
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_422:
! FOR STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_430 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_431 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_430  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_426:
!   Perform the FOR-LOOP termination test
!   if i > _temp_431 then goto _Label_429		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_429
_Label_427:
	mov	463,r13		! source line 463
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   _temp_432 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_432 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_436		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_436
	jmp	_Label_433
_Label_436:
!   if frameNumber < 27 then goto _Label_435		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_435
	jmp	_Label_433
_Label_435:
!   _temp_437 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_437) then goto _Label_434
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_434
!	jmp	_Label_433
_Label_433:
! THEN...
	mov	470,r13		! source line 470
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_438 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	470,r13		! source line 470
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_434:
! IF STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_441 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_442 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_441 == _temp_442 then goto _Label_440		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_440
!	jmp	_Label_439
_Label_439:
! THEN...
	mov	473,r13		! source line 473
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_443 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	473,r13		! source line 473
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_440:
!   Increment the FOR-LOOP index variable and jump back
_Label_428:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_426
! END FOR
_Label_429:
! RETURN STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_22_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_444
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_445
	.word	8
	.word	4
	.word	_Label_446
	.word	12
	.word	4
	.word	_Label_447
	.word	16
	.word	4
	.word	_Label_448
	.word	-12
	.word	4
	.word	_Label_449
	.word	-16
	.word	4
	.word	_Label_450
	.word	-20
	.word	4
	.word	_Label_451
	.word	-24
	.word	4
	.word	_Label_452
	.word	-28
	.word	4
	.word	_Label_453
	.word	-32
	.word	4
	.word	_Label_454
	.word	-36
	.word	4
	.word	_Label_455
	.word	-40
	.word	4
	.word	_Label_456
	.word	-44
	.word	4
	.word	_Label_457
	.word	-48
	.word	4
	.word	_Label_458
	.word	-52
	.word	4
	.word	_Label_459
	.word	-56
	.word	4
	.word	_Label_460
	.word	-60
	.word	4
	.word	_Label_461
	.word	-64
	.word	4
	.word	0
_Label_444:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_445:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_446:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_459:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_460:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
