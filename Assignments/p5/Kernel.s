! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_214:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_213:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_212:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_211:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_210:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_209:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_208:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_207:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_206:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_205:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_204:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_203:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_202:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_201:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_200:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_199:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_198:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_197:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_196:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_195:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_194:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_193:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_192:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_191:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_190:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_189:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_188:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_187:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_186:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_185:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_184:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_183:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_182:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_181:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_180:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_179:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_178:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_177:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_176:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_175:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_174:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_173:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_172:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_171:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_170:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_169:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_168:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_167:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_166:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_165:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_164:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_163:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_162:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_161:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_160:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_158:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_157:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_156:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_155:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_153:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_152:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_148:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_147:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_146:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_145:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_143:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_142:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_141:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_140:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_139:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_138:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_137:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_136:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_135:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_134:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_133:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_132:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_131:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_130:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_129:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_128:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_127:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_126:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_125:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_124:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_122:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_121:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_120:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_119:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_118:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_117:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_114:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_113:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_112:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_110:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_109:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_108:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_107:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_104:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_103:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_102:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_101:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_100:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_99:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_98:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_97:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_96:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_95:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_94:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_92:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_91:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_90:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_89:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_88:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_87:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_86:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_85:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_83:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_82:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_81:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_80:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_79:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_77:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_76:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_75:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_74:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_73:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_72:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_71:
	.word	29			! length
	.ascii	"Handle_Sys_Close is happening"
	.align
_StringConst_70:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_69:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_68:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_67:
	.word	29			! length
	.ascii	"Handle_Sys_Seek is happening\n"
	.align
_StringConst_66:
	.word	16			! length
	.ascii	"size in bytes = "
	.align
_StringConst_65:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_64:
	.word	28			! length
	.ascii	"virtual address of buffer = "
	.align
_StringConst_63:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_62:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_61:
	.word	31			! length
	.ascii	"Handle_Sys_Write is happening \n"
	.align
_StringConst_60:
	.word	16			! length
	.ascii	"size in bytes = "
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	28			! length
	.ascii	"virtual address of buffer = "
	.align
_StringConst_57:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	30			! length
	.ascii	"Handle_Sys_Read is happening \n"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_53:
	.word	27			! length
	.ascii	"Virtual address of filename"
	.align
_StringConst_52:
	.word	30			! length
	.ascii	"Handle_Sys_Open is haappening\n"
	.align
_StringConst_51:
	.word	40			! length
	.ascii	"ERROR attempting to GetStringFromVirtual"
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_49:
	.word	27			! length
	.ascii	"Virtual address of filename"
	.align
_StringConst_48:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked..\n"
	.align
_StringConst_47:
	.word	32			! length
	.ascii	"Error using GetStringFromVirtual"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"In Handle_Sys_Exec, is not able to get newAddrSpace\n"
	.align
_StringConst_45:
	.word	13			! length
	.ascii	"processID is:"
	.align
_StringConst_44:
	.word	29			! length
	.ascii	"Handle_Sys_Join is happening\n"
	.align
_StringConst_43:
	.word	30			! length
	.ascii	"Handle_Sys_Fork is happenning\n"
	.align
_StringConst_42:
	.word	35			! length
	.ascii	"Handle_Sys_Yeild is happening ... \n"
	.align
_StringConst_41:
	.word	30			! length
	.ascii	"Syscall shutdown was invoked.."
	.align
_StringConst_40:
	.word	16			! length
	.ascii	"returnStatus is:"
	.align
_StringConst_39:
	.word	29			! length
	.ascii	"Handle_Sys_Exit is happening\n"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	30			! length
	.ascii	"Could Not Open TestProgram1..!"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	22			! length
	.ascii	"UserLevelProgramThread"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x406e8bb9,r4		! myHashVal = 1080986553
	cmp	r3,r4
	be	_Label_222
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
_Label_222:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_223
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_223
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_223
_Label_223:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_224 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_224  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2983:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2983
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_229 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_230 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_231 = _temp_230 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_231 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2984:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2984
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_233 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_234 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_233  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_235 = _function_221_IdleFunction
	set	_function_221_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_236 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_235  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_237
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_238
	.word	-12
	.word	4
	.word	_Label_239
	.word	-16
	.word	4
	.word	_Label_240
	.word	-20
	.word	4
	.word	_Label_241
	.word	-24
	.word	4
	.word	_Label_242
	.word	-28
	.word	4
	.word	_Label_243
	.word	-32
	.word	4
	.word	_Label_244
	.word	-36
	.word	4
	.word	_Label_245
	.word	-40
	.word	4
	.word	_Label_246
	.word	-44
	.word	4
	.word	_Label_247
	.word	-48
	.word	4
	.word	_Label_248
	.word	-52
	.word	4
	.word	_Label_249
	.word	-56
	.word	4
	.word	_Label_250
	.word	-60
	.word	4
	.word	0
_Label_237:
	.ascii	"InitializeScheduler\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_221_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_221_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_251:
!	jmp	_Label_252
_Label_252:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_254 else goto _Label_255
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_255
	jmp	_Label_254
_Label_254:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_257
_Label_255:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
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
! END IF...
_Label_257:
! END WHILE...
	jmp	_Label_251
_Label_253:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_221_IdleFunction:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	_Label_261
	.word	-16
	.word	4
	.word	0
_Label_258:
	.ascii	"IdleFunction\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_261:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_264 ) then goto _Label_263		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_263
!	jmp	_Label_262
_Label_262:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_266 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_266 [0 ] into _temp_267
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
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
	store	r2,[r14+-60]
!   _temp_265 = _temp_267		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_263:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_268 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_268 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_269:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_273 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_272  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_272 then goto _Label_271 else goto _Label_270
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_270
	jmp	_Label_271
_Label_270:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_274 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_275 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_269
_Label_271:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_278 ) then goto _Label_277		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_277
!	jmp	_Label_276
_Label_276:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_280 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_280 [0 ] into _temp_281
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_279 = _temp_281		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_282 = *_temp_283  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_282) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_284 = _temp_282 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_277:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_285
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_286
	.word	8
	.word	4
	.word	_Label_287
	.word	-16
	.word	4
	.word	_Label_288
	.word	-20
	.word	4
	.word	_Label_289
	.word	-24
	.word	4
	.word	_Label_290
	.word	-28
	.word	4
	.word	_Label_291
	.word	-32
	.word	4
	.word	_Label_292
	.word	-36
	.word	4
	.word	_Label_293
	.word	-40
	.word	4
	.word	_Label_294
	.word	-44
	.word	4
	.word	_Label_295
	.word	-48
	.word	4
	.word	_Label_296
	.word	-52
	.word	4
	.word	_Label_297
	.word	-9
	.word	1
	.word	_Label_298
	.word	-56
	.word	4
	.word	_Label_299
	.word	-60
	.word	4
	.word	_Label_300
	.word	-64
	.word	4
	.word	_Label_301
	.word	-68
	.word	4
	.word	_Label_302
	.word	-72
	.word	4
	.word	_Label_303
	.word	-76
	.word	4
	.word	_Label_304
	.word	-80
	.word	4
	.word	0
_Label_285:
	.ascii	"Run\0"
	.align
_Label_286:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_297:
	.byte	'C'
	.ascii	"_temp_272\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_303:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_305 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_306 = _function_220_ThreadPrintShort
	set	_function_220_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_307 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_306  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_308
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_309
	.word	-12
	.word	4
	.word	_Label_310
	.word	-16
	.word	4
	.word	_Label_311
	.word	-20
	.word	4
	.word	_Label_312
	.word	-24
	.word	4
	.word	0
_Label_308:
	.ascii	"PrintReadyList\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_312:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_313 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_313  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_314 = *_temp_315  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_316 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_317
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_318
	.word	-12
	.word	4
	.word	_Label_319
	.word	-16
	.word	4
	.word	_Label_320
	.word	-20
	.word	4
	.word	_Label_321
	.word	-24
	.word	4
	.word	_Label_322
	.word	-28
	.word	4
	.word	_Label_323
	.word	-32
	.word	4
	.word	0
_Label_317:
	.ascii	"ThreadStartMain\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_322:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_324 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_325 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_327
	.word	-12
	.word	4
	.word	_Label_328
	.word	-16
	.word	4
	.word	_Label_329
	.word	-20
	.word	4
	.word	0
_Label_326:
	.ascii	"ThreadFinish\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_330 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_332		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_332
!	jmp	_Label_331
_Label_331:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_333 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_335 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_334 = *_temp_335  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_332:
! CALL STATEMENT...
!   _temp_336 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_337 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_338 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_339
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_340
	.word	8
	.word	4
	.word	_Label_341
	.word	-12
	.word	4
	.word	_Label_342
	.word	-16
	.word	4
	.word	_Label_343
	.word	-20
	.word	4
	.word	_Label_344
	.word	-24
	.word	4
	.word	_Label_345
	.word	-28
	.word	4
	.word	_Label_346
	.word	-32
	.word	4
	.word	_Label_347
	.word	-36
	.word	4
	.word	_Label_348
	.word	-40
	.word	4
	.word	0
_Label_339:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_340:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_350		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_350
!	jmp	_Label_349
_Label_349:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_351
_Label_350:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_351:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_352
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_353
	.word	8
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	0
_Label_352:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_353:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_354:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_220_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_220_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
	mov	640,r13		! source line 640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_358		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_358
!   _temp_357 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_359
_Label_358:
!   _temp_357 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_359:
!   if _temp_357 then goto _Label_356 else goto _Label_355
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_355
	jmp	_Label_356
_Label_355:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_360 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_356:
! CALL STATEMENT...
!   _temp_361 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_363 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_362 = *_temp_363  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	655,r13		! source line 655
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_373 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_372 = *_temp_373  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_367
	cmp	r1,2
	be	_Label_368
	cmp	r1,3
	be	_Label_369
	cmp	r1,4
	be	_Label_370
	cmp	r1,5
	be	_Label_371
	jmp	_Label_365
! CASE 1...
_Label_367:
! CALL STATEMENT...
!   _temp_374 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_366
! CASE 2...
_Label_368:
! CALL STATEMENT...
!   _temp_375 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_366
! CASE 3...
_Label_369:
! CALL STATEMENT...
!   _temp_376 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_366
! CASE 4...
_Label_370:
! CALL STATEMENT...
!   _temp_377 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_366
! CASE 5...
_Label_371:
! CALL STATEMENT...
!   _temp_378 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_366
! DEFAULT CASE...
_Label_365:
! CALL STATEMENT...
!   _temp_379 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	672,r13		! source line 672
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_366:
! CALL STATEMENT...
!   _temp_380 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_381 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_382 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_220_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_383
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_384
	.word	8
	.word	4
	.word	_Label_385
	.word	-16
	.word	4
	.word	_Label_386
	.word	-20
	.word	4
	.word	_Label_387
	.word	-24
	.word	4
	.word	_Label_388
	.word	-28
	.word	4
	.word	_Label_389
	.word	-32
	.word	4
	.word	_Label_390
	.word	-36
	.word	4
	.word	_Label_391
	.word	-40
	.word	4
	.word	_Label_392
	.word	-44
	.word	4
	.word	_Label_393
	.word	-48
	.word	4
	.word	_Label_394
	.word	-52
	.word	4
	.word	_Label_395
	.word	-56
	.word	4
	.word	_Label_396
	.word	-60
	.word	4
	.word	_Label_397
	.word	-64
	.word	4
	.word	_Label_398
	.word	-68
	.word	4
	.word	_Label_399
	.word	-72
	.word	4
	.word	_Label_400
	.word	-76
	.word	4
	.word	_Label_401
	.word	-9
	.word	1
	.word	_Label_402
	.word	-80
	.word	4
	.word	0
_Label_383:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_384:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_401:
	.byte	'C'
	.ascii	"_temp_357\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_219_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_219_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
	mov	956,r13		! source line 956
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_403 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	960,r13		! source line 960
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	961,r13		! source line 961
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_219_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_404
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_405
	.word	8
	.word	4
	.word	_Label_406
	.word	-12
	.word	4
	.word	0
_Label_404:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_405:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	966,r13		! source line 966
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_407 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	972,r13		! source line 972
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_408
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_409
	.word	8
	.word	4
	.word	_Label_410
	.word	-12
	.word	4
	.word	0
_Label_408:
	.ascii	"ProcessFinish\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
	mov	1445,r13		! source line 1445
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1457,r13		! source line 1457
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
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_411
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_411:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	1463,r13		! source line 1463
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0IF",r10
!   _temp_415 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_416 = _temp_415 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_414 = *_temp_416  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_414 == 0 then goto _Label_413		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_413
!	jmp	_Label_412
_Label_412:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0SE",r10
!   _temp_418 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_419 = _temp_418 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_417 = *_temp_419  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_417) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_413:
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_420
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_421
	.word	-12
	.word	4
	.word	_Label_422
	.word	-16
	.word	4
	.word	_Label_423
	.word	-20
	.word	4
	.word	_Label_424
	.word	-24
	.word	4
	.word	_Label_425
	.word	-28
	.word	4
	.word	_Label_426
	.word	-32
	.word	4
	.word	0
_Label_420:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
	mov	1489,r13		! source line 1489
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
	mov	1493,r13		! source line 1493
	mov	"\0\0SE",r10
!   _temp_427 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0SE",r10
!   _temp_428 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_428  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0SE",r10
!   _temp_429 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_430
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_431
	.word	-12
	.word	4
	.word	_Label_432
	.word	-16
	.word	4
	.word	_Label_433
	.word	-20
	.word	4
	.word	_Label_434
	.word	-24
	.word	4
	.word	0
_Label_430:
	.ascii	"InitFirstProcess\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_434:
	.byte	'P'
	.ascii	"thread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
	mov	1500,r13		! source line 1500
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
!   _temp_435 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-76]
!   Send message GetANewProcess
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=processControlBlock  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = processControlBlock + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_436 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_437 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_437 = processControlBlock  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
	mov	1514,r13		! source line 1514
	mov	"\0\0SE",r10
!   _temp_438 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_439 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_438  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openedFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0IF",r10
!   if intIsZero (openedFile) then goto _Label_440
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_440
	jmp	_Label_441
_Label_440:
! THEN...
	mov	1516,r13		! source line 1516
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1516,r13		! source line 1516
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
	mov	1519,r13		! source line 1519
	mov	"\0\0SE",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = processControlBlock + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_443 = _temp_444		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openedFile) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_443  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0SE",r10
!   _temp_445 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=openedFile  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0AS",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = processControlBlock + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_448 = _temp_447 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_446 = *_temp_448  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_446 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_449 [999 ] into _temp_450
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_450		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1528,r13		! source line 1528
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0SE",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = processControlBlock + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_452 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_453 = initSystemStackTop		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1532,r13		! source line 1532
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_454
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_455
	.word	8
	.word	4
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	_Label_463
	.word	-40
	.word	4
	.word	_Label_464
	.word	-44
	.word	4
	.word	_Label_465
	.word	-48
	.word	4
	.word	_Label_466
	.word	-52
	.word	4
	.word	_Label_467
	.word	-56
	.word	4
	.word	_Label_468
	.word	-60
	.word	4
	.word	_Label_469
	.word	-64
	.word	4
	.word	_Label_470
	.word	-68
	.word	4
	.word	_Label_471
	.word	-72
	.word	4
	.word	_Label_472
	.word	-76
	.word	4
	.word	_Label_473
	.word	-80
	.word	4
	.word	_Label_474
	.word	-84
	.word	4
	.word	_Label_475
	.word	-88
	.word	4
	.word	_Label_476
	.word	-92
	.word	4
	.word	_Label_477
	.word	-96
	.word	4
	.word	_Label_478
	.word	-100
	.word	4
	.word	0
_Label_454:
	.ascii	"StartUserProcess\0"
	.align
_Label_455:
	.byte	'I'
	.ascii	"processNum\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_473:
	.byte	'P'
	.ascii	"processControlBlock\0"
	.align
_Label_474:
	.byte	'P'
	.ascii	"openedFile\0"
	.align
_Label_475:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_477:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_478:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1537,r13		! source line 1537
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_479
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_479:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	1551,r13		! source line 1551
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_480 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_480  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1558,r13		! source line 1558
	mov	"\0\0CA",r10
	call	_function_218_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_481
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_482
	.word	-12
	.word	4
	.word	0
_Label_481:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	1563,r13		! source line 1563
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_483 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_483  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1570,r13		! source line 1570
	mov	"\0\0CA",r10
	call	_function_218_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_484
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_485
	.word	-12
	.word	4
	.word	0
_Label_484:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	1575,r13		! source line 1575
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_486 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1582,r13		! source line 1582
	mov	"\0\0CA",r10
	call	_function_218_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_487
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_488
	.word	-12
	.word	4
	.word	0
_Label_487:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	1587,r13		! source line 1587
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_489 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_489  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1594,r13		! source line 1594
	mov	"\0\0CA",r10
	call	_function_218_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_490
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_491
	.word	-12
	.word	4
	.word	0
_Label_490:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1599,r13		! source line 1599
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_492 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1606,r13		! source line 1606
	mov	"\0\0CA",r10
	call	_function_218_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_493
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_494
	.word	-12
	.word	4
	.word	0
_Label_493:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	1611,r13		! source line 1611
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_495 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CA",r10
	call	_function_218_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_496
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_497
	.word	-12
	.word	4
	.word	0
_Label_496:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	1623,r13		! source line 1623
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_498 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1630,r13		! source line 1630
	mov	"\0\0CA",r10
	call	_function_218_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_499
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_499:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_218_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_218_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1635,r13		! source line 1635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_501 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_502 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_506 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_505 = *_temp_506  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_505 == 0 then goto _Label_504		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_504
!	jmp	_Label_503
_Label_503:
! THEN...
	mov	1646,r13		! source line 1646
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_508 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_507 = *_temp_508  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_507) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_509
_Label_504:
! ELSE...
	mov	1648,r13		! source line 1648
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_510 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_509:
! SEND STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1656,r13		! source line 1656
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_218_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_511
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_512
	.word	8
	.word	4
	.word	_Label_513
	.word	-12
	.word	4
	.word	_Label_514
	.word	-16
	.word	4
	.word	_Label_515
	.word	-20
	.word	4
	.word	_Label_516
	.word	-24
	.word	4
	.word	_Label_517
	.word	-28
	.word	4
	.word	_Label_518
	.word	-32
	.word	4
	.word	_Label_519
	.word	-36
	.word	4
	.word	0
_Label_511:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_512:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1661,r13		! source line 1661
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1682,r13		! source line 1682
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3008
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_520
_Label_3008:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_520
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_520
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_534,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_534:
	jmp	_Label_526	! 1:	
	jmp	_Label_533	! 2:	
	jmp	_Label_523	! 3:	
	jmp	_Label_522	! 4:	
	jmp	_Label_525	! 5:	
	jmp	_Label_524	! 6:	
	jmp	_Label_527	! 7:	
	jmp	_Label_528	! 8:	
	jmp	_Label_529	! 9:	
	jmp	_Label_530	! 10:	
	jmp	_Label_531	! 11:	
	jmp	_Label_532	! 12:	
! CASE 4...
_Label_522:
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0RE",r10
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_535  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_535  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_523:
! CALL STATEMENT...
!   Call the function
	mov	1686,r13		! source line 1686
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_524:
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_536  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_536  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_525:
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1691,r13		! source line 1691
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_537  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_537  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_526:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_527:
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_538  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_538  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_528:
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1698,r13		! source line 1698
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_539  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_539  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_529:
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_540  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_540  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_530:
! RETURN STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_541  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_541  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_531:
! RETURN STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_542  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_542  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_532:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_533:
! CALL STATEMENT...
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_520:
! CALL STATEMENT...
!   _temp_543 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_544 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1715,r13		! source line 1715
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_521:
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_545
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_546
	.word	8
	.word	4
	.word	_Label_547
	.word	12
	.word	4
	.word	_Label_548
	.word	16
	.word	4
	.word	_Label_549
	.word	20
	.word	4
	.word	_Label_550
	.word	24
	.word	4
	.word	_Label_551
	.word	-12
	.word	4
	.word	_Label_552
	.word	-16
	.word	4
	.word	_Label_553
	.word	-20
	.word	4
	.word	_Label_554
	.word	-24
	.word	4
	.word	_Label_555
	.word	-28
	.word	4
	.word	_Label_556
	.word	-32
	.word	4
	.word	_Label_557
	.word	-36
	.word	4
	.word	_Label_558
	.word	-40
	.word	4
	.word	_Label_559
	.word	-44
	.word	4
	.word	_Label_560
	.word	-48
	.word	4
	.word	0
_Label_545:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_546:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_547:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_549:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	1724,r13		! source line 1724
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_561 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_562 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1728,r13		! source line 1728
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_563
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_564
	.word	8
	.word	4
	.word	_Label_565
	.word	-12
	.word	4
	.word	_Label_566
	.word	-16
	.word	4
	.word	0
_Label_563:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	1734,r13		! source line 1734
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_567 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1736,r13		! source line 1736
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_568
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_569
	.word	-12
	.word	4
	.word	0
_Label_568:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	1741,r13		! source line 1741
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_570 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_571
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_572
	.word	-12
	.word	4
	.word	0
_Label_571:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	1748,r13		! source line 1748
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_573 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_574
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_575
	.word	-12
	.word	4
	.word	0
_Label_574:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1756,r13		! source line 1756
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_576 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_577 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_578
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_579
	.word	8
	.word	4
	.word	_Label_580
	.word	-12
	.word	4
	.word	_Label_581
	.word	-16
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	68,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3015:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3015
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0AS",r10
	mov	1784,r13		! source line 1784
	mov	"\0\0SE",r10
!   _temp_583 = &strBuffer
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_584 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_585 = *_temp_586  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_585) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _temp_585 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_583  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_584  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_589		(int)
	load	[r14+-148],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_589
!	jmp	_Label_588
_Label_588:
! THEN...
	mov	1790,r13		! source line 1790
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_589:
! ASSIGNMENT STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0AS",r10
	mov	1795,r13		! source line 1795
	mov	"\0\0SE",r10
!   _temp_590 = &strBuffer
	add	r14,-172,r1
	store	r1,[r14+-100]
!   _temp_591 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_590  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openedFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0IF",r10
!   if intIsZero (openedFile) then goto _Label_592
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_592
	jmp	_Label_593
_Label_592:
! THEN...
	mov	1797,r13		! source line 1797
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_593:
! SEND STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0SE",r10
!   _temp_594 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-92]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
	mov	1803,r13		! source line 1803
	mov	"\0\0SE",r10
!   _temp_595 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-88]
!   if intIsZero (openedFile) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_595  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_597		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_597
!	jmp	_Label_596
_Label_596:
! THEN...
	mov	1805,r13		! source line 1805
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_598 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_597:
! SEND STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_600 = *_temp_601  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_600) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _temp_600 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   _temp_599 = _temp_602		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-80]
!   _temp_603 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_599  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_605 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_604 = *_temp_605  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_604) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _temp_604 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_606 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-52],r4
	mov	23,r3
_Label_3016:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3016
! SEND STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0SE",r10
!   _temp_607 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=openedFile  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_609 = *_temp_610  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_609) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _temp_609 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_612 = _temp_611 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_608 = *_temp_612  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_608 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_613 [999 ] into _temp_614
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
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
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_614		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_615 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_616 = initSystemStackTop		(4 bytes)
	load	[r14+-144],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_616  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_617
	.word	4		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_618
	.word	8
	.word	4
	.word	_Label_619
	.word	-12
	.word	4
	.word	_Label_620
	.word	-16
	.word	4
	.word	_Label_621
	.word	-20
	.word	4
	.word	_Label_622
	.word	-24
	.word	4
	.word	_Label_623
	.word	-28
	.word	4
	.word	_Label_624
	.word	-32
	.word	4
	.word	_Label_625
	.word	-36
	.word	4
	.word	_Label_626
	.word	-40
	.word	4
	.word	_Label_627
	.word	-44
	.word	4
	.word	_Label_628
	.word	-48
	.word	4
	.word	_Label_629
	.word	-52
	.word	4
	.word	_Label_630
	.word	-56
	.word	4
	.word	_Label_631
	.word	-60
	.word	4
	.word	_Label_632
	.word	-64
	.word	4
	.word	_Label_633
	.word	-68
	.word	4
	.word	_Label_634
	.word	-72
	.word	4
	.word	_Label_635
	.word	-76
	.word	4
	.word	_Label_636
	.word	-80
	.word	4
	.word	_Label_637
	.word	-84
	.word	4
	.word	_Label_638
	.word	-88
	.word	4
	.word	_Label_639
	.word	-92
	.word	4
	.word	_Label_640
	.word	-96
	.word	4
	.word	_Label_641
	.word	-100
	.word	4
	.word	_Label_642
	.word	-104
	.word	4
	.word	_Label_643
	.word	-108
	.word	4
	.word	_Label_644
	.word	-112
	.word	4
	.word	_Label_645
	.word	-116
	.word	4
	.word	_Label_646
	.word	-120
	.word	4
	.word	_Label_647
	.word	-124
	.word	4
	.word	_Label_648
	.word	-128
	.word	4
	.word	_Label_649
	.word	-132
	.word	4
	.word	_Label_650
	.word	-136
	.word	4
	.word	_Label_651
	.word	-140
	.word	4
	.word	_Label_652
	.word	-144
	.word	4
	.word	_Label_653
	.word	-148
	.word	4
	.word	_Label_654
	.word	-172
	.word	24
	.word	_Label_655
	.word	-264
	.word	92
	.word	0
_Label_617:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_618:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_648:
	.byte	'P'
	.ascii	"openedFile\0"
	.align
_Label_649:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_650:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_651:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_652:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_653:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_654:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_655:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	22,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0AS",r10
	mov	1844,r13		! source line 1844
	mov	"\0\0SE",r10
!   _temp_656 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-52]
!   _temp_657 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_658 = *_temp_659  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_658) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = _temp_658 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_656  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_657  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_662		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_662
!	jmp	_Label_661
_Label_661:
! THEN...
	mov	1849,r13		! source line 1849
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_663 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1849,r13		! source line 1849
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_662:
! CALL STATEMENT...
!   _temp_664 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_665 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   _temp_666 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_666  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_667 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_668 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_669
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_670
	.word	8
	.word	4
	.word	_Label_671
	.word	-12
	.word	4
	.word	_Label_672
	.word	-16
	.word	4
	.word	_Label_673
	.word	-20
	.word	4
	.word	_Label_674
	.word	-24
	.word	4
	.word	_Label_675
	.word	-28
	.word	4
	.word	_Label_676
	.word	-32
	.word	4
	.word	_Label_677
	.word	-36
	.word	4
	.word	_Label_678
	.word	-40
	.word	4
	.word	_Label_679
	.word	-44
	.word	4
	.word	_Label_680
	.word	-48
	.word	4
	.word	_Label_681
	.word	-52
	.word	4
	.word	_Label_682
	.word	-76
	.word	24
	.word	_Label_683
	.word	-80
	.word	4
	.word	0
_Label_669:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_670:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_682:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_683:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	22,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	1865,r13		! source line 1865
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0AS",r10
	mov	1872,r13		! source line 1872
	mov	"\0\0SE",r10
!   _temp_684 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-52]
!   _temp_685 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_686 = *_temp_687  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_686) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_688 = _temp_686 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_684  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_685  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_690		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_690
!	jmp	_Label_689
_Label_689:
! THEN...
	mov	1875,r13		! source line 1875
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_691 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1875,r13		! source line 1875
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_690:
! CALL STATEMENT...
!   _temp_692 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_693 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   _temp_694 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_694  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_695 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_696 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_696  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_697
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_698
	.word	8
	.word	4
	.word	_Label_699
	.word	-12
	.word	4
	.word	_Label_700
	.word	-16
	.word	4
	.word	_Label_701
	.word	-20
	.word	4
	.word	_Label_702
	.word	-24
	.word	4
	.word	_Label_703
	.word	-28
	.word	4
	.word	_Label_704
	.word	-32
	.word	4
	.word	_Label_705
	.word	-36
	.word	4
	.word	_Label_706
	.word	-40
	.word	4
	.word	_Label_707
	.word	-44
	.word	4
	.word	_Label_708
	.word	-48
	.word	4
	.word	_Label_709
	.word	-52
	.word	4
	.word	_Label_710
	.word	-76
	.word	24
	.word	_Label_711
	.word	-80
	.word	4
	.word	0
_Label_697:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_698:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_710:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_711:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	8,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	1890,r13		! source line 1890
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_712 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_713 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_714 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_715 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_716 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_717 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_719
	.word	12		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_720
	.word	8
	.word	4
	.word	_Label_721
	.word	12
	.word	4
	.word	_Label_722
	.word	16
	.word	4
	.word	_Label_723
	.word	-12
	.word	4
	.word	_Label_724
	.word	-16
	.word	4
	.word	_Label_725
	.word	-20
	.word	4
	.word	_Label_726
	.word	-24
	.word	4
	.word	_Label_727
	.word	-28
	.word	4
	.word	_Label_728
	.word	-32
	.word	4
	.word	_Label_729
	.word	-36
	.word	4
	.word	0
_Label_719:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_721:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	8,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	1910,r13		! source line 1910
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_730 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_731 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_732 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_733 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_734 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_735 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_736 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_737
	.word	12		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_738
	.word	8
	.word	4
	.word	_Label_739
	.word	12
	.word	4
	.word	_Label_740
	.word	16
	.word	4
	.word	_Label_741
	.word	-12
	.word	4
	.word	_Label_742
	.word	-16
	.word	4
	.word	_Label_743
	.word	-20
	.word	4
	.word	_Label_744
	.word	-24
	.word	4
	.word	_Label_745
	.word	-28
	.word	4
	.word	_Label_746
	.word	-32
	.word	4
	.word	_Label_747
	.word	-36
	.word	4
	.word	0
_Label_737:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_738:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_739:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_740:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	5,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_748 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_749 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_750 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_751 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_752
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_753
	.word	8
	.word	4
	.word	_Label_754
	.word	12
	.word	4
	.word	_Label_755
	.word	-12
	.word	4
	.word	_Label_756
	.word	-16
	.word	4
	.word	_Label_757
	.word	-20
	.word	4
	.word	_Label_758
	.word	-24
	.word	4
	.word	0
_Label_752:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_753:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_754:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	4,r1
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	1945,r13		! source line 1945
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_759 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_760 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_761 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_762
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_763
	.word	8
	.word	4
	.word	_Label_764
	.word	-12
	.word	4
	.word	_Label_765
	.word	-16
	.word	4
	.word	_Label_766
	.word	-20
	.word	4
	.word	0
_Label_762:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_763:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_217_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_217_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	2542,r13		! source line 2542
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_767 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_767  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0AS",r10
!   _temp_768 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_768) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_770 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_770) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_769 = *_temp_770  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_768 = _temp_769  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   _temp_771 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_771) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_773 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_773) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_772 = *_temp_773  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_771 = _temp_772  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
!   _temp_774 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_774) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_776) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_775 = *_temp_776  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_774 = _temp_775  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_217_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_777
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_778
	.word	8
	.word	4
	.word	_Label_779
	.word	12
	.word	4
	.word	_Label_780
	.word	-16
	.word	4
	.word	_Label_781
	.word	-9
	.word	1
	.word	_Label_782
	.word	-20
	.word	4
	.word	_Label_783
	.word	-24
	.word	4
	.word	_Label_784
	.word	-10
	.word	1
	.word	_Label_785
	.word	-28
	.word	4
	.word	_Label_786
	.word	-32
	.word	4
	.word	_Label_787
	.word	-11
	.word	1
	.word	_Label_788
	.word	-36
	.word	4
	.word	_Label_789
	.word	-12
	.word	1
	.word	_Label_790
	.word	-40
	.word	4
	.word	_Label_791
	.word	-44
	.word	4
	.word	0
_Label_777:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_778:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_779:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_781:
	.byte	'C'
	.ascii	"_temp_775\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_784:
	.byte	'C'
	.ascii	"_temp_772\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_787:
	.byte	'C'
	.ascii	"_temp_769\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_789:
	.byte	'C'
	.ascii	"_temp_767\0"
	.align
_Label_790:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_791:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_216_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_printFCB,r1
	push	r1
	mov	3,r1
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	2552,r13		! source line 2552
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_792 = *_temp_793  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2553,r13		! source line 2553
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2554,r13		! source line 2554
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_printFCB:
	.word	_sourceFileName
	.word	_Label_794
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_795
	.word	8
	.word	4
	.word	_Label_796
	.word	-12
	.word	4
	.word	_Label_797
	.word	-16
	.word	4
	.word	0
_Label_794:
	.ascii	"printFCB\0"
	.align
_Label_795:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_215_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_printOpen,r1
	push	r1
	mov	4,r1
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	2557,r13		! source line 2557
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_798 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_799 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_800 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2560,r13		! source line 2560
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_printOpen:
	.word	_sourceFileName
	.word	_Label_801
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_802
	.word	8
	.word	4
	.word	_Label_803
	.word	-12
	.word	4
	.word	_Label_804
	.word	-16
	.word	4
	.word	_Label_805
	.word	-20
	.word	4
	.word	0
_Label_801:
	.ascii	"printOpen\0"
	.align
_Label_802:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_806
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_806:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_807
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_807:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_809		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_809
!	jmp	_Label_808
_Label_808:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_810 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_809:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_812
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_814
	.word	12
	.word	4
	.word	_Label_815
	.word	-12
	.word	4
	.word	_Label_816
	.word	-16
	.word	4
	.word	0
_Label_812:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_813:
	.ascii	"Pself\0"
	.align
_Label_814:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_818		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_818
!	jmp	_Label_817
_Label_817:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_819 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_819  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_818:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_821		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_821
!	jmp	_Label_820
_Label_820:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_822 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_823 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_823 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_824 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_825
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_827
	.word	-12
	.word	4
	.word	_Label_828
	.word	-16
	.word	4
	.word	_Label_829
	.word	-20
	.word	4
	.word	_Label_830
	.word	-24
	.word	4
	.word	_Label_831
	.word	-28
	.word	4
	.word	_Label_832
	.word	-32
	.word	4
	.word	0
_Label_825:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_826:
	.ascii	"Pself\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_831:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_832:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_834		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_834
!	jmp	_Label_833
_Label_833:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_835 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_834:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_837		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_837
!	jmp	_Label_836
_Label_836:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_838 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_837:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_839
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_841
	.word	-12
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	0
_Label_839:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_840:
	.ascii	"Pself\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_843:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_844
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_844:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_845
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_845:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_847
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_849
	.word	-12
	.word	4
	.word	0
_Label_847:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_848:
	.ascii	"Pself\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_851		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_851
!	jmp	_Label_850
_Label_850:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_852 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_851:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_856		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_856
!   _temp_855 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_857
_Label_856:
!   _temp_855 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_857:
!   if _temp_855 then goto _Label_854 else goto _Label_853
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_853
	jmp	_Label_854
_Label_853:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_858
_Label_854:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_859 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_858:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_860
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_862
	.word	-16
	.word	4
	.word	_Label_863
	.word	-9
	.word	1
	.word	_Label_864
	.word	-20
	.word	4
	.word	_Label_865
	.word	-24
	.word	4
	.word	0
_Label_860:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_861:
	.ascii	"Pself\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_863:
	.byte	'C'
	.ascii	"_temp_855\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_865:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_867		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_867
!	jmp	_Label_866
_Label_866:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_868 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_867:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_869 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_871		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_871
!	jmp	_Label_870
_Label_870:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_872 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_873 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_874
_Label_871:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_874:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_875
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_877
	.word	-12
	.word	4
	.word	_Label_878
	.word	-16
	.word	4
	.word	_Label_879
	.word	-20
	.word	4
	.word	_Label_880
	.word	-24
	.word	4
	.word	_Label_881
	.word	-28
	.word	4
	.word	_Label_882
	.word	-32
	.word	4
	.word	0
_Label_875:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_876:
	.ascii	"Pself\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_881:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_882:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_885		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_885
!	jmp	_Label_884
_Label_884:
!   _temp_883 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_886
_Label_885:
!   _temp_883 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_886:
!   ReturnResult: _temp_883  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_887
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_889
	.word	-9
	.word	1
	.word	0
_Label_887:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_888:
	.ascii	"Pself\0"
	.align
_Label_889:
	.byte	'C'
	.ascii	"_temp_883\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_890
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_890:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_891
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_891:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_893
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_895
	.word	-12
	.word	4
	.word	0
_Label_893:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_894:
	.ascii	"Pself\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_898  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_898 then goto _Label_897 else goto _Label_896
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_896
	jmp	_Label_897
_Label_896:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_899 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_897:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_900 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_901
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_903
	.word	12
	.word	4
	.word	_Label_904
	.word	-16
	.word	4
	.word	_Label_905
	.word	-20
	.word	4
	.word	_Label_906
	.word	-9
	.word	1
	.word	_Label_907
	.word	-24
	.word	4
	.word	0
_Label_901:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_902:
	.ascii	"Pself\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_906:
	.byte	'C'
	.ascii	"_temp_898\0"
	.align
_Label_907:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_910  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_910 then goto _Label_909 else goto _Label_908
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_908
	jmp	_Label_909
_Label_908:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_911 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_909:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_912 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_914		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_914
!	jmp	_Label_913
_Label_913:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_915 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_915 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_916 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_914:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_917
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_918
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_919
	.word	12
	.word	4
	.word	_Label_920
	.word	-16
	.word	4
	.word	_Label_921
	.word	-20
	.word	4
	.word	_Label_922
	.word	-24
	.word	4
	.word	_Label_923
	.word	-28
	.word	4
	.word	_Label_924
	.word	-9
	.word	1
	.word	_Label_925
	.word	-32
	.word	4
	.word	_Label_926
	.word	-36
	.word	4
	.word	0
_Label_917:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_918:
	.ascii	"Pself\0"
	.align
_Label_919:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_924:
	.byte	'C'
	.ascii	"_temp_910\0"
	.align
_Label_925:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_929  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_929 then goto _Label_928 else goto _Label_927
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_927
	jmp	_Label_928
_Label_927:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_930 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_928:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_931:
!	jmp	_Label_932
_Label_932:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_934 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_935
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_935
	jmp	_Label_936
_Label_935:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_933
! END IF...
_Label_936:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_937 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_938 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_931
_Label_933:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_939
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_941
	.word	12
	.word	4
	.word	_Label_942
	.word	-16
	.word	4
	.word	_Label_943
	.word	-20
	.word	4
	.word	_Label_944
	.word	-24
	.word	4
	.word	_Label_945
	.word	-28
	.word	4
	.word	_Label_946
	.word	-9
	.word	1
	.word	_Label_947
	.word	-32
	.word	4
	.word	_Label_948
	.word	-36
	.word	4
	.word	0
_Label_939:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_940:
	.ascii	"Pself\0"
	.align
_Label_941:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_946:
	.byte	'C'
	.ascii	"_temp_929\0"
	.align
_Label_947:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_949
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_949:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_950
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_950:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   _temp_951 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_951) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_951 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_952 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_952 [0 ] into _temp_953
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_953 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_954 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_954 [999 ] into _temp_955
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_955 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_956 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_956 [999 ] into _temp_957
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_957		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_958 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_960 = &_temp_959
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_960 = _temp_960 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_962:
!   Data Move: *_temp_960 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_960 = _temp_960 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_961 = _temp_961 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_961) then goto _Label_962
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_962
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_963 = &_temp_959
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3038
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3038:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_958 = *_temp_963  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3039:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3039
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_964 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_966 = &_temp_965
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_966 = _temp_966 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_968:
!   Data Move: *_temp_966 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_966 = _temp_966 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_967 = _temp_967 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_967) then goto _Label_968
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_968
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_969 = &_temp_965
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3040
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3040:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_964 = *_temp_969  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3041:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3041
! RETURN STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_970
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_972
	.word	12
	.word	4
	.word	_Label_973
	.word	-12
	.word	4
	.word	_Label_974
	.word	-16
	.word	4
	.word	_Label_975
	.word	-20
	.word	4
	.word	_Label_976
	.word	-84
	.word	64
	.word	_Label_977
	.word	-88
	.word	4
	.word	_Label_978
	.word	-92
	.word	4
	.word	_Label_979
	.word	-96
	.word	4
	.word	_Label_980
	.word	-100
	.word	4
	.word	_Label_981
	.word	-156
	.word	56
	.word	_Label_982
	.word	-160
	.word	4
	.word	_Label_983
	.word	-164
	.word	4
	.word	_Label_984
	.word	-168
	.word	4
	.word	_Label_985
	.word	-172
	.word	4
	.word	_Label_986
	.word	-176
	.word	4
	.word	_Label_987
	.word	-180
	.word	4
	.word	_Label_988
	.word	-184
	.word	4
	.word	_Label_989
	.word	-188
	.word	4
	.word	0
_Label_970:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_971:
	.ascii	"Pself\0"
	.align
_Label_972:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_990 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_990  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_992 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_991  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_993
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_995
	.word	12
	.word	4
	.word	_Label_996
	.word	16
	.word	4
	.word	_Label_997
	.word	-12
	.word	4
	.word	_Label_998
	.word	-16
	.word	4
	.word	_Label_999
	.word	-20
	.word	4
	.word	_Label_1000
	.word	-24
	.word	4
	.word	_Label_1001
	.word	-28
	.word	4
	.word	0
_Label_993:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_994:
	.ascii	"Pself\0"
	.align
_Label_995:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_996:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1000:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1004 == _P_Kernel_currentThread then goto _Label_1003		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1005 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1005  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	507,r13		! source line 507
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1003:
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_1006 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1008		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1010		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1010
!	jmp	_Label_1009
_Label_1009:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1011 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	519,r13		! source line 519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1010:
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1013 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1012  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1008:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1014
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1016
	.word	-12
	.word	4
	.word	_Label_1017
	.word	-16
	.word	4
	.word	_Label_1018
	.word	-20
	.word	4
	.word	_Label_1019
	.word	-24
	.word	4
	.word	_Label_1020
	.word	-28
	.word	4
	.word	_Label_1021
	.word	-32
	.word	4
	.word	_Label_1022
	.word	-36
	.word	4
	.word	_Label_1023
	.word	-40
	.word	4
	.word	_Label_1024
	.word	-44
	.word	4
	.word	0
_Label_1014:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1015:
	.ascii	"Pself\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1022:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1023:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1024:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1026		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1026
!	jmp	_Label_1025
_Label_1025:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1027 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	543,r13		! source line 543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1026:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1030 == _P_Kernel_currentThread then goto _Label_1029		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1029
!	jmp	_Label_1028
_Label_1028:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1029:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_1032 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1033
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1033
	jmp	_Label_1034
_Label_1033:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1035 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	555,r13		! source line 555
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1034:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1036
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	-12
	.word	4
	.word	_Label_1039
	.word	-16
	.word	4
	.word	_Label_1040
	.word	-20
	.word	4
	.word	_Label_1041
	.word	-24
	.word	4
	.word	_Label_1042
	.word	-28
	.word	4
	.word	_Label_1043
	.word	-32
	.word	4
	.word	0
_Label_1036:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1043:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_1047 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1047 [0 ] into _temp_1048
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_1046 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1046 == 606348324 then goto _Label_1045		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1045
!	jmp	_Label_1044
_Label_1044:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1049 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1049  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	569,r13		! source line 569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1050
_Label_1045:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1054 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1054 [999 ] into _temp_1055
!     make sure index expr is >= 0
	mov	999,r2
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
!   Data Move: _temp_1053 = *_temp_1055  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1053 == 606348324 then goto _Label_1052		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1052
!	jmp	_Label_1051
_Label_1051:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1056 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1052:
! END IF...
_Label_1050:
! RETURN STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1057
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1058
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1059
	.word	-12
	.word	4
	.word	_Label_1060
	.word	-16
	.word	4
	.word	_Label_1061
	.word	-20
	.word	4
	.word	_Label_1062
	.word	-24
	.word	4
	.word	_Label_1063
	.word	-28
	.word	4
	.word	_Label_1064
	.word	-32
	.word	4
	.word	_Label_1065
	.word	-36
	.word	4
	.word	_Label_1066
	.word	-40
	.word	4
	.word	0
_Label_1057:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1058:
	.ascii	"Pself\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1067 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1068 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1070 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1071 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1076 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1077 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1076  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1072:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1077 then goto _Label_1075		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1075
_Label_1073:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1078 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1079 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1080 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1082 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1082 [i ] into _temp_1083
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1081 = *_temp_1083  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1084 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1086 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1086 [i ] into _temp_1087
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_1085 = *_temp_1087  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1088 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1074:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1072
! END FOR
_Label_1075:
! CALL STATEMENT...
!   _temp_1089 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-116]
!   _temp_1090 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1090  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1091 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-108]
!   _temp_1093 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1093 [0 ] into _temp_1094
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_1092 = _temp_1094		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1092  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	601,r13		! source line 601
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1097
	cmp	r1,2
	be	_Label_1098
	cmp	r1,3
	be	_Label_1099
	cmp	r1,4
	be	_Label_1100
	cmp	r1,5
	be	_Label_1101
	jmp	_Label_1095
! CASE 1...
_Label_1097:
! CALL STATEMENT...
!   _temp_1102 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_1096
! CASE 2...
_Label_1098:
! CALL STATEMENT...
!   _temp_1103 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_1096
! CASE 3...
_Label_1099:
! CALL STATEMENT...
!   _temp_1104 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_1096
! CASE 4...
_Label_1100:
! CALL STATEMENT...
!   _temp_1105 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1105  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_1096
! CASE 5...
_Label_1101:
! CALL STATEMENT...
!   _temp_1106 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1106  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_1096
! DEFAULT CASE...
_Label_1095:
! CALL STATEMENT...
!   _temp_1107 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1096:
! CALL STATEMENT...
!   _temp_1108 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1109 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1114 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1115 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1114  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1110:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1115 then goto _Label_1113		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1113
_Label_1111:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1116 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1117 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1117  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1118 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1120 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1120 [i ] into _temp_1121
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_1119 = *_temp_1121  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1119  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1122 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1124 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1124 [i ] into _temp_1125
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_1123 = *_temp_1125  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1126 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1126  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1112:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1110
! END FOR
_Label_1113:
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1127
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1128
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1129
	.word	-12
	.word	4
	.word	_Label_1130
	.word	-16
	.word	4
	.word	_Label_1131
	.word	-20
	.word	4
	.word	_Label_1132
	.word	-24
	.word	4
	.word	_Label_1133
	.word	-28
	.word	4
	.word	_Label_1134
	.word	-32
	.word	4
	.word	_Label_1135
	.word	-36
	.word	4
	.word	_Label_1136
	.word	-40
	.word	4
	.word	_Label_1137
	.word	-44
	.word	4
	.word	_Label_1138
	.word	-48
	.word	4
	.word	_Label_1139
	.word	-52
	.word	4
	.word	_Label_1140
	.word	-56
	.word	4
	.word	_Label_1141
	.word	-60
	.word	4
	.word	_Label_1142
	.word	-64
	.word	4
	.word	_Label_1143
	.word	-68
	.word	4
	.word	_Label_1144
	.word	-72
	.word	4
	.word	_Label_1145
	.word	-76
	.word	4
	.word	_Label_1146
	.word	-80
	.word	4
	.word	_Label_1147
	.word	-84
	.word	4
	.word	_Label_1148
	.word	-88
	.word	4
	.word	_Label_1149
	.word	-92
	.word	4
	.word	_Label_1150
	.word	-96
	.word	4
	.word	_Label_1151
	.word	-100
	.word	4
	.word	_Label_1152
	.word	-104
	.word	4
	.word	_Label_1153
	.word	-108
	.word	4
	.word	_Label_1154
	.word	-112
	.word	4
	.word	_Label_1155
	.word	-116
	.word	4
	.word	_Label_1156
	.word	-120
	.word	4
	.word	_Label_1157
	.word	-124
	.word	4
	.word	_Label_1158
	.word	-128
	.word	4
	.word	_Label_1159
	.word	-132
	.word	4
	.word	_Label_1160
	.word	-136
	.word	4
	.word	_Label_1161
	.word	-140
	.word	4
	.word	_Label_1162
	.word	-144
	.word	4
	.word	_Label_1163
	.word	-148
	.word	4
	.word	_Label_1164
	.word	-152
	.word	4
	.word	_Label_1165
	.word	-156
	.word	4
	.word	_Label_1166
	.word	-160
	.word	4
	.word	_Label_1167
	.word	-164
	.word	4
	.word	_Label_1168
	.word	-168
	.word	4
	.word	_Label_1169
	.word	-172
	.word	4
	.word	_Label_1170
	.word	-176
	.word	4
	.word	_Label_1171
	.word	-180
	.word	4
	.word	_Label_1172
	.word	-184
	.word	4
	.word	_Label_1173
	.word	-188
	.word	4
	.word	_Label_1174
	.word	-192
	.word	4
	.word	_Label_1175
	.word	-196
	.word	4
	.word	0
_Label_1127:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1128:
	.ascii	"Pself\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1174:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1175:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1176
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1176:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1177
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1177:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1178 = _StringConst_113
	set	_StringConst_113,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   _temp_1179 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1181 = &_temp_1180
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1181 = _temp_1181 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1183 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3048:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3048
!   _temp_1183 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1185:
!   Data Move: *_temp_1181 = _temp_1183  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3049:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3049
!   _temp_1181 = _temp_1181 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1182 = _temp_1182 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1182) then goto _Label_1185
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1185
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1186 = &_temp_1180
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3050
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3050:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1179 = *_temp_1186  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3051:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3051
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1189 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_1191 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1196 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1197 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1196  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1192:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1197 then goto _Label_1195		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1195
_Label_1193:
	mov	706,r13		! source line 706
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_1198 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   _temp_1199 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1199 [i ] into _temp_1200
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1198  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
!   _temp_1201 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1201 [i ] into _temp_1202
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1203 = _temp_1202 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1203 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_1205 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1205 [i ] into _temp_1206
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1204 = _temp_1206		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1207 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1204  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1194:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1192
! END FOR
_Label_1195:
! RETURN STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1208
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1209
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1210
	.word	-12
	.word	4
	.word	_Label_1211
	.word	-16
	.word	4
	.word	_Label_1212
	.word	-20
	.word	4
	.word	_Label_1213
	.word	-24
	.word	4
	.word	_Label_1214
	.word	-28
	.word	4
	.word	_Label_1215
	.word	-32
	.word	4
	.word	_Label_1216
	.word	-36
	.word	4
	.word	_Label_1217
	.word	-40
	.word	4
	.word	_Label_1218
	.word	-44
	.word	4
	.word	_Label_1219
	.word	-48
	.word	4
	.word	_Label_1220
	.word	-52
	.word	4
	.word	_Label_1221
	.word	-56
	.word	4
	.word	_Label_1222
	.word	-60
	.word	4
	.word	_Label_1223
	.word	-64
	.word	4
	.word	_Label_1224
	.word	-68
	.word	4
	.word	_Label_1225
	.word	-72
	.word	4
	.word	_Label_1226
	.word	-76
	.word	4
	.word	_Label_1227
	.word	-80
	.word	4
	.word	_Label_1228
	.word	-84
	.word	4
	.word	_Label_1229
	.word	-4248
	.word	4164
	.word	_Label_1230
	.word	-4252
	.word	4
	.word	_Label_1231
	.word	-4256
	.word	4
	.word	_Label_1232
	.word	-45900
	.word	41644
	.word	_Label_1233
	.word	-45904
	.word	4
	.word	_Label_1234
	.word	-45908
	.word	4
	.word	_Label_1235
	.word	-45912
	.word	4
	.word	0
_Label_1208:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1209:
	.ascii	"Pself\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1235:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	715,r13		! source line 715
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1236 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1241 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1242 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1241  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1237:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1242 then goto _Label_1240		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1240
_Label_1238:
	mov	724,r13		! source line 724
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1243 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1244 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1244  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1246 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1246 [i ] into _temp_1247
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1245 = _temp_1247		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1245  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_function_220_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1239:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1237
! END FOR
_Label_1240:
! CALL STATEMENT...
!   _temp_1248 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0SE",r10
!   _temp_1249 = _function_219_PrintObjectAddr
	set	_function_219_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1250 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1249  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1251
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1253
	.word	-12
	.word	4
	.word	_Label_1254
	.word	-16
	.word	4
	.word	_Label_1255
	.word	-20
	.word	4
	.word	_Label_1256
	.word	-24
	.word	4
	.word	_Label_1257
	.word	-28
	.word	4
	.word	_Label_1258
	.word	-32
	.word	4
	.word	_Label_1259
	.word	-36
	.word	4
	.word	_Label_1260
	.word	-40
	.word	4
	.word	_Label_1261
	.word	-44
	.word	4
	.word	_Label_1262
	.word	-48
	.word	4
	.word	_Label_1263
	.word	-52
	.word	4
	.word	_Label_1264
	.word	-56
	.word	4
	.word	_Label_1265
	.word	-60
	.word	4
	.word	0
_Label_1251:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1252:
	.ascii	"Pself\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1264:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1265:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	738,r13		! source line 738
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_1266 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0WH",r10
_Label_1267:
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
!   _temp_1270 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1268 else goto _Label_1269
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1269
	jmp	_Label_1268
_Label_1268:
	mov	746,r13		! source line 746
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1271 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1272 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1271  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1267
_Label_1269:
! ASSIGNMENT STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0AS",r10
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1273 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=NewThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   if intIsZero (NewThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1274 = NewThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1274 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1275 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	752,r13		! source line 752
	mov	"\0\0RE",r10
!   ReturnResult: NewThread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1276
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1278
	.word	-12
	.word	4
	.word	_Label_1279
	.word	-16
	.word	4
	.word	_Label_1280
	.word	-20
	.word	4
	.word	_Label_1281
	.word	-24
	.word	4
	.word	_Label_1282
	.word	-28
	.word	4
	.word	_Label_1283
	.word	-32
	.word	4
	.word	_Label_1284
	.word	-36
	.word	4
	.word	_Label_1285
	.word	-40
	.word	4
	.word	0
_Label_1276:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1277:
	.ascii	"Pself\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1285:
	.byte	'P'
	.ascii	"NewThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_1286 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1287 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1287 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1288 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0SE",r10
!   _temp_1289 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1290 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1289  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1291 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	766,r13		! source line 766
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1292
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1294
	.word	12
	.word	4
	.word	_Label_1295
	.word	-12
	.word	4
	.word	_Label_1296
	.word	-16
	.word	4
	.word	_Label_1297
	.word	-20
	.word	4
	.word	_Label_1298
	.word	-24
	.word	4
	.word	_Label_1299
	.word	-28
	.word	4
	.word	_Label_1300
	.word	-32
	.word	4
	.word	0
_Label_1292:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1293:
	.ascii	"Pself\0"
	.align
_Label_1294:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1301
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1301:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1302
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1302:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	779,r13		! source line 779
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3056:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3056
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1304 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1305
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1306
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1307
	.word	-12
	.word	4
	.word	_Label_1308
	.word	-16
	.word	4
	.word	0
_Label_1305:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1306:
	.ascii	"Pself\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	793,r13		! source line 793
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1309) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0SE",r10
!   _temp_1310 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1311 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	801,r13		! source line 801
	mov	"\0\0CA",r10
	call	_function_220_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1312
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1314
	.word	-12
	.word	4
	.word	_Label_1315
	.word	-16
	.word	4
	.word	_Label_1316
	.word	-20
	.word	4
	.word	0
_Label_1312:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1313:
	.ascii	"Pself\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	817,r13		! source line 817
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1317 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1319 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1320 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1322		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1322
!	jmp	_Label_1321
_Label_1321:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1323 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1324
_Label_1322:
! ELSE...
	mov	828,r13		! source line 828
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1326		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1326
!	jmp	_Label_1325
_Label_1325:
! THEN...
	mov	829,r13		! source line 829
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1327 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1328
_Label_1326:
! ELSE...
	mov	830,r13		! source line 830
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1330		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1330
!	jmp	_Label_1329
_Label_1329:
! THEN...
	mov	831,r13		! source line 831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1331 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1331  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1332
_Label_1330:
! ELSE...
	mov	833,r13		! source line 833
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1333 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1333  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	833,r13		! source line 833
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1332:
! END IF...
_Label_1328:
! END IF...
_Label_1324:
! CALL STATEMENT...
!   _temp_1334 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1335 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1336
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1337
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1338
	.word	-12
	.word	4
	.word	_Label_1339
	.word	-16
	.word	4
	.word	_Label_1340
	.word	-20
	.word	4
	.word	_Label_1341
	.word	-24
	.word	4
	.word	_Label_1342
	.word	-28
	.word	4
	.word	_Label_1343
	.word	-32
	.word	4
	.word	_Label_1344
	.word	-36
	.word	4
	.word	_Label_1345
	.word	-40
	.word	4
	.word	_Label_1346
	.word	-44
	.word	4
	.word	_Label_1347
	.word	-48
	.word	4
	.word	0
_Label_1336:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1337:
	.ascii	"Pself\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1348
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1348:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1349
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1349:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	850,r13		! source line 850
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0SE",r10
!   _temp_1351 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1464]
!   Send message Init
	load	[r14+-1464],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0SE",r10
!   _temp_1353 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_1355 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   _temp_1356 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1444]
!   NEW ARRAY Constructor...
!   _temp_1358 = &_temp_1357
	add	r14,-1440,r1
	store	r1,[r14+-196]
!   _temp_1358 = _temp_1358 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1360 = zeros  (sizeInBytes=124)
	add	r14,-188,r4
	mov	31,r3
_Label_3060:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3060
!   _temp_1360 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-188]
	mov	10,r1
	store	r1,[r14+-192]
_Label_1362:
!   Data Move: *_temp_1358 = _temp_1360  (sizeInBytes=124)
	add	r14,-188,r5
	load	[r14+-196],r4
	mov	31,r3
_Label_3061:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3061
!   _temp_1358 = _temp_1358 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-196]
!   _temp_1359 = _temp_1359 + -1
	load	[r14+-192],r1
	add	r1,-1,r1
	store	r1,[r14+-192]
!   if intNotZero (_temp_1359) then goto _Label_1362
	load	[r14+-192],r1
	cmp	r1,r0
	bne	_Label_1362
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1440]
!   _temp_1363 = &_temp_1357
	add	r14,-1440,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	load	[r14+-1444],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3062
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3062:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1356 = *_temp_1363  (sizeInBytes=1244)
	load	[r14+-60],r5
	load	[r14+-1444],r4
	mov	311,r3
_Label_3063:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3063
! ASSIGNMENT STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1369 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1370 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1369  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1365:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1370 then goto _Label_1368		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1368
_Label_1366:
	mov	864,r13		! source line 864
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_1371 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1371 [i ] into _temp_1372
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0AS",r10
!   _temp_1373 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1373 [i ] into _temp_1374
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1375 = _temp_1374 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1375 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0SE",r10
!   _temp_1377 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1377 [i ] into _temp_1378
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1376 = _temp_1378		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1379 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1376  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1367:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1365
! END FOR
_Label_1368:
! RETURN STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1380
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1382
	.word	-12
	.word	4
	.word	_Label_1383
	.word	-16
	.word	4
	.word	_Label_1384
	.word	-20
	.word	4
	.word	_Label_1385
	.word	-24
	.word	4
	.word	_Label_1386
	.word	-28
	.word	4
	.word	_Label_1387
	.word	-32
	.word	4
	.word	_Label_1388
	.word	-36
	.word	4
	.word	_Label_1389
	.word	-40
	.word	4
	.word	_Label_1390
	.word	-44
	.word	4
	.word	_Label_1391
	.word	-48
	.word	4
	.word	_Label_1392
	.word	-52
	.word	4
	.word	_Label_1393
	.word	-56
	.word	4
	.word	_Label_1394
	.word	-60
	.word	4
	.word	_Label_1395
	.word	-64
	.word	4
	.word	_Label_1396
	.word	-188
	.word	124
	.word	_Label_1397
	.word	-192
	.word	4
	.word	_Label_1398
	.word	-196
	.word	4
	.word	_Label_1399
	.word	-1440
	.word	1244
	.word	_Label_1400
	.word	-1444
	.word	4
	.word	_Label_1401
	.word	-1448
	.word	4
	.word	_Label_1402
	.word	-1452
	.word	4
	.word	_Label_1403
	.word	-1456
	.word	4
	.word	_Label_1404
	.word	-1460
	.word	4
	.word	_Label_1405
	.word	-1464
	.word	4
	.word	_Label_1406
	.word	-1468
	.word	4
	.word	_Label_1407
	.word	-1472
	.word	4
	.word	0
_Label_1380:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1381:
	.ascii	"Pself\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1407:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	874,r13		! source line 874
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1408 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1413 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1414 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1413  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1409:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1414 then goto _Label_1412		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1412
_Label_1410:
	mov	883,r13		! source line 883
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1415 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1415  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1416 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1416  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
!   _temp_1417 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1417 [i ] into _temp_1418
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1411:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1409
! END FOR
_Label_1412:
! CALL STATEMENT...
!   _temp_1419 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0SE",r10
!   _temp_1420 = _function_219_PrintObjectAddr
	set	_function_219_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1421 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1420  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1422
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1423
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1424
	.word	-12
	.word	4
	.word	_Label_1425
	.word	-16
	.word	4
	.word	_Label_1426
	.word	-20
	.word	4
	.word	_Label_1427
	.word	-24
	.word	4
	.word	_Label_1428
	.word	-28
	.word	4
	.word	_Label_1429
	.word	-32
	.word	4
	.word	_Label_1430
	.word	-36
	.word	4
	.word	_Label_1431
	.word	-40
	.word	4
	.word	_Label_1432
	.word	-44
	.word	4
	.word	_Label_1433
	.word	-48
	.word	4
	.word	_Label_1434
	.word	-52
	.word	4
	.word	_Label_1435
	.word	-56
	.word	4
	.word	0
_Label_1422:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1423:
	.ascii	"Pself\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1434:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	897,r13		! source line 897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1436 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1436  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1441 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1442 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1441  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1437:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1442 then goto _Label_1440		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1440
_Label_1438:
	mov	906,r13		! source line 906
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1443 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1443  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1444 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1444 [i ] into _temp_1445
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1439:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1437
! END FOR
_Label_1440:
! CALL STATEMENT...
!   _temp_1446 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1446  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_1447 = _function_219_PrintObjectAddr
	set	_function_219_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1448 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1447  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1449
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1451
	.word	-12
	.word	4
	.word	_Label_1452
	.word	-16
	.word	4
	.word	_Label_1453
	.word	-20
	.word	4
	.word	_Label_1454
	.word	-24
	.word	4
	.word	_Label_1455
	.word	-28
	.word	4
	.word	_Label_1456
	.word	-32
	.word	4
	.word	_Label_1457
	.word	-36
	.word	4
	.word	_Label_1458
	.word	-40
	.word	4
	.word	_Label_1459
	.word	-44
	.word	4
	.word	_Label_1460
	.word	-48
	.word	4
	.word	_Label_1461
	.word	-52
	.word	4
	.word	0
_Label_1449:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1450:
	.ascii	"Pself\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1460:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1461:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	919,r13		! source line 919
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_1462 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0WH",r10
_Label_1463:
	mov	926,r13		! source line 926
	mov	"\0\0SE",r10
!   _temp_1466 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1464 else goto _Label_1465
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1465
	jmp	_Label_1464
_Label_1464:
	mov	926,r13		! source line 926
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0SE",r10
!   _temp_1467 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1468 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1467  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1463
_Label_1465:
! ASSIGNMENT STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0AS",r10
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1469 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ptrToPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1470 = ptrToPCB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1470 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1471 = ptrToPCB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1471 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0SE",r10
!   _temp_1472 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	934,r13		! source line 934
	mov	"\0\0RE",r10
!   ReturnResult: ptrToPCB  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1473
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1474
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1475
	.word	-12
	.word	4
	.word	_Label_1476
	.word	-16
	.word	4
	.word	_Label_1477
	.word	-20
	.word	4
	.word	_Label_1478
	.word	-24
	.word	4
	.word	_Label_1479
	.word	-28
	.word	4
	.word	_Label_1480
	.word	-32
	.word	4
	.word	_Label_1481
	.word	-36
	.word	4
	.word	_Label_1482
	.word	-40
	.word	4
	.word	_Label_1483
	.word	-44
	.word	4
	.word	0
_Label_1473:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1474:
	.ascii	"Pself\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1483:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	939,r13		! source line 939
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
!   _temp_1484 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1485 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1485 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0SE",r10
!   _temp_1486 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0SE",r10
!   _temp_1487 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1488 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1487  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_1489 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	948,r13		! source line 948
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1490
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1491
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1492
	.word	12
	.word	4
	.word	_Label_1493
	.word	-12
	.word	4
	.word	_Label_1494
	.word	-16
	.word	4
	.word	_Label_1495
	.word	-20
	.word	4
	.word	_Label_1496
	.word	-24
	.word	4
	.word	_Label_1497
	.word	-28
	.word	4
	.word	_Label_1498
	.word	-32
	.word	4
	.word	0
_Label_1490:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1491:
	.ascii	"Pself\0"
	.align
_Label_1492:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1499
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1499:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1500
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1500:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	981,r13		! source line 981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1501 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	987,r13		! source line 987
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_1503 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_1505 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0SE",r10
!   _temp_1507 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1512 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1513 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1512  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1508:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1513 then goto _Label_1511		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1511
_Label_1509:
	mov	1000,r13		! source line 1000
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1516 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1516) then goto _Label_1515
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1515
!	jmp	_Label_1514
_Label_1514:
! THEN...
	mov	1004,r13		! source line 1004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1517 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1004,r13		! source line 1004
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1515:
!   Increment the FOR-LOOP index variable and jump back
_Label_1510:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1508
! END FOR
_Label_1511:
! RETURN STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1518
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1520
	.word	-12
	.word	4
	.word	_Label_1521
	.word	-16
	.word	4
	.word	_Label_1522
	.word	-20
	.word	4
	.word	_Label_1523
	.word	-24
	.word	4
	.word	_Label_1524
	.word	-28
	.word	4
	.word	_Label_1525
	.word	-32
	.word	4
	.word	_Label_1526
	.word	-36
	.word	4
	.word	_Label_1527
	.word	-40
	.word	4
	.word	_Label_1528
	.word	-44
	.word	4
	.word	_Label_1529
	.word	-48
	.word	4
	.word	_Label_1530
	.word	-52
	.word	4
	.word	_Label_1531
	.word	-56
	.word	4
	.word	0
_Label_1518:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1519:
	.ascii	"Pself\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1531:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1011,r13		! source line 1011
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_1532 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1533 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1533  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1534 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1534  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1017,r13		! source line 1017
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1535 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1535  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1018,r13		! source line 1018
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_1536 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_1537 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1020,r13		! source line 1020
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1538
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1540
	.word	-12
	.word	4
	.word	_Label_1541
	.word	-16
	.word	4
	.word	_Label_1542
	.word	-20
	.word	4
	.word	_Label_1543
	.word	-24
	.word	4
	.word	_Label_1544
	.word	-28
	.word	4
	.word	_Label_1545
	.word	-32
	.word	4
	.word	0
_Label_1538:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1539:
	.ascii	"Pself\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	1025,r13		! source line 1025
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1546 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0WH",r10
_Label_1547:
!   if numberFreeFrames >= 1 then goto _Label_1549		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1549
!	jmp	_Label_1548
_Label_1548:
	mov	1036,r13		! source line 1036
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_1550 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1551 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1550  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1547
_Label_1549:
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_1552 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0SE",r10
!   _temp_1553 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   _temp_1554 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1554		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1555
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1557
	.word	-12
	.word	4
	.word	_Label_1558
	.word	-16
	.word	4
	.word	_Label_1559
	.word	-20
	.word	4
	.word	_Label_1560
	.word	-24
	.word	4
	.word	_Label_1561
	.word	-28
	.word	4
	.word	_Label_1562
	.word	-32
	.word	4
	.word	_Label_1563
	.word	-36
	.word	4
	.word	_Label_1564
	.word	-40
	.word	4
	.word	0
_Label_1555:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1556:
	.ascii	"Pself\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1563:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1564:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1055,r13		! source line 1055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1565 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0WH",r10
_Label_1566:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1568		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1568
!	jmp	_Label_1567
_Label_1567:
	mov	1058,r13		! source line 1058
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1569 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1570 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1569  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1566
_Label_1568:
! FOR STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1575 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1576 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1575  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1571:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1576 then goto _Label_1574		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1574
_Label_1572:
	mov	1061,r13		! source line 1061
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_1577 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=fr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0AS",r10
!   _temp_1578 = fr * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1578		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1573:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1571
! END FOR
_Label_1574:
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1579 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1579 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0SE",r10
!   _temp_1580 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1068,r13		! source line 1068
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1581
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1583
	.word	12
	.word	4
	.word	_Label_1584
	.word	16
	.word	4
	.word	_Label_1585
	.word	-12
	.word	4
	.word	_Label_1586
	.word	-16
	.word	4
	.word	_Label_1587
	.word	-20
	.word	4
	.word	_Label_1588
	.word	-24
	.word	4
	.word	_Label_1589
	.word	-28
	.word	4
	.word	_Label_1590
	.word	-32
	.word	4
	.word	_Label_1591
	.word	-36
	.word	4
	.word	_Label_1592
	.word	-40
	.word	4
	.word	_Label_1593
	.word	-44
	.word	4
	.word	_Label_1594
	.word	-48
	.word	4
	.word	_Label_1595
	.word	-52
	.word	4
	.word	_Label_1596
	.word	-56
	.word	4
	.word	0
_Label_1581:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1582:
	.ascii	"Pself\0"
	.align
_Label_1583:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1584:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1594:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1595:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1596:
	.byte	'I'
	.ascii	"fr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1073,r13		! source line 1073
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_1597 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1602 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1605 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1604 = *_temp_1605  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1603 = _temp_1604 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1602  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1598:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1603 then goto _Label_1601		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1601
_Label_1599:
	mov	1076,r13		! source line 1076
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0AS",r10
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
!   _temp_1606 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1606 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1607 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1600:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1598
! END FOR
_Label_1601:
! ASSIGNMENT STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1609 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1608 = *_temp_1609  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1608		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1610 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1611 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1610  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1612 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1083,r13		! source line 1083
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1613
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1614
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1615
	.word	12
	.word	4
	.word	_Label_1616
	.word	-12
	.word	4
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	_Label_1621
	.word	-32
	.word	4
	.word	_Label_1622
	.word	-36
	.word	4
	.word	_Label_1623
	.word	-40
	.word	4
	.word	_Label_1624
	.word	-44
	.word	4
	.word	_Label_1625
	.word	-48
	.word	4
	.word	_Label_1626
	.word	-52
	.word	4
	.word	_Label_1627
	.word	-56
	.word	4
	.word	_Label_1628
	.word	-60
	.word	4
	.word	_Label_1629
	.word	-64
	.word	4
	.word	_Label_1630
	.word	-68
	.word	4
	.word	0
_Label_1613:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1614:
	.ascii	"Pself\0"
	.align
_Label_1615:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1628:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1629:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1630:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1631
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1631:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1632
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1632:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1093,r13		! source line 1093
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   _temp_1633 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1635 = &_temp_1634
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1635 = _temp_1635 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1637:
!   Data Move: *_temp_1635 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1635 = _temp_1635 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1636 = _temp_1636 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1636) then goto _Label_1637
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1637
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1638 = &_temp_1634
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3074
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3074:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1633 = *_temp_1638  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3075:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3075
! RETURN STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1639
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1641
	.word	-12
	.word	4
	.word	_Label_1642
	.word	-16
	.word	4
	.word	_Label_1643
	.word	-20
	.word	4
	.word	_Label_1644
	.word	-104
	.word	84
	.word	_Label_1645
	.word	-108
	.word	4
	.word	0
_Label_1639:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1640:
	.ascii	"Pself\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1103,r13		! source line 1103
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1646 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1646  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1647 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1652 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1653 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1652  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1648:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1653 then goto _Label_1651		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1651
_Label_1649:
	mov	1110,r13		! source line 1110
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1654 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1654  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1656 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1656 [i ] into _temp_1657
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1655 = _temp_1657		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1658 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1658  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1660 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1660 [i ] into _temp_1661
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1659 = *_temp_1661  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1662 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1662  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1663 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1664 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1664  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1117,r13		! source line 1117
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1666) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1665  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1665  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1118,r13		! source line 1118
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1667 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0IF",r10
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1671) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1670  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1670) then goto _Label_1669
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1669
!	jmp	_Label_1668
_Label_1668:
! THEN...
	mov	1121,r13		! source line 1121
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1673) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1672  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1674
_Label_1669:
! ELSE...
	mov	1123,r13		! source line 1123
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1675 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1674:
! CALL STATEMENT...
!   _temp_1676 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0IF",r10
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1679) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1677 else goto _Label_1678
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1678
	jmp	_Label_1677
_Label_1677:
! THEN...
	mov	1127,r13		! source line 1127
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1680 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1681
_Label_1678:
! ELSE...
	mov	1129,r13		! source line 1129
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1682 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1681:
! CALL STATEMENT...
!   _temp_1683 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0IF",r10
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1686) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1684 else goto _Label_1685
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1685
	jmp	_Label_1684
_Label_1684:
! THEN...
	mov	1133,r13		! source line 1133
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1687 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1688
_Label_1685:
! ELSE...
	mov	1135,r13		! source line 1135
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1689 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1688:
! CALL STATEMENT...
!   _temp_1690 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0IF",r10
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1693) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1691 else goto _Label_1692
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1692
	jmp	_Label_1691
_Label_1691:
! THEN...
	mov	1139,r13		! source line 1139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1694 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1695
_Label_1692:
! ELSE...
	mov	1141,r13		! source line 1141
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1696 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1696  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1695:
! CALL STATEMENT...
!   _temp_1697 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0IF",r10
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1700) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1698 else goto _Label_1699
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1699
	jmp	_Label_1698
_Label_1698:
! THEN...
	mov	1145,r13		! source line 1145
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1701 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1701  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1702
_Label_1699:
! ELSE...
	mov	1147,r13		! source line 1147
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1703 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1702:
! CALL STATEMENT...
!   Call the function
	mov	1149,r13		! source line 1149
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1650:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1648
! END FOR
_Label_1651:
! RETURN STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1704
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1705
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1706
	.word	-12
	.word	4
	.word	_Label_1707
	.word	-16
	.word	4
	.word	_Label_1708
	.word	-20
	.word	4
	.word	_Label_1709
	.word	-24
	.word	4
	.word	_Label_1710
	.word	-28
	.word	4
	.word	_Label_1711
	.word	-32
	.word	4
	.word	_Label_1712
	.word	-36
	.word	4
	.word	_Label_1713
	.word	-40
	.word	4
	.word	_Label_1714
	.word	-44
	.word	4
	.word	_Label_1715
	.word	-48
	.word	4
	.word	_Label_1716
	.word	-52
	.word	4
	.word	_Label_1717
	.word	-56
	.word	4
	.word	_Label_1718
	.word	-60
	.word	4
	.word	_Label_1719
	.word	-64
	.word	4
	.word	_Label_1720
	.word	-68
	.word	4
	.word	_Label_1721
	.word	-72
	.word	4
	.word	_Label_1722
	.word	-76
	.word	4
	.word	_Label_1723
	.word	-80
	.word	4
	.word	_Label_1724
	.word	-84
	.word	4
	.word	_Label_1725
	.word	-88
	.word	4
	.word	_Label_1726
	.word	-92
	.word	4
	.word	_Label_1727
	.word	-96
	.word	4
	.word	_Label_1728
	.word	-100
	.word	4
	.word	_Label_1729
	.word	-104
	.word	4
	.word	_Label_1730
	.word	-108
	.word	4
	.word	_Label_1731
	.word	-112
	.word	4
	.word	_Label_1732
	.word	-116
	.word	4
	.word	_Label_1733
	.word	-120
	.word	4
	.word	_Label_1734
	.word	-124
	.word	4
	.word	_Label_1735
	.word	-128
	.word	4
	.word	_Label_1736
	.word	-132
	.word	4
	.word	_Label_1737
	.word	-136
	.word	4
	.word	_Label_1738
	.word	-140
	.word	4
	.word	_Label_1739
	.word	-144
	.word	4
	.word	_Label_1740
	.word	-148
	.word	4
	.word	_Label_1741
	.word	-152
	.word	4
	.word	_Label_1742
	.word	-156
	.word	4
	.word	_Label_1743
	.word	-160
	.word	4
	.word	_Label_1744
	.word	-164
	.word	4
	.word	_Label_1745
	.word	-168
	.word	4
	.word	0
_Label_1704:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1705:
	.ascii	"Pself\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1155,r13		! source line 1155
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0RE",r10
!   _temp_1748 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1748 [entry ] into _temp_1749
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1747 = *_temp_1749  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1746 = _temp_1747 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1746  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1750
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1752
	.word	12
	.word	4
	.word	_Label_1753
	.word	-12
	.word	4
	.word	_Label_1754
	.word	-16
	.word	4
	.word	_Label_1755
	.word	-20
	.word	4
	.word	_Label_1756
	.word	-24
	.word	4
	.word	0
_Label_1750:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1751:
	.ascii	"Pself\0"
	.align
_Label_1752:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1165,r13		! source line 1165
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0RE",r10
!   _temp_1759 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1759 [entry ] into _temp_1760
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1758 = *_temp_1760  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1757 = _temp_1758 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1757  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1761
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1762
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1763
	.word	12
	.word	4
	.word	_Label_1764
	.word	-12
	.word	4
	.word	_Label_1765
	.word	-16
	.word	4
	.word	_Label_1766
	.word	-20
	.word	4
	.word	_Label_1767
	.word	-24
	.word	4
	.word	0
_Label_1761:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1762:
	.ascii	"Pself\0"
	.align
_Label_1763:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1174,r13		! source line 1174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0AS",r10
!   _temp_1768 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1768 [entry ] into _temp_1769
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   _temp_1773 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1773 [entry ] into _temp_1774
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1772 = *_temp_1774  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1771 = _temp_1772 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1770 = _temp_1771 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1769 = _temp_1770  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1775
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1777
	.word	12
	.word	4
	.word	_Label_1778
	.word	16
	.word	4
	.word	_Label_1779
	.word	-12
	.word	4
	.word	_Label_1780
	.word	-16
	.word	4
	.word	_Label_1781
	.word	-20
	.word	4
	.word	_Label_1782
	.word	-24
	.word	4
	.word	_Label_1783
	.word	-28
	.word	4
	.word	_Label_1784
	.word	-32
	.word	4
	.word	_Label_1785
	.word	-36
	.word	4
	.word	0
_Label_1775:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1776:
	.ascii	"Pself\0"
	.align
_Label_1777:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1778:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1184,r13		! source line 1184
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0RE",r10
!   _temp_1789 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1789 [entry ] into _temp_1790
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1788 = *_temp_1790  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1787 = _temp_1788 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1787) then goto _Label_1791
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1791
!   _temp_1786 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1792
_Label_1791:
!   _temp_1786 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1792:
!   ReturnResult: _temp_1786  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1793
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1794
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1795
	.word	12
	.word	4
	.word	_Label_1796
	.word	-16
	.word	4
	.word	_Label_1797
	.word	-20
	.word	4
	.word	_Label_1798
	.word	-24
	.word	4
	.word	_Label_1799
	.word	-28
	.word	4
	.word	_Label_1800
	.word	-9
	.word	1
	.word	0
_Label_1793:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1794:
	.ascii	"Pself\0"
	.align
_Label_1795:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1800:
	.byte	'C'
	.ascii	"_temp_1786\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1193,r13		! source line 1193
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0RE",r10
!   _temp_1804 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1804 [entry ] into _temp_1805
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1803 = *_temp_1805  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1802 = _temp_1803 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1802) then goto _Label_1806
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1806
!   _temp_1801 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1807
_Label_1806:
!   _temp_1801 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1807:
!   ReturnResult: _temp_1801  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1808
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1809
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1810
	.word	12
	.word	4
	.word	_Label_1811
	.word	-16
	.word	4
	.word	_Label_1812
	.word	-20
	.word	4
	.word	_Label_1813
	.word	-24
	.word	4
	.word	_Label_1814
	.word	-28
	.word	4
	.word	_Label_1815
	.word	-9
	.word	1
	.word	0
_Label_1808:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1809:
	.ascii	"Pself\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1815:
	.byte	'C'
	.ascii	"_temp_1801\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1202,r13		! source line 1202
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0RE",r10
!   _temp_1819 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1819 [entry ] into _temp_1820
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1818 = *_temp_1820  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1817 = _temp_1818 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1817) then goto _Label_1821
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1821
!   _temp_1816 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1822
_Label_1821:
!   _temp_1816 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1822:
!   ReturnResult: _temp_1816  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1823
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1825
	.word	12
	.word	4
	.word	_Label_1826
	.word	-16
	.word	4
	.word	_Label_1827
	.word	-20
	.word	4
	.word	_Label_1828
	.word	-24
	.word	4
	.word	_Label_1829
	.word	-28
	.word	4
	.word	_Label_1830
	.word	-9
	.word	1
	.word	0
_Label_1823:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1824:
	.ascii	"Pself\0"
	.align
_Label_1825:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1830:
	.byte	'C'
	.ascii	"_temp_1816\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0RE",r10
!   _temp_1834 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1834 [entry ] into _temp_1835
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1833 = *_temp_1835  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1832 = _temp_1833 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1832) then goto _Label_1836
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1836
!   _temp_1831 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1837
_Label_1836:
!   _temp_1831 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1837:
!   ReturnResult: _temp_1831  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1838
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1840
	.word	12
	.word	4
	.word	_Label_1841
	.word	-16
	.word	4
	.word	_Label_1842
	.word	-20
	.word	4
	.word	_Label_1843
	.word	-24
	.word	4
	.word	_Label_1844
	.word	-28
	.word	4
	.word	_Label_1845
	.word	-9
	.word	1
	.word	0
_Label_1838:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1839:
	.ascii	"Pself\0"
	.align
_Label_1840:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1845:
	.byte	'C'
	.ascii	"_temp_1831\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1220,r13		! source line 1220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0AS",r10
!   _temp_1846 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1846 [entry ] into _temp_1847
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1850 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1850 [entry ] into _temp_1851
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1849 = *_temp_1851  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1848 = _temp_1849 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1847 = _temp_1848  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1852
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1854
	.word	12
	.word	4
	.word	_Label_1855
	.word	-12
	.word	4
	.word	_Label_1856
	.word	-16
	.word	4
	.word	_Label_1857
	.word	-20
	.word	4
	.word	_Label_1858
	.word	-24
	.word	4
	.word	_Label_1859
	.word	-28
	.word	4
	.word	_Label_1860
	.word	-32
	.word	4
	.word	0
_Label_1852:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1853:
	.ascii	"Pself\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1229,r13		! source line 1229
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   _temp_1861 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1861 [entry ] into _temp_1862
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1865 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1865 [entry ] into _temp_1866
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1864 = *_temp_1866  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1863 = _temp_1864 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1862 = _temp_1863  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1867
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1869
	.word	12
	.word	4
	.word	_Label_1870
	.word	-12
	.word	4
	.word	_Label_1871
	.word	-16
	.word	4
	.word	_Label_1872
	.word	-20
	.word	4
	.word	_Label_1873
	.word	-24
	.word	4
	.word	_Label_1874
	.word	-28
	.word	4
	.word	_Label_1875
	.word	-32
	.word	4
	.word	0
_Label_1867:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1868:
	.ascii	"Pself\0"
	.align
_Label_1869:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1238,r13		! source line 1238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0AS",r10
!   _temp_1876 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1876 [entry ] into _temp_1877
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1880 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1880 [entry ] into _temp_1881
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1879 = *_temp_1881  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1878 = _temp_1879 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1877 = _temp_1878  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1882
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1884
	.word	12
	.word	4
	.word	_Label_1885
	.word	-12
	.word	4
	.word	_Label_1886
	.word	-16
	.word	4
	.word	_Label_1887
	.word	-20
	.word	4
	.word	_Label_1888
	.word	-24
	.word	4
	.word	_Label_1889
	.word	-28
	.word	4
	.word	_Label_1890
	.word	-32
	.word	4
	.word	0
_Label_1882:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1883:
	.ascii	"Pself\0"
	.align
_Label_1884:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1247,r13		! source line 1247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0AS",r10
!   _temp_1891 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1891 [entry ] into _temp_1892
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1895 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1895 [entry ] into _temp_1896
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1894 = *_temp_1896  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1893 = _temp_1894 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1892 = _temp_1893  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1897
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1899
	.word	12
	.word	4
	.word	_Label_1900
	.word	-12
	.word	4
	.word	_Label_1901
	.word	-16
	.word	4
	.word	_Label_1902
	.word	-20
	.word	4
	.word	_Label_1903
	.word	-24
	.word	4
	.word	_Label_1904
	.word	-28
	.word	4
	.word	_Label_1905
	.word	-32
	.word	4
	.word	0
_Label_1897:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1898:
	.ascii	"Pself\0"
	.align
_Label_1899:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0AS",r10
!   _temp_1906 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1906 [entry ] into _temp_1907
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1910 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1910 [entry ] into _temp_1911
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1909 = *_temp_1911  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1908 = _temp_1909 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1907 = _temp_1908  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1912
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1914
	.word	12
	.word	4
	.word	_Label_1915
	.word	-12
	.word	4
	.word	_Label_1916
	.word	-16
	.word	4
	.word	_Label_1917
	.word	-20
	.word	4
	.word	_Label_1918
	.word	-24
	.word	4
	.word	_Label_1919
	.word	-28
	.word	4
	.word	_Label_1920
	.word	-32
	.word	4
	.word	0
_Label_1912:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0AS",r10
!   _temp_1921 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1921 [entry ] into _temp_1922
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1925 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1925 [entry ] into _temp_1926
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1924 = *_temp_1926  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1923 = _temp_1924 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1922 = _temp_1923  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1927
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1929
	.word	12
	.word	4
	.word	_Label_1930
	.word	-12
	.word	4
	.word	_Label_1931
	.word	-16
	.word	4
	.word	_Label_1932
	.word	-20
	.word	4
	.word	_Label_1933
	.word	-24
	.word	4
	.word	_Label_1934
	.word	-28
	.word	4
	.word	_Label_1935
	.word	-32
	.word	4
	.word	0
_Label_1927:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1928:
	.ascii	"Pself\0"
	.align
_Label_1929:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1274,r13		! source line 1274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0AS",r10
!   _temp_1936 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1936 [entry ] into _temp_1937
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1940 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1940 [entry ] into _temp_1941
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1939 = *_temp_1941  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1938 = _temp_1939 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1937 = _temp_1938  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1942
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1944
	.word	12
	.word	4
	.word	_Label_1945
	.word	-12
	.word	4
	.word	_Label_1946
	.word	-16
	.word	4
	.word	_Label_1947
	.word	-20
	.word	4
	.word	_Label_1948
	.word	-24
	.word	4
	.word	_Label_1949
	.word	-28
	.word	4
	.word	_Label_1950
	.word	-32
	.word	4
	.word	0
_Label_1942:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1943:
	.ascii	"Pself\0"
	.align
_Label_1944:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   _temp_1951 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1951 [entry ] into _temp_1952
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1955 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1955 [entry ] into _temp_1956
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1954 = *_temp_1956  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1953 = _temp_1954 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1952 = _temp_1953  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1957
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1959
	.word	12
	.word	4
	.word	_Label_1960
	.word	-12
	.word	4
	.word	_Label_1961
	.word	-16
	.word	4
	.word	_Label_1962
	.word	-20
	.word	4
	.word	_Label_1963
	.word	-24
	.word	4
	.word	_Label_1964
	.word	-28
	.word	4
	.word	_Label_1965
	.word	-32
	.word	4
	.word	0
_Label_1957:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1958:
	.ascii	"Pself\0"
	.align
_Label_1959:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1967 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1967 [0 ] into _temp_1968
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1966 = _temp_1968		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1969 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1969  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1970
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1972
	.word	-12
	.word	4
	.word	_Label_1973
	.word	-16
	.word	4
	.word	_Label_1974
	.word	-20
	.word	4
	.word	_Label_1975
	.word	-24
	.word	4
	.word	0
_Label_1970:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1971:
	.ascii	"Pself\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1976
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1976
	jmp	_Label_1977
_Label_1976:
! THEN...
	mov	1319,r13		! source line 1319
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1978
_Label_1977:
! ELSE...
	mov	1320,r13		! source line 1320
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1980		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1980
!	jmp	_Label_1979
_Label_1979:
! THEN...
	mov	1321,r13		! source line 1321
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1980:
! END IF...
_Label_1978:
! ASSIGNMENT STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0WH",r10
_Label_1981:
!	jmp	_Label_1982
_Label_1982:
	mov	1327,r13		! source line 1327
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1985		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1985
!	jmp	_Label_1984
_Label_1984:
! THEN...
	mov	1329,r13		! source line 1329
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1986 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1329,r13		! source line 1329
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1985:
! IF STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0IF",r10
	mov	1332,r13		! source line 1332
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1990) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1989  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1989 then goto _Label_1988 else goto _Label_1987
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1987
	jmp	_Label_1988
_Label_1987:
! THEN...
	mov	1333,r13		! source line 1333
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1991 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1991  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1988:
! ASSIGNMENT STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0AS",r10
	mov	1336,r13		! source line 1336
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1993) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1992  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1992 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0WH",r10
_Label_1994:
!   if offset >= 8192 then goto _Label_1996		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1996
!	jmp	_Label_1995
_Label_1995:
	mov	1338,r13		! source line 1338
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1997 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1997  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1999		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1999
!	jmp	_Label_1998
_Label_1998:
! THEN...
	mov	1347,r13		! source line 1347
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1999:
! END WHILE...
	jmp	_Label_1994
_Label_1996:
! ASSIGNMENT STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1981
_Label_1983:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2000
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2002
	.word	12
	.word	4
	.word	_Label_2003
	.word	16
	.word	4
	.word	_Label_2004
	.word	20
	.word	4
	.word	_Label_2005
	.word	-9
	.word	1
	.word	_Label_2006
	.word	-16
	.word	4
	.word	_Label_2007
	.word	-20
	.word	4
	.word	_Label_2008
	.word	-24
	.word	4
	.word	_Label_2009
	.word	-28
	.word	4
	.word	_Label_2010
	.word	-10
	.word	1
	.word	_Label_2011
	.word	-32
	.word	4
	.word	_Label_2012
	.word	-36
	.word	4
	.word	_Label_2013
	.word	-40
	.word	4
	.word	_Label_2014
	.word	-44
	.word	4
	.word	_Label_2015
	.word	-48
	.word	4
	.word	0
_Label_2000:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2001:
	.ascii	"Pself\0"
	.align
_Label_2002:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2004:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2005:
	.byte	'C'
	.ascii	"_temp_1997\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2010:
	.byte	'C'
	.ascii	"_temp_1989\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2012:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2013:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2014:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2015:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2016
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2016
	jmp	_Label_2017
_Label_2016:
! THEN...
	mov	1369,r13		! source line 1369
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2018
_Label_2017:
! ELSE...
	mov	1370,r13		! source line 1370
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2020		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2020
!	jmp	_Label_2019
_Label_2019:
! THEN...
	mov	1371,r13		! source line 1371
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2020:
! END IF...
_Label_2018:
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0WH",r10
_Label_2021:
!	jmp	_Label_2022
_Label_2022:
	mov	1375,r13		! source line 1375
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2027		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2027
	jmp	_Label_2024
_Label_2027:
	mov	1377,r13		! source line 1377
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2029) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2028  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2028 then goto _Label_2026 else goto _Label_2024
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2024
	jmp	_Label_2026
_Label_2026:
	mov	1378,r13		! source line 1378
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2031) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2030  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2030 then goto _Label_2025 else goto _Label_2024
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2024
	jmp	_Label_2025
_Label_2024:
! THEN...
	mov	1379,r13		! source line 1379
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2025:
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
	mov	1381,r13		! source line 1381
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2033) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2032  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2032 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0WH",r10
_Label_2034:
!   if offset >= 8192 then goto _Label_2036		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2036
!	jmp	_Label_2035
_Label_2035:
	mov	1382,r13		! source line 1382
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2037 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2037  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2039		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2039
!	jmp	_Label_2038
_Label_2038:
! THEN...
	mov	1389,r13		! source line 1389
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2039:
! END WHILE...
	jmp	_Label_2034
_Label_2036:
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2021
_Label_2023:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2040
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2041
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2042
	.word	12
	.word	4
	.word	_Label_2043
	.word	16
	.word	4
	.word	_Label_2044
	.word	20
	.word	4
	.word	_Label_2045
	.word	-9
	.word	1
	.word	_Label_2046
	.word	-16
	.word	4
	.word	_Label_2047
	.word	-20
	.word	4
	.word	_Label_2048
	.word	-24
	.word	4
	.word	_Label_2049
	.word	-10
	.word	1
	.word	_Label_2050
	.word	-28
	.word	4
	.word	_Label_2051
	.word	-11
	.word	1
	.word	_Label_2052
	.word	-32
	.word	4
	.word	_Label_2053
	.word	-36
	.word	4
	.word	_Label_2054
	.word	-40
	.word	4
	.word	_Label_2055
	.word	-44
	.word	4
	.word	0
_Label_2040:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2041:
	.ascii	"Pself\0"
	.align
_Label_2042:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2043:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2044:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2045:
	.byte	'C'
	.ascii	"_temp_2037\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2049:
	.byte	'C'
	.ascii	"_temp_2030\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2051:
	.byte	'C'
	.ascii	"_temp_2028\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2053:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2054:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2055:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
	mov	1423,r13		! source line 1423
	mov	"\0\0SE",r10
!   _temp_2059 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2060) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2059  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2058  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2058 >= 4 then goto _Label_2057		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2057
!	jmp	_Label_2056
_Label_2056:
! THEN...
	mov	1426,r13		! source line 1426
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2057:
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2062		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2062
!	jmp	_Label_2061
_Label_2061:
! THEN...
	mov	1431,r13		! source line 1431
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2062:
! ASSIGNMENT STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0RE",r10
	mov	1436,r13		! source line 1436
	mov	"\0\0SE",r10
!   _temp_2065 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2064 = _temp_2065 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2066 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2067) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2064  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2066  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2063  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2063  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2068
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2070
	.word	12
	.word	4
	.word	_Label_2071
	.word	16
	.word	4
	.word	_Label_2072
	.word	20
	.word	4
	.word	_Label_2073
	.word	-12
	.word	4
	.word	_Label_2074
	.word	-16
	.word	4
	.word	_Label_2075
	.word	-20
	.word	4
	.word	_Label_2076
	.word	-24
	.word	4
	.word	_Label_2077
	.word	-28
	.word	4
	.word	_Label_2078
	.word	-32
	.word	4
	.word	_Label_2079
	.word	-36
	.word	4
	.word	_Label_2080
	.word	-40
	.word	4
	.word	_Label_2081
	.word	-44
	.word	4
	.word	0
_Label_2068:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2069:
	.ascii	"Pself\0"
	.align
_Label_2070:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2071:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2072:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2081:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2082
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2082:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2083
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2083:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	1978,r13		! source line 1978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2084 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2084  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0SE",r10
!   _temp_2086 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0SE",r10
!   _temp_2088 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2089
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2091
	.word	-12
	.word	4
	.word	_Label_2092
	.word	-16
	.word	4
	.word	_Label_2093
	.word	-20
	.word	4
	.word	_Label_2094
	.word	-24
	.word	4
	.word	_Label_2095
	.word	-28
	.word	4
	.word	0
_Label_2089:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2090:
	.ascii	"Pself\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	1994,r13		! source line 1994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0SE",r10
!   _temp_2096 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0WH",r10
_Label_2097:
!	jmp	_Label_2098
_Label_2098:
	mov	2008,r13		! source line 2008
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   _temp_2100 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2101) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2100  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0SE",r10
!   _temp_2102 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2015,r13		! source line 2015
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2111 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2105
	cmp	r1,2
	be	_Label_2106
	cmp	r1,3
	be	_Label_2107
	cmp	r1,4
	be	_Label_2108
	cmp	r1,5
	be	_Label_2109
	cmp	r1,6
	be	_Label_2110
	jmp	_Label_2103
! CASE 1...
_Label_2105:
! SEND STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0SE",r10
!   _temp_2112 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2106:
! CALL STATEMENT...
!   _temp_2113 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2113  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2020,r13		! source line 2020
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2107:
! CALL STATEMENT...
!   _temp_2114 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2114  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2022,r13		! source line 2022
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2108:
! CALL STATEMENT...
!   _temp_2115 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2024,r13		! source line 2024
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2109:
! BREAK STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0BR",r10
	jmp	_Label_2104
! CASE 6...
_Label_2110:
! CALL STATEMENT...
!   _temp_2116 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2030,r13		! source line 2030
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2103:
! CALL STATEMENT...
!   _temp_2117 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2032,r13		! source line 2032
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2104:
! END WHILE...
	jmp	_Label_2097
_Label_2099:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2118
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2120
	.word	12
	.word	4
	.word	_Label_2121
	.word	16
	.word	4
	.word	_Label_2122
	.word	20
	.word	4
	.word	_Label_2123
	.word	-12
	.word	4
	.word	_Label_2124
	.word	-16
	.word	4
	.word	_Label_2125
	.word	-20
	.word	4
	.word	_Label_2126
	.word	-24
	.word	4
	.word	_Label_2127
	.word	-28
	.word	4
	.word	_Label_2128
	.word	-32
	.word	4
	.word	_Label_2129
	.word	-36
	.word	4
	.word	_Label_2130
	.word	-40
	.word	4
	.word	_Label_2131
	.word	-44
	.word	4
	.word	_Label_2132
	.word	-48
	.word	4
	.word	_Label_2133
	.word	-52
	.word	4
	.word	0
_Label_2118:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2119:
	.ascii	"Pself\0"
	.align
_Label_2120:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2121:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2041,r13		! source line 2041
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2134
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2135
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2136
	.word	12
	.word	4
	.word	_Label_2137
	.word	16
	.word	4
	.word	_Label_2138
	.word	20
	.word	4
	.word	_Label_2139
	.word	24
	.word	4
	.word	0
_Label_2134:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2135:
	.ascii	"Pself\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2137:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2138:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2139:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	2067,r13		! source line 2067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0SE",r10
!   _temp_2140 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0WH",r10
_Label_2141:
!	jmp	_Label_2142
_Label_2142:
	mov	2080,r13		! source line 2080
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   _temp_2144 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2145) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2144  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0SE",r10
!   _temp_2146 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2086,r13		! source line 2086
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2155 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2149
	cmp	r1,2
	be	_Label_2150
	cmp	r1,3
	be	_Label_2151
	cmp	r1,4
	be	_Label_2152
	cmp	r1,5
	be	_Label_2153
	cmp	r1,6
	be	_Label_2154
	jmp	_Label_2147
! CASE 1...
_Label_2149:
! SEND STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   _temp_2156 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2150:
! CALL STATEMENT...
!   _temp_2157 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2091,r13		! source line 2091
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2151:
! CALL STATEMENT...
!   _temp_2158 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2158  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2093,r13		! source line 2093
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2152:
! CALL STATEMENT...
!   _temp_2159 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2159  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2095,r13		! source line 2095
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2153:
! BREAK STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0BR",r10
	jmp	_Label_2148
! CASE 6...
_Label_2154:
! CALL STATEMENT...
!   _temp_2160 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2160  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2101,r13		! source line 2101
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2147:
! CALL STATEMENT...
!   _temp_2161 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2161  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2103,r13		! source line 2103
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2148:
! END WHILE...
	jmp	_Label_2141
_Label_2143:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2162
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2164
	.word	12
	.word	4
	.word	_Label_2165
	.word	16
	.word	4
	.word	_Label_2166
	.word	20
	.word	4
	.word	_Label_2167
	.word	-12
	.word	4
	.word	_Label_2168
	.word	-16
	.word	4
	.word	_Label_2169
	.word	-20
	.word	4
	.word	_Label_2170
	.word	-24
	.word	4
	.word	_Label_2171
	.word	-28
	.word	4
	.word	_Label_2172
	.word	-32
	.word	4
	.word	_Label_2173
	.word	-36
	.word	4
	.word	_Label_2174
	.word	-40
	.word	4
	.word	_Label_2175
	.word	-44
	.word	4
	.word	_Label_2176
	.word	-48
	.word	4
	.word	_Label_2177
	.word	-52
	.word	4
	.word	0
_Label_2162:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2163:
	.ascii	"Pself\0"
	.align
_Label_2164:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2165:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2112,r13		! source line 2112
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2178
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2180
	.word	12
	.word	4
	.word	_Label_2181
	.word	16
	.word	4
	.word	_Label_2182
	.word	20
	.word	4
	.word	_Label_2183
	.word	24
	.word	4
	.word	0
_Label_2178:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2179:
	.ascii	"Pself\0"
	.align
_Label_2180:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2181:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2182:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2183:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2184
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2184:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2185
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2185:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	2143,r13		! source line 2143
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2186 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0SE",r10
!   _temp_2188 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_2191 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   _temp_2192 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2194 = &_temp_2193
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2194 = _temp_2194 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2196 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3100
!   _temp_2196 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2198:
!   Data Move: *_temp_2194 = _temp_2196  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3101:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3101
!   _temp_2194 = _temp_2194 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2195 = _temp_2195 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2195) then goto _Label_2198
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2198
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2199 = &_temp_2193
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3102
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3102:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2192 = *_temp_2199  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3103:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3103
! FOR STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2204 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2205 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2204  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2200:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2205 then goto _Label_2203		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2203
_Label_2201:
	mov	2160,r13		! source line 2160
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   _temp_2206 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2206 [i ] into _temp_2207
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2208 = _temp_2207 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2208 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   _temp_2209 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2209 [i ] into _temp_2210
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_2212 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2212 [i ] into _temp_2213
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2211 = _temp_2213		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2214 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2211  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2202:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2200
! END FOR
_Label_2203:
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   _temp_2217 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   _temp_2218 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2220 = &_temp_2219
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2220 = _temp_2220 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2222 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3104:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3104
!   _temp_2222 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2224:
!   Data Move: *_temp_2220 = _temp_2222  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3105:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3105
!   _temp_2220 = _temp_2220 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2221 = _temp_2221 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2221) then goto _Label_2224
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2224
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2225 = &_temp_2219
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3106
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3106:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2218 = *_temp_2225  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3107:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3107
! FOR STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2230 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2231 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2230  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2226:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2231 then goto _Label_2229		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2229
_Label_2227:
	mov	2172,r13		! source line 2172
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   _temp_2232 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2232 [i ] into _temp_2233
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2234 = _temp_2233 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2234 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0SE",r10
!   _temp_2236 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2236 [i ] into _temp_2237
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2235 = _temp_2237		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2238 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2235  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2228:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2226
! END FOR
_Label_2229:
! ASSIGNMENT STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3108:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3108
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   _temp_2240 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2241 = _temp_2240 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2241 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
	mov	2184,r13		! source line 2184
	mov	"\0\0SE",r10
!   _temp_2242 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0SE",r10
!   _temp_2243 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2244
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2245
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2246
	.word	-12
	.word	4
	.word	_Label_2247
	.word	-16
	.word	4
	.word	_Label_2248
	.word	-20
	.word	4
	.word	_Label_2249
	.word	-24
	.word	4
	.word	_Label_2250
	.word	-28
	.word	4
	.word	_Label_2251
	.word	-32
	.word	4
	.word	_Label_2252
	.word	-36
	.word	4
	.word	_Label_2253
	.word	-40
	.word	4
	.word	_Label_2254
	.word	-44
	.word	4
	.word	_Label_2255
	.word	-48
	.word	4
	.word	_Label_2256
	.word	-52
	.word	4
	.word	_Label_2257
	.word	-56
	.word	4
	.word	_Label_2258
	.word	-60
	.word	4
	.word	_Label_2259
	.word	-64
	.word	4
	.word	_Label_2260
	.word	-68
	.word	4
	.word	_Label_2261
	.word	-72
	.word	4
	.word	_Label_2262
	.word	-100
	.word	28
	.word	_Label_2263
	.word	-104
	.word	4
	.word	_Label_2264
	.word	-108
	.word	4
	.word	_Label_2265
	.word	-392
	.word	284
	.word	_Label_2266
	.word	-396
	.word	4
	.word	_Label_2267
	.word	-400
	.word	4
	.word	_Label_2268
	.word	-404
	.word	4
	.word	_Label_2269
	.word	-408
	.word	4
	.word	_Label_2270
	.word	-412
	.word	4
	.word	_Label_2271
	.word	-416
	.word	4
	.word	_Label_2272
	.word	-420
	.word	4
	.word	_Label_2273
	.word	-424
	.word	4
	.word	_Label_2274
	.word	-428
	.word	4
	.word	_Label_2275
	.word	-432
	.word	4
	.word	_Label_2276
	.word	-436
	.word	4
	.word	_Label_2277
	.word	-440
	.word	4
	.word	_Label_2278
	.word	-444
	.word	4
	.word	_Label_2279
	.word	-448
	.word	4
	.word	_Label_2280
	.word	-452
	.word	4
	.word	_Label_2281
	.word	-456
	.word	4
	.word	_Label_2282
	.word	-460
	.word	4
	.word	_Label_2283
	.word	-500
	.word	40
	.word	_Label_2284
	.word	-504
	.word	4
	.word	_Label_2285
	.word	-508
	.word	4
	.word	_Label_2286
	.word	-912
	.word	404
	.word	_Label_2287
	.word	-916
	.word	4
	.word	_Label_2288
	.word	-920
	.word	4
	.word	_Label_2289
	.word	-924
	.word	4
	.word	_Label_2290
	.word	-928
	.word	4
	.word	_Label_2291
	.word	-932
	.word	4
	.word	_Label_2292
	.word	-936
	.word	4
	.word	_Label_2293
	.word	-940
	.word	4
	.word	_Label_2294
	.word	-944
	.word	4
	.word	0
_Label_2244:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2245:
	.ascii	"Pself\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2294:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	2192,r13		! source line 2192
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0SE",r10
!   _temp_2295 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2296 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2296  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2195,r13		! source line 2195
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2301 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2302 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2301  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2297:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2302 then goto _Label_2300		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2300
_Label_2298:
	mov	2196,r13		! source line 2196
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2303 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2198,r13		! source line 2198
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2304 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2304  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2199,r13		! source line 2199
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0SE",r10
!   _temp_2305 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2305 [i ] into _temp_2306
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2299:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2297
! END FOR
_Label_2300:
! CALL STATEMENT...
!   _temp_2307 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2307  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2202,r13		! source line 2202
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2308 = _function_216_printFCB
	set	_function_216_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2309 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2308  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2204,r13		! source line 2204
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2310 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2310  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2205,r13		! source line 2205
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2315 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2316 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2315  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2311:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2316 then goto _Label_2314		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2314
_Label_2312:
	mov	2206,r13		! source line 2206
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2317 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2317  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2207,r13		! source line 2207
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2208,r13		! source line 2208
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2318 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2318  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2209,r13		! source line 2209
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2320 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2320 [i ] into _temp_2321
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2319 = _temp_2321		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2319  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2210,r13		! source line 2210
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2322 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2322  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2211,r13		! source line 2211
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0SE",r10
!   _temp_2323 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2323 [i ] into _temp_2324
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2313:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2311
! END FOR
_Label_2314:
! CALL STATEMENT...
!   _temp_2325 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2325  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2214,r13		! source line 2214
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0SE",r10
!   _temp_2326 = _function_215_printOpen
	set	_function_215_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2327 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2326  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_2328 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2216,r13		! source line 2216
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2329
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2330
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2331
	.word	-12
	.word	4
	.word	_Label_2332
	.word	-16
	.word	4
	.word	_Label_2333
	.word	-20
	.word	4
	.word	_Label_2334
	.word	-24
	.word	4
	.word	_Label_2335
	.word	-28
	.word	4
	.word	_Label_2336
	.word	-32
	.word	4
	.word	_Label_2337
	.word	-36
	.word	4
	.word	_Label_2338
	.word	-40
	.word	4
	.word	_Label_2339
	.word	-44
	.word	4
	.word	_Label_2340
	.word	-48
	.word	4
	.word	_Label_2341
	.word	-52
	.word	4
	.word	_Label_2342
	.word	-56
	.word	4
	.word	_Label_2343
	.word	-60
	.word	4
	.word	_Label_2344
	.word	-64
	.word	4
	.word	_Label_2345
	.word	-68
	.word	4
	.word	_Label_2346
	.word	-72
	.word	4
	.word	_Label_2347
	.word	-76
	.word	4
	.word	_Label_2348
	.word	-80
	.word	4
	.word	_Label_2349
	.word	-84
	.word	4
	.word	_Label_2350
	.word	-88
	.word	4
	.word	_Label_2351
	.word	-92
	.word	4
	.word	_Label_2352
	.word	-96
	.word	4
	.word	_Label_2353
	.word	-100
	.word	4
	.word	_Label_2354
	.word	-104
	.word	4
	.word	_Label_2355
	.word	-108
	.word	4
	.word	_Label_2356
	.word	-112
	.word	4
	.word	_Label_2357
	.word	-116
	.word	4
	.word	0
_Label_2329:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2330:
	.ascii	"Pself\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2357:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	2221,r13		! source line 2221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
	mov	2237,r13		! source line 2237
	mov	"\0\0SE",r10
!   _temp_2358 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2359
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2359
	jmp	_Label_2360
_Label_2359:
! THEN...
	mov	2239,r13		! source line 2239
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2360:
! SEND STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   _temp_2361 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0WH",r10
_Label_2362:
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   _temp_2365 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2363 else goto _Label_2364
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2364
	jmp	_Label_2363
_Label_2363:
	mov	2244,r13		! source line 2244
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2366 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2367 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2366  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2362
_Label_2364:
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_2368 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2369 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2369 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2370 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2370 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2371 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2371 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0SE",r10
!   _temp_2372 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2257,r13		! source line 2257
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2373
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2375
	.word	12
	.word	4
	.word	_Label_2376
	.word	-12
	.word	4
	.word	_Label_2377
	.word	-16
	.word	4
	.word	_Label_2378
	.word	-20
	.word	4
	.word	_Label_2379
	.word	-24
	.word	4
	.word	_Label_2380
	.word	-28
	.word	4
	.word	_Label_2381
	.word	-32
	.word	4
	.word	_Label_2382
	.word	-36
	.word	4
	.word	_Label_2383
	.word	-40
	.word	4
	.word	_Label_2384
	.word	-44
	.word	4
	.word	_Label_2385
	.word	-48
	.word	4
	.word	_Label_2386
	.word	-52
	.word	4
	.word	_Label_2387
	.word	-56
	.word	4
	.word	0
_Label_2373:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2374:
	.ascii	"Pself\0"
	.align
_Label_2375:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2386:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2387:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	2262,r13		! source line 2262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2389		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2389
!	jmp	_Label_2388
_Label_2388:
! THEN...
	mov	2293,r13		! source line 2293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2390 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2390  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2293,r13		! source line 2293
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2389:
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0WH",r10
_Label_2391:
!   if numFiles <= 0 then goto _Label_2393		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2393
!	jmp	_Label_2392
_Label_2392:
	mov	2303,r13		! source line 2303
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2394 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2394  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2304,r13		! source line 2304
	mov	"\0\0CA",r10
	call	_function_217_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2395 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2395  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2306,r13		! source line 2306
	mov	"\0\0CA",r10
	call	_function_217_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2396 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2396  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2308,r13		! source line 2308
	mov	"\0\0CA",r10
	call	_function_217_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2400 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2400 then goto _Label_2398		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2398
!	jmp	_Label_2399
_Label_2399:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2402
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2401 = _temp_2402		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2401  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2311,r13		! source line 2311
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2397 else goto _Label_2398
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2398
	jmp	_Label_2397
_Label_2397:
! THEN...
	mov	2312,r13		! source line 2312
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0BR",r10
	jmp	_Label_2393
! END IF...
_Label_2398:
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2391
_Label_2393:
! IF STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2404		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2404
!	jmp	_Label_2403
_Label_2403:
! THEN...
	mov	2320,r13		! source line 2320
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2404:
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2405 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2410 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2411 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2410  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2406:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2411 then goto _Label_2409		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2409
_Label_2407:
	mov	2325,r13		! source line 2325
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   _temp_2412 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2412 [i ] into _temp_2413
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2413		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2417 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2416 = *_temp_2417  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2416 != start then goto _Label_2415		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2415
!	jmp	_Label_2414
_Label_2414:
! THEN...
	mov	2328,r13		! source line 2328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2418 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2421 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2420 = *_temp_2421  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2419 = _temp_2420 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2418 = _temp_2419  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_2422 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2415:
!   Increment the FOR-LOOP index variable and jump back
_Label_2408:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2406
! END FOR
_Label_2409:
! WHILE STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0WH",r10
_Label_2423:
	mov	2335,r13		! source line 2335
	mov	"\0\0SE",r10
!   _temp_2426 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2424 else goto _Label_2425
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2425
	jmp	_Label_2424
_Label_2424:
	mov	2335,r13		! source line 2335
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0SE",r10
!   _temp_2427 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2428 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2427  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2423
_Label_2425:
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
	mov	2338,r13		! source line 2338
	mov	"\0\0SE",r10
!   _temp_2429 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0SE",r10
!   _temp_2430 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2431 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2431 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2432 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2432 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2433 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2433 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2438 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2437 = *_temp_2438  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2437 < 0 then goto _Label_2436		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2436
	jmp	_Label_2434
_Label_2436:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2439 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2439 ) then goto _Label_2435		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2435
!	jmp	_Label_2434
_Label_2434:
! THEN...
	mov	2348,r13		! source line 2348
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2440 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2440  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2348,r13		! source line 2348
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2435:
! RETURN STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2441
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2442
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2443
	.word	12
	.word	4
	.word	_Label_2444
	.word	-12
	.word	4
	.word	_Label_2445
	.word	-16
	.word	4
	.word	_Label_2446
	.word	-20
	.word	4
	.word	_Label_2447
	.word	-24
	.word	4
	.word	_Label_2448
	.word	-28
	.word	4
	.word	_Label_2449
	.word	-32
	.word	4
	.word	_Label_2450
	.word	-36
	.word	4
	.word	_Label_2451
	.word	-40
	.word	4
	.word	_Label_2452
	.word	-44
	.word	4
	.word	_Label_2453
	.word	-48
	.word	4
	.word	_Label_2454
	.word	-52
	.word	4
	.word	_Label_2455
	.word	-56
	.word	4
	.word	_Label_2456
	.word	-60
	.word	4
	.word	_Label_2457
	.word	-64
	.word	4
	.word	_Label_2458
	.word	-68
	.word	4
	.word	_Label_2459
	.word	-72
	.word	4
	.word	_Label_2460
	.word	-76
	.word	4
	.word	_Label_2461
	.word	-80
	.word	4
	.word	_Label_2462
	.word	-84
	.word	4
	.word	_Label_2463
	.word	-88
	.word	4
	.word	_Label_2464
	.word	-92
	.word	4
	.word	_Label_2465
	.word	-96
	.word	4
	.word	_Label_2466
	.word	-100
	.word	4
	.word	_Label_2467
	.word	-104
	.word	4
	.word	_Label_2468
	.word	-108
	.word	4
	.word	_Label_2469
	.word	-112
	.word	4
	.word	_Label_2470
	.word	-116
	.word	4
	.word	_Label_2471
	.word	-120
	.word	4
	.word	_Label_2472
	.word	-124
	.word	4
	.word	_Label_2473
	.word	-128
	.word	4
	.word	_Label_2474
	.word	-132
	.word	4
	.word	_Label_2475
	.word	-136
	.word	4
	.word	_Label_2476
	.word	-140
	.word	4
	.word	_Label_2477
	.word	-144
	.word	4
	.word	_Label_2478
	.word	-148
	.word	4
	.word	_Label_2479
	.word	-152
	.word	4
	.word	_Label_2480
	.word	-156
	.word	4
	.word	_Label_2481
	.word	-160
	.word	4
	.word	0
_Label_2441:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2442:
	.ascii	"Pself\0"
	.align
_Label_2443:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2475:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2476:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2477:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2479:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2480:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2481:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	2363,r13		! source line 2363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0IF",r10
!   _temp_2484 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2484 then goto _Label_2483		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2483
!	jmp	_Label_2482
_Label_2482:
! THEN...
	mov	2366,r13		! source line 2366
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2483:
! SEND STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0SE",r10
!   _temp_2485 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_2486 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2487 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2487  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2488 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2491 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2490 = *_temp_2491  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2489 = _temp_2490 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2488 = _temp_2489  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2495 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2494 = *_temp_2495  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2494 > 0 then goto _Label_2493		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2493
!	jmp	_Label_2492
_Label_2492:
! THEN...
	mov	2373,r13		! source line 2373
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_2496 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
!   _temp_2497 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2498 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2497  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2501 = *_temp_2502  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2500 = _temp_2501 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2499 = _temp_2500  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2506 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2505 = *_temp_2506  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2505 > 0 then goto _Label_2504		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2504
!	jmp	_Label_2503
_Label_2503:
! THEN...
	mov	2377,r13		! source line 2377
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0SE",r10
!   _temp_2507 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_2508 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2509 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2508  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2504:
! END IF...
_Label_2493:
! SEND STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2510 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2381,r13		! source line 2381
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2511
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2513
	.word	12
	.word	4
	.word	_Label_2514
	.word	-12
	.word	4
	.word	_Label_2515
	.word	-16
	.word	4
	.word	_Label_2516
	.word	-20
	.word	4
	.word	_Label_2517
	.word	-24
	.word	4
	.word	_Label_2518
	.word	-28
	.word	4
	.word	_Label_2519
	.word	-32
	.word	4
	.word	_Label_2520
	.word	-36
	.word	4
	.word	_Label_2521
	.word	-40
	.word	4
	.word	_Label_2522
	.word	-44
	.word	4
	.word	_Label_2523
	.word	-48
	.word	4
	.word	_Label_2524
	.word	-52
	.word	4
	.word	_Label_2525
	.word	-56
	.word	4
	.word	_Label_2526
	.word	-60
	.word	4
	.word	_Label_2527
	.word	-64
	.word	4
	.word	_Label_2528
	.word	-68
	.word	4
	.word	_Label_2529
	.word	-72
	.word	4
	.word	_Label_2530
	.word	-76
	.word	4
	.word	_Label_2531
	.word	-80
	.word	4
	.word	_Label_2532
	.word	-84
	.word	4
	.word	_Label_2533
	.word	-88
	.word	4
	.word	_Label_2534
	.word	-92
	.word	4
	.word	_Label_2535
	.word	-96
	.word	4
	.word	_Label_2536
	.word	-100
	.word	4
	.word	_Label_2537
	.word	-104
	.word	4
	.word	0
_Label_2511:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2512:
	.ascii	"Pself\0"
	.align
_Label_2513:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2537:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	2386,r13		! source line 2386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2541 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2540 = *_temp_2541  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2540) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2542 = _temp_2540 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2542 ) then goto _Label_2539		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2539
!	jmp	_Label_2538
_Label_2538:
! THEN...
	mov	2392,r13		! source line 2392
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2546 = *_temp_2547  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2546) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = _temp_2546 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2545 = *_temp_2548  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2545 >= 0 then goto _Label_2544		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2544
!	jmp	_Label_2543
_Label_2543:
! THEN...
	mov	2393,r13		! source line 2393
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2549 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2393,r13		! source line 2393
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2544:
! ASSIGNMENT STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2551 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2550 = *_temp_2551  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2550) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = _temp_2550 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2552 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2556 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2555 = *_temp_2556  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2555) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2557 = _temp_2555 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2554 = *_temp_2557  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2560 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2559 = *_temp_2560  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2559) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2561 = _temp_2559 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2558 = *_temp_2561  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2553 = _temp_2554 + _temp_2558		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2564 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2563 = *_temp_2564  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2563) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2565 = _temp_2563 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2562 = *_temp_2565  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2566 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2553  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2562  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2539:
! RETURN STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2567
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2569
	.word	12
	.word	4
	.word	_Label_2570
	.word	-12
	.word	4
	.word	_Label_2571
	.word	-16
	.word	4
	.word	_Label_2572
	.word	-20
	.word	4
	.word	_Label_2573
	.word	-24
	.word	4
	.word	_Label_2574
	.word	-28
	.word	4
	.word	_Label_2575
	.word	-32
	.word	4
	.word	_Label_2576
	.word	-36
	.word	4
	.word	_Label_2577
	.word	-40
	.word	4
	.word	_Label_2578
	.word	-44
	.word	4
	.word	_Label_2579
	.word	-48
	.word	4
	.word	_Label_2580
	.word	-52
	.word	4
	.word	_Label_2581
	.word	-56
	.word	4
	.word	_Label_2582
	.word	-60
	.word	4
	.word	_Label_2583
	.word	-64
	.word	4
	.word	_Label_2584
	.word	-68
	.word	4
	.word	_Label_2585
	.word	-72
	.word	4
	.word	_Label_2586
	.word	-76
	.word	4
	.word	_Label_2587
	.word	-80
	.word	4
	.word	_Label_2588
	.word	-84
	.word	4
	.word	_Label_2589
	.word	-88
	.word	4
	.word	_Label_2590
	.word	-92
	.word	4
	.word	_Label_2591
	.word	-96
	.word	4
	.word	_Label_2592
	.word	-100
	.word	4
	.word	_Label_2593
	.word	-104
	.word	4
	.word	_Label_2594
	.word	-108
	.word	4
	.word	0
_Label_2567:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2568:
	.ascii	"Pself\0"
	.align
_Label_2569:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	2405,r13		! source line 2405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2595 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2601		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2601
!   _temp_2600 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2602
_Label_2601:
!   _temp_2600 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2602:
!   if _temp_2600 then goto _Label_2599 else goto _Label_2596
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2596
	jmp	_Label_2599
_Label_2599:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2605 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2604 = *_temp_2605  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2604 == 0 then goto _Label_2606		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2606
!   _temp_2603 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2607
_Label_2606:
!   _temp_2603 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2607:
!   if _temp_2603 then goto _Label_2598 else goto _Label_2596
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2596
	jmp	_Label_2598
_Label_2598:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2610 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2609 = *_temp_2610  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2609) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2611 = _temp_2609 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2608 = *_temp_2611  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2608 >= 0 then goto _Label_2597		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2597
!	jmp	_Label_2596
_Label_2596:
! THEN...
	mov	2422,r13		! source line 2422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2612 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2612  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2422,r13		! source line 2422
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2597:
! ASSIGNMENT STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2613 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2613  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0WH",r10
_Label_2614:
!   if numBytes <= 0 then goto _Label_2616		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2616
!	jmp	_Label_2615
_Label_2615:
	mov	2425,r13		! source line 2425
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2620 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2619 = *_temp_2620  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2619 == sector then goto _Label_2618		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2618
!	jmp	_Label_2617
_Label_2617:
! THEN...
	mov	2440,r13		! source line 2440
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2621) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2623 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2622 = sector + _temp_2623		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2626 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2625 = *_temp_2626  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2627 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2622  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2625  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2628 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2628 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2629 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2618:
! ASSIGNMENT STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2631 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2630 = *_temp_2631  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2630 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   _temp_2632 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2632  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2449,r13		! source line 2449
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2453,r13		! source line 2453
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2614
_Label_2616:
! SEND STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_2633 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2634
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2636
	.word	12
	.word	4
	.word	_Label_2637
	.word	16
	.word	4
	.word	_Label_2638
	.word	20
	.word	4
	.word	_Label_2639
	.word	24
	.word	4
	.word	_Label_2640
	.word	-16
	.word	4
	.word	_Label_2641
	.word	-20
	.word	4
	.word	_Label_2642
	.word	-24
	.word	4
	.word	_Label_2643
	.word	-28
	.word	4
	.word	_Label_2644
	.word	-32
	.word	4
	.word	_Label_2645
	.word	-36
	.word	4
	.word	_Label_2646
	.word	-40
	.word	4
	.word	_Label_2647
	.word	-44
	.word	4
	.word	_Label_2648
	.word	-48
	.word	4
	.word	_Label_2649
	.word	-52
	.word	4
	.word	_Label_2650
	.word	-56
	.word	4
	.word	_Label_2651
	.word	-60
	.word	4
	.word	_Label_2652
	.word	-64
	.word	4
	.word	_Label_2653
	.word	-68
	.word	4
	.word	_Label_2654
	.word	-72
	.word	4
	.word	_Label_2655
	.word	-76
	.word	4
	.word	_Label_2656
	.word	-80
	.word	4
	.word	_Label_2657
	.word	-84
	.word	4
	.word	_Label_2658
	.word	-88
	.word	4
	.word	_Label_2659
	.word	-92
	.word	4
	.word	_Label_2660
	.word	-96
	.word	4
	.word	_Label_2661
	.word	-100
	.word	4
	.word	_Label_2662
	.word	-104
	.word	4
	.word	_Label_2663
	.word	-9
	.word	1
	.word	_Label_2664
	.word	-10
	.word	1
	.word	_Label_2665
	.word	-108
	.word	4
	.word	_Label_2666
	.word	-112
	.word	4
	.word	_Label_2667
	.word	-116
	.word	4
	.word	_Label_2668
	.word	-120
	.word	4
	.word	_Label_2669
	.word	-124
	.word	4
	.word	_Label_2670
	.word	-128
	.word	4
	.word	0
_Label_2634:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2635:
	.ascii	"Pself\0"
	.align
_Label_2636:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2637:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2638:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2639:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2663:
	.byte	'C'
	.ascii	"_temp_2603\0"
	.align
_Label_2664:
	.byte	'C'
	.ascii	"_temp_2600\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2666:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2667:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2668:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2669:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2670:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	2469,r13		! source line 2469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0SE",r10
!   _temp_2671 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2677		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2677
!   _temp_2676 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2678
_Label_2677:
!   _temp_2676 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2678:
!   if _temp_2676 then goto _Label_2675 else goto _Label_2672
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2672
	jmp	_Label_2675
_Label_2675:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2681 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2680 = *_temp_2681  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2680 == 0 then goto _Label_2682		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2682
!   _temp_2679 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2683
_Label_2682:
!   _temp_2679 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2683:
!   if _temp_2679 then goto _Label_2674 else goto _Label_2672
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2672
	jmp	_Label_2674
_Label_2674:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2686 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2685 = *_temp_2686  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2685) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2687 = _temp_2685 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2684 = *_temp_2687  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2684 >= 0 then goto _Label_2673		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2673
!	jmp	_Label_2672
_Label_2672:
! THEN...
	mov	2487,r13		! source line 2487
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2688 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2688  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2487,r13		! source line 2487
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2673:
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2689 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2689  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0WH",r10
_Label_2690:
!   if numBytes <= 0 then goto _Label_2692		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2692
!	jmp	_Label_2691
_Label_2691:
	mov	2490,r13		! source line 2490
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2696 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2695 = *_temp_2696  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2695 == sector then goto _Label_2694		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2694
!	jmp	_Label_2693
_Label_2693:
! THEN...
	mov	2506,r13		! source line 2506
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2697) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2694:
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2699 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2698 = *_temp_2699  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2698 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   _temp_2700 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2700  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2509,r13		! source line 2509
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2704 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2703 = *_temp_2704  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2703 != sector then goto _Label_2702		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2702
!	jmp	_Label_2701
_Label_2701:
	jmp	_Label_2705
_Label_2702:
! ELSE...
	mov	2512,r13		! source line 2512
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2708
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2708
	jmp	_Label_2707
_Label_2708:
!   if bytesToMove != 8192 then goto _Label_2707		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2707
!	jmp	_Label_2706
_Label_2706:
	jmp	_Label_2709
_Label_2707:
! ELSE...
	mov	2516,r13		! source line 2516
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2712 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2711 = *_temp_2712  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2710 = sector + _temp_2711		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2714 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2713 = *_temp_2714  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2715 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2710  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2713  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2709:
! END IF...
_Label_2705:
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2716 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2716 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2717 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2717 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2690
_Label_2692:
! SEND STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_2718 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2719
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2721
	.word	12
	.word	4
	.word	_Label_2722
	.word	16
	.word	4
	.word	_Label_2723
	.word	20
	.word	4
	.word	_Label_2724
	.word	24
	.word	4
	.word	_Label_2725
	.word	-16
	.word	4
	.word	_Label_2726
	.word	-20
	.word	4
	.word	_Label_2727
	.word	-24
	.word	4
	.word	_Label_2728
	.word	-28
	.word	4
	.word	_Label_2729
	.word	-32
	.word	4
	.word	_Label_2730
	.word	-36
	.word	4
	.word	_Label_2731
	.word	-40
	.word	4
	.word	_Label_2732
	.word	-44
	.word	4
	.word	_Label_2733
	.word	-48
	.word	4
	.word	_Label_2734
	.word	-52
	.word	4
	.word	_Label_2735
	.word	-56
	.word	4
	.word	_Label_2736
	.word	-60
	.word	4
	.word	_Label_2737
	.word	-64
	.word	4
	.word	_Label_2738
	.word	-68
	.word	4
	.word	_Label_2739
	.word	-72
	.word	4
	.word	_Label_2740
	.word	-76
	.word	4
	.word	_Label_2741
	.word	-80
	.word	4
	.word	_Label_2742
	.word	-84
	.word	4
	.word	_Label_2743
	.word	-88
	.word	4
	.word	_Label_2744
	.word	-92
	.word	4
	.word	_Label_2745
	.word	-96
	.word	4
	.word	_Label_2746
	.word	-100
	.word	4
	.word	_Label_2747
	.word	-104
	.word	4
	.word	_Label_2748
	.word	-108
	.word	4
	.word	_Label_2749
	.word	-112
	.word	4
	.word	_Label_2750
	.word	-9
	.word	1
	.word	_Label_2751
	.word	-10
	.word	1
	.word	_Label_2752
	.word	-116
	.word	4
	.word	_Label_2753
	.word	-120
	.word	4
	.word	_Label_2754
	.word	-124
	.word	4
	.word	_Label_2755
	.word	-128
	.word	4
	.word	_Label_2756
	.word	-132
	.word	4
	.word	_Label_2757
	.word	-136
	.word	4
	.word	0
_Label_2719:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2720:
	.ascii	"Pself\0"
	.align
_Label_2721:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2722:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2723:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2724:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2750:
	.byte	'C'
	.ascii	"_temp_2679\0"
	.align
_Label_2751:
	.byte	'C'
	.ascii	"_temp_2676\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2753:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2754:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2755:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2756:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2757:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2758
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2758:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2759
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2759:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	2573,r13		! source line 2573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
	mov	2575,r13		! source line 2575
	mov	"\0\0SE",r10
!   _temp_2760 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2761
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2762
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2763
	.word	-12
	.word	4
	.word	0
_Label_2761:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2762:
	.ascii	"Pself\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	2583,r13		! source line 2583
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2764 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2584,r13		! source line 2584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2585,r13		! source line 2585
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2765 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2586,r13		! source line 2586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2587,r13		! source line 2587
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2766 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2766  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2588,r13		! source line 2588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2589,r13		! source line 2589
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2767 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2767  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2590,r13		! source line 2590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2591,r13		! source line 2591
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2768 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2768  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2769 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2594,r13		! source line 2594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2595,r13		! source line 2595
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2596,r13		! source line 2596
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2770
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2772
	.word	-12
	.word	4
	.word	_Label_2773
	.word	-16
	.word	4
	.word	_Label_2774
	.word	-20
	.word	4
	.word	_Label_2775
	.word	-24
	.word	4
	.word	_Label_2776
	.word	-28
	.word	4
	.word	_Label_2777
	.word	-32
	.word	4
	.word	0
_Label_2770:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2771:
	.ascii	"Pself\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2778
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2778:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2779
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2779:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	2607,r13		! source line 2607
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2780 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2780  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2608,r13		! source line 2608
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2609,r13		! source line 2609
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2781 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2781  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2610,r13		! source line 2610
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2783		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2783
!	jmp	_Label_2782
_Label_2782:
! THEN...
	mov	2612,r13		! source line 2612
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2784
_Label_2783:
! ELSE...
	mov	2614,r13		! source line 2614
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2785 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2785  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2614,r13		! source line 2614
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2784:
! RETURN STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2786
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2787
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2788
	.word	-12
	.word	4
	.word	_Label_2789
	.word	-16
	.word	4
	.word	_Label_2790
	.word	-20
	.word	4
	.word	0
_Label_2786:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2787:
	.ascii	"Pself\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	2620,r13		! source line 2620
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
!   _temp_2791 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2792 = _temp_2791 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0SE",r10
!   _temp_2793 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2794 = _temp_2793 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0RE",r10
	mov	2634,r13		! source line 2634
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2797 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2796  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2795  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2795  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2798
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2800
	.word	12
	.word	4
	.word	_Label_2801
	.word	16
	.word	4
	.word	_Label_2802
	.word	-16
	.word	4
	.word	_Label_2803
	.word	-20
	.word	4
	.word	_Label_2804
	.word	-9
	.word	1
	.word	_Label_2805
	.word	-24
	.word	4
	.word	_Label_2806
	.word	-28
	.word	4
	.word	_Label_2807
	.word	-32
	.word	4
	.word	_Label_2808
	.word	-36
	.word	4
	.word	_Label_2809
	.word	-40
	.word	4
	.word	0
_Label_2798:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2799:
	.ascii	"Pself\0"
	.align
_Label_2800:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2801:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2804:
	.byte	'C'
	.ascii	"_temp_2795\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2809:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	2639,r13		! source line 2639
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0IF",r10
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
!   _temp_2813 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2814) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2813  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2812  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2812 then goto _Label_2811 else goto _Label_2810
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2810
	jmp	_Label_2811
_Label_2810:
! THEN...
	mov	2645,r13		! source line 2645
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2815 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2815  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2645,r13		! source line 2645
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2811:
! RETURN STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2816
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2818
	.word	-16
	.word	4
	.word	_Label_2819
	.word	-20
	.word	4
	.word	_Label_2820
	.word	-24
	.word	4
	.word	_Label_2821
	.word	-9
	.word	1
	.word	_Label_2822
	.word	-28
	.word	4
	.word	0
_Label_2816:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2817:
	.ascii	"Pself\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2821:
	.byte	'C'
	.ascii	"_temp_2812\0"
	.align
_Label_2822:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	2652,r13		! source line 2652
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2826 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2825 = *_temp_2826  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2825) then goto _Label_2824
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2824
!	jmp	_Label_2823
_Label_2823:
! THEN...
	mov	2679,r13		! source line 2679
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2827 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2827  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2679,r13		! source line 2679
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2824:
! IF STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0IF",r10
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2831) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2830  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2830 == 1112300152 then goto _Label_2829		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2829
!	jmp	_Label_2828
_Label_2828:
! THEN...
	mov	2684,r13		! source line 2684
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2832 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2832  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2684,r13		! source line 2684
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2829:
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2833) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2834) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
	mov	2691,r13		! source line 2691
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2835) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2836) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2837) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0AS",r10
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2838) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0IF",r10
!   _temp_2841 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2841) then goto _Label_2840
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2840
!	jmp	_Label_2839
_Label_2839:
! THEN...
	mov	2698,r13		! source line 2698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2842 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2842  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2840:
! ASSIGNMENT STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2844
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2844
!	jmp	_Label_2843
_Label_2843:
! THEN...
	mov	2706,r13		! source line 2706
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2844:
! IF STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0IF",r10
!   _temp_2848 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2848) then goto _Label_2847
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2847
!	jmp	_Label_2846
_Label_2846:
! THEN...
	mov	2712,r13		! source line 2712
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2849 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2712,r13		! source line 2712
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2847:
! IF STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0IF",r10
!   _temp_2852 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2852 then goto _Label_2851		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2851
!	jmp	_Label_2850
_Label_2850:
! THEN...
	mov	2716,r13		! source line 2716
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2853 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2716,r13		! source line 2716
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2851:
! ASSIGNMENT STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
!   _temp_2856 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2856) then goto _Label_2855
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2855
!	jmp	_Label_2854
_Label_2854:
! THEN...
	mov	2723,r13		! source line 2723
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2857 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2857  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2723,r13		! source line 2723
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2855:
! IF STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0IF",r10
!   _temp_2860 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2860 then goto _Label_2859		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2859
!	jmp	_Label_2858
_Label_2858:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2861 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2861  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2859:
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
!   _temp_2864 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2863 = _temp_2864 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2862 = _temp_2863 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2862 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2866		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2866
!	jmp	_Label_2865
_Label_2865:
! THEN...
	mov	2749,r13		! source line 2749
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2867 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2867  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2868 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2868  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2750,r13		! source line 2750
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2869 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2751,r13		! source line 2751
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2866:
! SEND STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0SE",r10
!   _temp_2870 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0IF",r10
	mov	2760,r13		! source line 2760
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2874) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2873  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2873 == 707406378 then goto _Label_2872		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2872
!	jmp	_Label_2871
_Label_2871:
! THEN...
	mov	2761,r13		! source line 2761
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2875 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2875  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2761,r13		! source line 2761
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   _temp_2876 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2872:
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2881 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2882 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2881  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2877:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2882 then goto _Label_2880		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2880
_Label_2878:
	mov	2768,r13		! source line 2768
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0IF",r10
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2886) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2885  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2885 then goto _Label_2884 else goto _Label_2883
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2883
	jmp	_Label_2884
_Label_2883:
! THEN...
	mov	2773,r13		! source line 2773
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2887 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2887  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2773,r13		! source line 2773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
!   _temp_2888 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2884:
! SEND STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2879:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2877
! END FOR
_Label_2880:
! IF STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0IF",r10
	mov	2782,r13		! source line 2782
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2892) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2891  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2891 == 707406378 then goto _Label_2890		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2890
!	jmp	_Label_2889
_Label_2889:
! THEN...
	mov	2783,r13		! source line 2783
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2893 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2893  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2783,r13		! source line 2783
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0SE",r10
!   _temp_2894 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2890:
! FOR STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2899 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2900 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2899  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2895:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2900 then goto _Label_2898		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2898
_Label_2896:
	mov	2789,r13		! source line 2789
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0IF",r10
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2904) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2903  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2903 then goto _Label_2902 else goto _Label_2901
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2901
	jmp	_Label_2902
_Label_2901:
! THEN...
	mov	2794,r13		! source line 2794
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2905 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2905  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2794,r13		! source line 2794
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0SE",r10
!   _temp_2906 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2902:
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2897:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2895
! END FOR
_Label_2898:
! IF STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0IF",r10
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2910) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2909  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2909 == 707406378 then goto _Label_2908		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2908
!	jmp	_Label_2907
_Label_2907:
! THEN...
	mov	2803,r13		! source line 2803
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2911 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2911  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0SE",r10
!   _temp_2912 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2908:
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
	mov	2809,r13		! source line 2809
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2913
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2914
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2915
	.word	12
	.word	4
	.word	_Label_2916
	.word	-16
	.word	4
	.word	_Label_2917
	.word	-20
	.word	4
	.word	_Label_2918
	.word	-24
	.word	4
	.word	_Label_2919
	.word	-28
	.word	4
	.word	_Label_2920
	.word	-32
	.word	4
	.word	_Label_2921
	.word	-36
	.word	4
	.word	_Label_2922
	.word	-40
	.word	4
	.word	_Label_2923
	.word	-9
	.word	1
	.word	_Label_2924
	.word	-44
	.word	4
	.word	_Label_2925
	.word	-48
	.word	4
	.word	_Label_2926
	.word	-52
	.word	4
	.word	_Label_2927
	.word	-56
	.word	4
	.word	_Label_2928
	.word	-60
	.word	4
	.word	_Label_2929
	.word	-64
	.word	4
	.word	_Label_2930
	.word	-68
	.word	4
	.word	_Label_2931
	.word	-72
	.word	4
	.word	_Label_2932
	.word	-76
	.word	4
	.word	_Label_2933
	.word	-10
	.word	1
	.word	_Label_2934
	.word	-80
	.word	4
	.word	_Label_2935
	.word	-84
	.word	4
	.word	_Label_2936
	.word	-88
	.word	4
	.word	_Label_2937
	.word	-92
	.word	4
	.word	_Label_2938
	.word	-96
	.word	4
	.word	_Label_2939
	.word	-100
	.word	4
	.word	_Label_2940
	.word	-104
	.word	4
	.word	_Label_2941
	.word	-108
	.word	4
	.word	_Label_2942
	.word	-112
	.word	4
	.word	_Label_2943
	.word	-116
	.word	4
	.word	_Label_2944
	.word	-120
	.word	4
	.word	_Label_2945
	.word	-124
	.word	4
	.word	_Label_2946
	.word	-128
	.word	4
	.word	_Label_2947
	.word	-132
	.word	4
	.word	_Label_2948
	.word	-136
	.word	4
	.word	_Label_2949
	.word	-140
	.word	4
	.word	_Label_2950
	.word	-144
	.word	4
	.word	_Label_2951
	.word	-148
	.word	4
	.word	_Label_2952
	.word	-152
	.word	4
	.word	_Label_2953
	.word	-156
	.word	4
	.word	_Label_2954
	.word	-160
	.word	4
	.word	_Label_2955
	.word	-164
	.word	4
	.word	_Label_2956
	.word	-168
	.word	4
	.word	_Label_2957
	.word	-172
	.word	4
	.word	_Label_2958
	.word	-176
	.word	4
	.word	_Label_2959
	.word	-180
	.word	4
	.word	_Label_2960
	.word	-184
	.word	4
	.word	_Label_2961
	.word	-188
	.word	4
	.word	_Label_2962
	.word	-192
	.word	4
	.word	_Label_2963
	.word	-196
	.word	4
	.word	_Label_2964
	.word	-200
	.word	4
	.word	_Label_2965
	.word	-204
	.word	4
	.word	_Label_2966
	.word	-208
	.word	4
	.word	_Label_2967
	.word	-212
	.word	4
	.word	_Label_2968
	.word	-216
	.word	4
	.word	_Label_2969
	.word	-220
	.word	4
	.word	_Label_2970
	.word	-224
	.word	4
	.word	_Label_2971
	.word	-228
	.word	4
	.word	_Label_2972
	.word	-232
	.word	4
	.word	_Label_2973
	.word	-236
	.word	4
	.word	_Label_2974
	.word	-240
	.word	4
	.word	_Label_2975
	.word	-244
	.word	4
	.word	_Label_2976
	.word	-248
	.word	4
	.word	_Label_2977
	.word	-252
	.word	4
	.word	_Label_2978
	.word	-256
	.word	4
	.word	_Label_2979
	.word	-260
	.word	4
	.word	_Label_2980
	.word	-264
	.word	4
	.word	_Label_2981
	.word	-268
	.word	4
	.word	0
_Label_2913:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2914:
	.ascii	"Pself\0"
	.align
_Label_2915:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2923:
	.byte	'C'
	.ascii	"_temp_2903\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2933:
	.byte	'C'
	.ascii	"_temp_2885\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2970:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2972:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2976:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2977:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2978:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2979:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2980:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
