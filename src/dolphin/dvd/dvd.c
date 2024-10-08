#include "dolphin/dvd.h"
#include "dolphin/dvd/dvdlow.h"
#include "dolphin/os.h"

/* 804509E8-804509EC -00001 0004+00 1/1 0/0 0/0 .sdata           __DVDVersion */
static char* __DVDVersion = "<< Dolphin SDK - DVD\trelease build: Apr  5 2004 04:14:51 (0x2301) >>";

static void defaultOptionalCommandChecker();
static void stateReadingFST();
static void cbForStateReadingFST();
static void cbForStateError();
static void stateTimeout();
static void stateGettingError();
static u32 CategorizeError(u32 error);
static void cbForStateGettingError();
static void cbForUnrecoveredError();
static void cbForUnrecoveredErrorRetry();
static void stateGoToRetry();
static void cbForStateGoToRetry();
static void stateCheckID();
static void stateCheckID3();
static void stateCheckID2a();
static void cbForStateCheckID2a();
static void stateCheckID2();
static void cbForStateCheckID1();
static void cbForStateCheckID2();
static void cbForStateCheckID3();
static void AlarmHandler();
static void stateCoverClosed();
static void stateCoverClosed_CMD();
static void cbForStateCoverClosed();
static void stateMotorStopped();
static void cbForStateMotorStopped();
static void stateReady();
static void stateBusy();
static void cbForStateBusy();
static void cbForCancelSync(s32 result, DVDCommandBlock* block);
void __DVDPrepareResetAsync(DVDCBCallback callbac);
BOOL __DVDTestAlarm(OSAlarm* alarm);

//
// External References:
//

void __DVDInitWA();
void __DVDInterruptHandler(s16 interrupt, OSContext* context);
void DVDLowRead();
void DVDLowSeek();
void DVDLowWaitCoverClose();
void DVDLowReadDiskID();
void DVDLowStopMotor();
void DVDLowRequestError();
void DVDLowInquiry();
void DVDLowAudioStream();
void DVDLowRequestAudioStatus();
void DVDLowAudioBufferConfig();
void DVDLowReset();
void DVDLowBreak();
DVDLowCallback DVDLowClearCallback();
BOOL __DVDLowTestAlarm(OSAlarm* alarm);
void __DVDFSInit();
void __DVDClearWaitingQueue();
BOOL __DVDPushWaitingQueue();
DVDCommandBlock* __DVDPopWaitingQueue();
BOOL __DVDCheckWaitingQueue();
void __DVDDequeueWaitingQueue();
void __DVDStoreErrorCode();
BOOL DVDCompareDiskID(DVDDiskID*, DVDDiskID*);
void __DVDPrintFatalMessage();
void __fstLoad();
extern OSThreadQueue __DVDThreadQueue;

/* 803490EC-803490F0 343A2C 0004+00 1/0 0/0 0/0 .text            defaultOptionalCommandChecker */
static void defaultOptionalCommandChecker() {}

/* 80451778-8045177C 000C78 0004+00 24/24 0/0 0/0 .sbss            executing */
static DVDCommandBlock* executing;

/* 8045177C-80451780 000C7C 0004+00 4/4 0/0 0/0 .sbss            IDShouldBe */
static DVDDiskID* IDShouldBe;

/* 80451780-80451784 000C80 0004+00 3/3 0/0 0/0 .sbss            bootInfo */
static OSBootInfo* bootInfo;

/* 80451784-80451788 000C84 0004+00 8/8 0/0 0/0 .sbss            PauseFlag */
static volatile BOOL PauseFlag;

/* 80451788-8045178C 000C88 0004+00 5/5 0/0 0/0 .sbss            PausingFlag */
static volatile BOOL PausingFlag;

/* 8045178C-80451790 000C8C 0004+00 2/2 0/0 0/0 .sbss            AutoFinishing */
static volatile BOOL AutoFinishing;

/* 80451790-80451794 000C90 0004+00 4/4 0/0 0/0 .sbss            FatalErrorFlag */
static volatile BOOL FatalErrorFlag;

/* 80451794-80451798 000C94 0004+00 6/6 0/0 0/0 .sbss            CurrCommand */
static volatile u32 CurrCommand;

/* 80451798-8045179C 000C98 0004+00 8/8 0/0 0/0 .sbss            Canceling */
static volatile u32 Canceling;

/* 8045179C-804517A0 000C9C 0004+00 8/8 0/0 0/0 .sbss            CancelCallback */
static DVDCBCallback CancelCallback;

/* 804517A0-804517A4 000CA0 0004+00 9/9 0/0 0/0 .sbss            ResumeFromHere */
static volatile u32 ResumeFromHere;

/* 804517A4-804517A8 000CA4 0004+00 1/1 0/0 0/0 .sbss            CancelLastError */
static volatile u32 CancelLastError;

/* 804517A8-804517AC 000CA8 0004+00 1/1 0/0 0/0 .sbss            LastError */
static volatile u32 LastError;

/* 804517AC-804517B0 000CAC 0004+00 9/9 0/0 0/0 .sbss            NumInternalRetry */
static volatile s32 NumInternalRetry;

/* 804517B0-804517B4 000CB0 0004+00 3/3 0/0 0/0 .sbss            ResetRequired */
static volatile BOOL ResetRequired;

/* 804517B4-804517B8 000CB4 0004+00 1/1 0/0 0/0 .sbss            FirstTimeInBootrom */
static volatile BOOL FirstTimeInBootrom;

/* 804517B8-804517BC 000CB8 0004+00 5/5 0/0 0/0 .sbss            MotorState */
static u32 MotorState;

/* 804517BC-804517C0 000CBC 0004+00 1/1 0/0 0/0 .sbss            DVDInitialized */
static BOOL DVDInitialized;

/* 803490F0-803491C8 343A30 00D8+00 0/0 3/3 0/0 .text            DVDInit */
void DVDInit(void) {
    if (DVDInitialized) {
        return;
    }

    OSRegisterVersion(__DVDVersion);
    DVDInitialized = TRUE;
    __DVDFSInit();
    __DVDClearWaitingQueue();
    __DVDInitWA();

    bootInfo = (OSBootInfo*)OSPhysicalToCached(0x0000);
    MotorState = 0;
    IDShouldBe = &(bootInfo->disk_info);
    __OSSetInterruptHandler(21, __DVDInterruptHandler);
    __OSUnmaskInterrupts(0x400);
    OSInitThreadQueue(&__DVDThreadQueue);

    __DIRegs[0] = 0x2A;
    __DIRegs[1] = 0;

    if (bootInfo->boot_code == 0xE5207C22) {
        OSReport("load fst\n");
        __fstLoad();
    } else if (bootInfo->boot_code != 0xD15EA5E) {
        FirstTimeInBootrom = TRUE;
    }
}

/* ############################################################################################## */

/* 8044C900-8044C920 079620 0020+00 8/8 0/0 0/0 .bss             BB2 */
static DVDBB2 BB2 ALIGN_DECL(32);

/* 804509EC-804509F0 00046C 0004+00 6/6 0/0 0/0 .sdata           autoInvalidation */
static BOOL autoInvalidation = TRUE;

/* 804509F0-804509F4 -00001 0004+00 1/1 0/0 0/0 .sdata           checkOptionalCommand */
static DVDOptionalCommandChecker checkOptionalCommand = defaultOptionalCommandChecker;

/* 804509F4-804509FC 000474 0006+02 2/2 0/0 0/0 .sdata           @23 */

typedef void (*stateFunc)(DVDCommandBlock* block);
/* 804517C0-804517C8 000CC0 0004+04 6/6 0/0 0/0 .sbss "dvd.c"           LastState */
static stateFunc LastState;

/* 803491C8-8034925C 343B08 0094+00 1/1 0/0 0/0 .text            stateReadingFST */
void stateReadingFST() {
    LastState = (stateFunc)stateReadingFST;

    if (bootInfo->fst_max_length < BB2.FSTLength) {
        OSPanic(__FILE__, 661, "DVDChangeDisk(): FST in the new disc is too big.   ");
    }

    DVDLowRead(bootInfo->fst_location, OSRoundUp32B(BB2.FSTLength), BB2.FSTPosition,
               cbForStateReadingFST);
}

/* ############################################################################################## */
/* 8044C920-8044C940 079640 0020+00 2/3 0/0 0/0 .bss             CurrDiskID */
static DVDDiskID CurrDiskID ALIGN_DECL(32);

/* 8044C940-8044C970 079660 0030+00 10/14 0/0 0/0 .bss             DummyCommandBlock */
static DVDCommandBlock DummyCommandBlock;

/* 8034925C-803492DC 343B9C 0080+00 2/2 0/0 0/0 .text            cbForStateReadingFST */
static void cbForStateReadingFST(u32 intType) {
    DVDCommandBlock* finished;

    if (intType == 16) {
        stateTimeout();
        return;
    }

    if (intType & 1) {
        NumInternalRetry = 0;
        __DVDFSInit();
        finished = executing;
        executing = &DummyCommandBlock;
        finished->state = 0;
        if (finished->callback) {
            (finished->callback)(0, finished);
        }

        stateReady();

    } else {
        stateGettingError();
    }
}

static void stateError(u32 error) {
    __DVDStoreErrorCode(error);
    DVDLowStopMotor(cbForStateError);
}

/* 803492DC-80349388 343C1C 00AC+00 12/12 0/0 0/0 .text            cbForStateError */
static void cbForStateError(u32 intType) {
    DVDCommandBlock* finished;
    executing->state = -1;

    if (intType == 16) {
        stateTimeout();
        return;
    }

    __DVDPrintFatalMessage();

    FatalErrorFlag = TRUE;
    finished = executing;
    executing = &DummyCommandBlock;
    if (finished->callback) {
        (finished->callback)(-1, finished);
    }

    if (Canceling) {
        Canceling = FALSE;
        if (CancelCallback)
            (CancelCallback)(0, finished);
    }

    stateReady();
}

/* 80349388-803493BC 343CC8 0034+00 2/2 0/0 0/0 .text            stateTimeout */
static void stateTimeout(void) {
    __DVDStoreErrorCode(0x1234568);
    DVDReset();
    cbForStateError(0);
}

/* 803493BC-803493E4 343CFC 0028+00 1/1 0/0 0/0 .text            stateGettingError */
static void stateGettingError(void) {
    DVDLowRequestError(cbForStateGettingError);
}

/* 803493E4-80349498 343D24 00B4+00 1/1 0/0 0/0 .text            CategorizeError */
static u32 CategorizeError(u32 error) {
    if (error == 0x20400) {
        LastError = error;
        return 1;
    }

    error &= 0xffffff;

    if ((error == 0x62800) || (error == 0x23a00) || (error == 0xb5a01)) {
        return 0;
    }

    ++NumInternalRetry;
    if (NumInternalRetry == 2) {
        if (error == LastError) {
            LastError = error;
            return 1;
        } else {
            LastError = error;
            return 2;
        }
    } else {
        LastError = error;

        if ((error == 0x31100) || (executing->command == 5)) {
            return 2;
        } else {
            return 3;
        }
    }
}

static BOOL CheckCancel(u32 resume) {
    DVDCommandBlock* finished;

    if (Canceling) {
        ResumeFromHere = resume;
        Canceling = FALSE;

        finished = executing;
        executing = &DummyCommandBlock;

        finished->state = 10;
        if (finished->callback)
            (*finished->callback)(-3, finished);
        if (CancelCallback)
            (CancelCallback)(0, finished);
        stateReady();
        return TRUE;
    }
    return FALSE;
}

/* 80349498-803496FC 343DD8 0264+00 6/6 0/0 0/0 .text            cbForStateGettingError */
static void cbForStateGettingError(u32 intType) {
    u32 error;
    u32 status;
    u32 errorCategory;
    u32 resume;

    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 2) {
        stateError(0x1234567);
        return;
    }

    error = __DIRegs[8];
    status = error & 0xff000000;

    errorCategory = CategorizeError(error);

    if (errorCategory == 1) {
        stateError(error);
        return;
    }

    if ((errorCategory == 2) || (errorCategory == 3)) {
        resume = 0;
    } else {
        if (status == 0x01000000)
            resume = 4;
        else if (status == 0x02000000)
            resume = 6;
        else if (status == 0x03000000)
            resume = 3;
        else
            resume = 5;
    }

    if (CheckCancel(resume))
        return;

    if (errorCategory == 2) {
        __DVDStoreErrorCode(error);
        stateGoToRetry();
        return;
    }

    if (errorCategory == 3) {
        if ((error & 0x00ffffff) == 0x00031100) {
            DVDLowSeek(executing->offset, cbForUnrecoveredError);
        } else {
            LastState(executing);
        }
        return;
    }

    if (status == 0x01000000) {
        executing->state = 5;
        stateMotorStopped();
        return;
    } else if (status == 0x02000000) {
        executing->state = 3;
        stateCoverClosed();
        return;
    } else if (status == 0x03000000) {
        executing->state = 4;
        stateMotorStopped();
        return;
    } else {
        stateError(0x1234567);
        return;
    }
}

/* 803496FC-80349758 34403C 005C+00 1/1 0/0 0/0 .text            cbForUnrecoveredError */
static void cbForUnrecoveredError(u32 intType) {
    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 1) {
        stateGoToRetry();
        return;
    }

    DVDLowRequestError(cbForUnrecoveredErrorRetry);
}

/* 80349758-803497D8 344098 0080+00 1/1 0/0 0/0 .text            cbForUnrecoveredErrorRetry */
static void cbForUnrecoveredErrorRetry(u32 intType) {
    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 2) {
        stateError(0x1234567);
        return;
    }

    stateError(__DIRegs[8]);
}

/* 803497D8-80349800 344118 0028+00 2/2 0/0 0/0 .text            stateGoToRetry */
static void stateGoToRetry(void) {
    DVDLowStopMotor(cbForStateGoToRetry);
}

/* 80349800-80349940 344140 0140+00 1/1 0/0 0/0 .text            cbForStateGoToRetry */
static void cbForStateGoToRetry(u32 intType) {
    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 2) {
        stateError(0x1234567);
        return;
    }

    NumInternalRetry = 0;

    if ((CurrCommand == 4) || (CurrCommand == 5) || (CurrCommand == 13) || (CurrCommand == 15)) {
        ResetRequired = TRUE;
    }

    if (!CheckCancel(2)) {
        executing->state = 11;
        stateMotorStopped();
    }
}

/* 80349940-80349A20 344280 00E0+00 1/1 0/0 0/0 .text            stateCheckID */
static void stateCheckID(void) {
    switch (CurrCommand) {
    case 3:
        if (DVDCompareDiskID(&CurrDiskID, executing->disk_id)) {
            memcpy(IDShouldBe, &CurrDiskID, sizeof(DVDDiskID));

            executing->state = 1;
            DCInvalidateRange(&BB2, sizeof(DVDBB2));
            LastState = stateCheckID2a;
            stateCheckID2a(executing);
            return;
        } else {
            DVDLowStopMotor(cbForStateCheckID1);
        }
        break;

    default:
        if (memcmp(&CurrDiskID, IDShouldBe, sizeof(DVDDiskID))) {
            DVDLowStopMotor(cbForStateCheckID1);
        } else {
            LastState = stateCheckID3;
            stateCheckID3(executing);
        }
        break;
    }
}

/* 80349A20-80349A54 344360 0034+00 1/1 0/0 0/0 .text            stateCheckID3 */
static void stateCheckID3(void) {
    DVDLowAudioBufferConfig(IDShouldBe->is_streaming, 10, cbForStateCheckID3);
}

/* 80349A54-80349A88 344394 0034+00 1/1 0/0 0/0 .text            stateCheckID2a */
static void stateCheckID2a(void) {
    DVDLowAudioBufferConfig(IDShouldBe->is_streaming, 10, cbForStateCheckID2a);
}

/* 80349A88-80349AF0 3443C8 0068+00 1/1 0/0 0/0 .text            cbForStateCheckID2a */
static void cbForStateCheckID2a(u32 intType) {
    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 1) {
        NumInternalRetry = 0;
        stateCheckID2(executing);
        return;
    }

    DVDLowRequestError(cbForStateGettingError);
}

/* 80349AF0-80349B28 344430 0038+00 1/1 0/0 0/0 .text            stateCheckID2 */
static void stateCheckID2() {
    DVDLowRead(&BB2, OSRoundUp32B(sizeof(BB2)), 0x420, cbForStateCheckID2);
}

/* 80349B28-80349C24 344468 00FC+00 1/1 0/0 0/0 .text            cbForStateCheckID1 */
static void cbForStateCheckID1(u32 intType) {
    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 2) {
        stateError(0x1234567);
        return;
    }

    NumInternalRetry = 0;

    if (!CheckCancel(1)) {
        executing->state = 6;
        stateMotorStopped();
    }
}

/* 80349C24-80349CFC 344564 00D8+00 1/1 0/0 0/0 .text            cbForStateCheckID2 */

static void cbForStateCheckID2(u32 intType) {
    if (intType == 16) {
        stateTimeout();
        return;
    }

    if (intType & 1) {
        NumInternalRetry = 0;

        LastState = (stateFunc)stateReadingFST;

        if (bootInfo->fst_max_length < BB2.FSTLength) {
            OSPanic(__FILE__, 661, "DVDChangeDisk(): FST in the new disc is too big.   ");
        }

        DVDLowRead(bootInfo->fst_location, OSRoundUp32B(BB2.FSTLength), BB2.FSTPosition,
                   cbForStateReadingFST);

    } else {
        stateGettingError();
    }
}

/* 80349CFC-80349DEC 34463C 00F0+00 1/1 0/0 0/0 .text            cbForStateCheckID3 */
static void cbForStateCheckID3(u32 intType) {
    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 1) {
        NumInternalRetry = 0;

        if (!CheckCancel(0)) {
            executing->state = 1;
            stateBusy(executing);
        }
    } else {
        stateGettingError();
    }
}

/* 80349DEC-80349E30 34472C 0044+00 3/3 0/0 0/0 .text            AlarmHandler */
static void AlarmHandler(OSAlarm* alarm, OSContext* context) {
    DVDReset();
    DCInvalidateRange(&CurrDiskID, sizeof(DVDDiskID));
    LastState = stateCoverClosed_CMD;
    stateCoverClosed_CMD(executing);
}

/* ############################################################################################## */
/* 8044C970-8044C998 079690 0028+00 1/4 0/0 0/0 .bss             ResetAlarm */
static OSAlarm ResetAlarm;

/* 80349E30-80349F04 344770 00D4+00 1/1 0/0 0/0 .text            stateCoverClosed */
static void stateCoverClosed(void) {
    DVDCommandBlock* finished;

    switch (CurrCommand) {
    case 5:
    case 4:
    case 13:
    case 15:
        __DVDClearWaitingQueue();
        finished = executing;
        executing = &DummyCommandBlock;
        if (finished->callback) {
            (finished->callback)(-4, finished);
        }
        stateReady();
        break;

    default:
        MotorState = 0;
        DVDReset();
        OSCreateAlarm(&ResetAlarm);
        OSSetAlarm(&ResetAlarm, OSMillisecondsToTicks(1150), AlarmHandler);
        break;
    }
}

/* 80349F04-80349F34 344844 0030+00 1/1 0/0 0/0 .text            stateCoverClosed_CMD */
static void stateCoverClosed_CMD(DVDCommandBlock* block) {
    DVDLowReadDiskID(&CurrDiskID, cbForStateCoverClosed);
}

/* 80349F34-80349F98 344874 0064+00 1/1 0/0 0/0 .text            cbForStateCoverClosed */
static void cbForStateCoverClosed(u32 intType) {
    if (intType == 16) {
        __DVDStoreErrorCode(0x1234568);
        DVDReset();
        cbForStateError(0);
        return;
    }

    if (intType & 1) {
        NumInternalRetry = 0;
        stateCheckID();
    } else {
        stateGettingError();
    }
}

/* 80349F98-80349FC0 3448D8 0028+00 3/3 0/0 0/0 .text            stateMotorStopped */
static void stateMotorStopped(void) {
    DVDLowWaitCoverClose(cbForStateMotorStopped);
}

/* 80349FC0-8034A0AC 344900 00EC+00 4/4 0/0 0/0 .text            cbForStateMotorStopped */
static void cbForStateMotorStopped(u32 intType) {
    __DIRegs[1] = 0;
    executing->state = 3;
    stateCoverClosed();
}

/* 8034A0AC-8034A394 3449EC 02E8+00 18/18 0/0 0/0 .text            stateReady */
static void stateReady() {
    DVDCommandBlock* finished;

    if (!__DVDCheckWaitingQueue()) {
        executing = (DVDCommandBlock*)NULL;
        return;
    }

    if (PauseFlag) {
        PausingFlag = TRUE;
        executing = (DVDCommandBlock*)NULL;
        return;
    }

    executing = __DVDPopWaitingQueue();

    if (FatalErrorFlag) {
        executing->state = -1;
        finished = executing;
        executing = &DummyCommandBlock;
        if (finished->callback) {
            (finished->callback)(-1, finished);
        }
        stateReady();
        return;
    }

    CurrCommand = executing->command;

    if (ResumeFromHere) {
        switch (ResumeFromHere) {
        case 2:
            executing->state = 11;
            stateMotorStopped();
            break;
        case 3:
            executing->state = 4;
            stateMotorStopped();
            break;
        case 4:
            executing->state = 5;
            stateMotorStopped();
            break;
        case 7:
        case 6:
        case 1:
            executing->state = 3;
            stateCoverClosed();
            break;
        case 5:
            stateError(CancelLastError);
            break;
        }
        ResumeFromHere = 0;
    } else {
        if (MotorState == 0) {
            executing->state = 1;
            stateBusy(executing);
        } else {
            stateCoverClosed();
        }
    }
}

/* 8034A394-8034A6D4 344CD4 0340+00 4/3 0/0 0/0 .text            stateBusy */
#define MIN(a, b) (((a) > (b)) ? (b) : (a))
static void stateBusy(DVDCommandBlock* block) {
    DVDCommandBlock* finished;
    LastState = stateBusy;
    switch (block->command) {
    case 5:
        __DIRegs[1] = __DIRegs[1];
        block->current_transfer_size = sizeof(DVDDiskID);
        DVDLowReadDiskID(block->buffer, cbForStateBusy);
        break;
    case 1:
    case 4:
        if (!block->length) {
            finished = executing;
            executing = &DummyCommandBlock;
            finished->state = 0;
            if (finished->callback) {
                finished->callback(0, finished);
            }
            stateReady();
        } else {
            __DIRegs[1] = __DIRegs[1];
            block->current_transfer_size = MIN(block->length - block->transferred_size, 0x80000);
            DVDLowRead((void*)((u8*)block->buffer + block->transferred_size),
                       block->current_transfer_size, block->offset + block->transferred_size,
                       cbForStateBusy);
        }
        break;
    case 2:
        __DIRegs[1] = __DIRegs[1];
        DVDLowSeek(block->offset, cbForStateBusy);
        break;
    case 3:
        DVDLowStopMotor(cbForStateBusy);
        break;
    case 15:
        DVDLowStopMotor(cbForStateBusy);
        break;
    case 6:
        __DIRegs[1] = __DIRegs[1];
        if (AutoFinishing) {
            executing->current_transfer_size = 0;
            DVDLowRequestAudioStatus(0, cbForStateBusy);
        } else {
            executing->current_transfer_size = 1;
            DVDLowAudioStream(0, block->length, block->offset, cbForStateBusy);
        }
        break;
    case 7:
        __DIRegs[1] = __DIRegs[1];
        DVDLowAudioStream(0x10000, 0, 0, cbForStateBusy);
        break;
    case 8:
        __DIRegs[1] = __DIRegs[1];
        AutoFinishing = TRUE;
        DVDLowAudioStream(0, 0, 0, cbForStateBusy);
        break;
    case 9:
        __DIRegs[1] = __DIRegs[1];
        DVDLowRequestAudioStatus(0, cbForStateBusy);
        break;
    case 10:
        __DIRegs[1] = __DIRegs[1];
        DVDLowRequestAudioStatus(0x10000, cbForStateBusy);
        break;
    case 11:
        __DIRegs[1] = __DIRegs[1];
        DVDLowRequestAudioStatus(0x20000, cbForStateBusy);
        break;
    case 12:
        __DIRegs[1] = __DIRegs[1];
        DVDLowRequestAudioStatus(0x30000, cbForStateBusy);
        break;
    case 13:
        __DIRegs[1] = __DIRegs[1];
        DVDLowAudioBufferConfig(block->offset, block->length, cbForStateBusy);
        break;
    case 14:
        __DIRegs[1] = __DIRegs[1];
        block->current_transfer_size = sizeof(DVDDriveInfo);
        DVDLowInquiry(block->buffer, cbForStateBusy);
        break;
    case 16:
        __DIRegs[1] = __DIRegs[1];
        DVDLowStopMotor(cbForStateBusy);
        break;
    default:
        checkOptionalCommand(block, cbForStateBusy);
        break;
    }
}
/* ############################################################################################## */
/* 803D15EC-803D15F8 02E70C 000C+00 1/1 0/0 0/0 .data            ImmCommand */
static u32 ImmCommand[] = {0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF};

/* 804509FC-80450A00 00047C 0004+00 1/1 0/0 0/0 .sdata           DmaCommand */
static u32 DmaCommand[] = {0xFFFFFFFF};

static BOOL IsImmCommandWithResult(u32 command) {
    u32 i;

    if (command == 9 || command == 10 || command == 11 || command == 12) {
        return TRUE;
    }

    for (i = 0; i < sizeof(ImmCommand) / sizeof(ImmCommand[0]); i++) {
        if (command == ImmCommand[i])
            return TRUE;
    }

    return FALSE;
}

static BOOL IsDmaCommand(u32 command) {
    u32 i;

    if (command == 1 || command == 4 || command == 5 || command == 14)
        return TRUE;

    for (i = 0; i < sizeof(DmaCommand) / sizeof(DmaCommand[0]); i++) {
        if (command == DmaCommand[i])
            return TRUE;
    }

    return FALSE;
}

/* 8034A6D4-8034AD2C 345014 0658+00 1/1 0/0 0/0 .text            cbForStateBusy */
static void cbForStateBusy(u32 intType) {
    DVDCommandBlock* finished;

    if (intType == 16) {
        stateTimeout();
        return;
    }

    if ((CurrCommand == 3) || (CurrCommand == 15)) {
        if (intType & 2) {
            stateError(0x1234567);
            return;
        }

        NumInternalRetry = 0;

        if (CurrCommand == 15) {
            ResetRequired = TRUE;
        }

        if (CheckCancel(7)) {
            return;
        }

        executing->state = 7;
        stateMotorStopped();
        return;
    }

    if (IsDmaCommand(CurrCommand)) {
        executing->transferred_size += executing->current_transfer_size - __DIRegs[6];
    }

    if (intType & 8) {
        Canceling = FALSE;
        finished = executing;
        executing = &DummyCommandBlock;

        finished->state = 10;
        if (finished->callback)
            (*finished->callback)(-3, finished);
        if (CancelCallback)
            (CancelCallback)(0, finished);
        stateReady();

        return;
    }

    if (intType & 1) {
        NumInternalRetry = 0;

        if (CurrCommand == 16) {
            MotorState = 1;
            finished = executing;
            executing = &DummyCommandBlock;
            finished->state = 0;
            if (finished->callback) {
                (*finished->callback)(0, finished);
            }
            stateReady();
            return;
        }

        if (CheckCancel(0))
            return;

        if (IsDmaCommand(CurrCommand)) {
            if (executing->transferred_size != executing->length) {
                stateBusy(executing);
                return;
            }

            finished = executing;
            executing = &DummyCommandBlock;

            finished->state = 0;
            if (finished->callback) {
                (finished->callback)((s32)finished->transferred_size, finished);
            }
            stateReady();
        } else if (IsImmCommandWithResult(CurrCommand)) {
            s32 result;

            if ((CurrCommand == 11) || (CurrCommand == 10)) {
                result = (s32)(__DIRegs[8] << 2);
            } else {
                result = (s32)__DIRegs[8];
            }
            finished = executing;
            executing = &DummyCommandBlock;

            finished->state = 0;
            if (finished->callback) {
                (finished->callback)(result, finished);
            }
            stateReady();
        } else if (CurrCommand == 6) {
            if (executing->current_transfer_size == 0) {
                if (__DIRegs[8] & 1) {
                    finished = executing;
                    executing = &DummyCommandBlock;

                    finished->state = 9;
                    if (finished->callback) {
                        (finished->callback)(-2, finished);
                    }
                    stateReady();
                } else {
                    AutoFinishing = FALSE;
                    executing->current_transfer_size = 1;
                    DVDLowAudioStream(0, executing->length, executing->offset, cbForStateBusy);
                }
            } else {
                finished = executing;
                executing = &DummyCommandBlock;

                finished->state = 0;
                if (finished->callback) {
                    (finished->callback)(0, finished);
                }
                stateReady();
            }
        } else {
            finished = executing;
            executing = &DummyCommandBlock;

            finished->state = 0;
            if (finished->callback) {
                (finished->callback)(0, finished);
            }
            stateReady();
        }
    } else {
        if (CurrCommand == 14) {
            stateError(0x01234567);
            return;
        }

        if ((CurrCommand == 1 || CurrCommand == 4 || CurrCommand == 5 || CurrCommand == 14) &&
            (executing->transferred_size == executing->length))
        {
            if (CheckCancel(0)) {
                return;
            }
            finished = executing;
            executing = &DummyCommandBlock;

            finished->state = 0;
            if (finished->callback) {
                (finished->callback)((s32)finished->transferred_size, finished);
            }
            stateReady();
            return;
        }

        stateGettingError();
    }
}

static BOOL issueCommand(s32 prio, DVDCommandBlock* block) {
    BOOL level;
    BOOL result;

    if (autoInvalidation &&
        (block->command == 1 || block->command == 4 || block->command == 5 || block->command == 14))
    {
        DCInvalidateRange(block->buffer, block->length);
    }

    level = OSDisableInterrupts();

    block->state = 2;
    result = __DVDPushWaitingQueue(prio, block);

    if ((executing == (DVDCommandBlock*)NULL) && (PauseFlag == FALSE)) {
        stateReady();
    }

    OSRestoreInterrupts(level);

    return result;
}

/* 8034AD2C-8034AE08 34566C 00DC+00 0/0 5/5 0/0 .text            DVDReadAbsAsyncPrio */
BOOL DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* addr, s32 length, s32 offset,
                         DVDCBCallback callback, s32 prio) {
    BOOL idle;
    block->command = 1;
    block->buffer = addr;
    block->length = length;
    block->offset = offset;
    block->transferred_size = 0;
    block->callback = callback;

    idle = issueCommand(prio, block);
    return idle;
}

/* 8034AE08-8034AED8 345748 00D0+00 0/0 1/1 0/0 .text            DVDReadAbsAsyncForBS */
BOOL DVDReadAbsAsyncForBS(DVDCommandBlock* block, void* addr, s32 length, s32 offset,
                          DVDCBCallback callback) {
    BOOL idle;
    block->command = 4;
    block->buffer = addr;
    block->length = length;
    block->offset = offset;
    block->transferred_size = 0;
    block->callback = callback;

    idle = issueCommand(2, block);
    return idle;
}

/* 8034AED8-8034AFAC 345818 00D4+00 0/0 2/2 0/0 .text            DVDReadDiskID */
BOOL DVDReadDiskID(DVDCommandBlock* block, DVDDiskID* diskID, DVDCBCallback callback) {
    BOOL idle;
    block->command = 5;
    block->buffer = diskID;
    block->length = sizeof(DVDDiskID);
    block->offset = 0;
    block->transferred_size = 0;
    block->callback = callback;

    idle = issueCommand(2, block);
    return idle;
}

/* 8034AFAC-8034B068 3458EC 00BC+00 0/0 1/1 0/0 .text            DVDCancelStreamAsync */
BOOL DVDCancelStreamAsync(DVDCommandBlock* block, DVDCBCallback callback) {
    BOOL idle;
    block->command = 7;
    block->callback = callback;
    idle = issueCommand(1, block);
    return idle;
}

/* 8034B068-8034B138 3459A8 00D0+00 0/0 1/1 0/0 .text            DVDInquiryAsync */
BOOL DVDInquiryAsync(DVDCommandBlock* block, DVDDriveInfo* info, DVDCBCallback callback) {
    BOOL idle;

    block->command = 14;
    block->buffer = (void*)info;
    block->length = sizeof(DVDDriveInfo);
    block->transferred_size = 0;
    block->callback = callback;

    idle = issueCommand(2, block);

    return idle;
}

/* 8034B138-8034B17C 345A78 0044+00 15/15 2/2 0/0 .text            DVDReset */
void DVDReset(void) {
    DVDLowReset();
    __DIRegs[0] = 0x2A;
    __DIRegs[1] = __DIRegs[1];
    ResetRequired = FALSE;
    ResumeFromHere = 0;
}

/* 8034B17C-8034B1C8 345ABC 004C+00 0/0 6/6 0/0 .text            DVDGetCommandBlockStatus */
s32 DVDGetCommandBlockStatus(const DVDCommandBlock* block) {
    BOOL enabled;
    s32 retVal;

    enabled = OSDisableInterrupts();

    if (block->state == 3) {
        retVal = 1;
    } else {
        retVal = block->state;
    }

    OSRestoreInterrupts(enabled);

    return retVal;
}

/* 8034B1C8-8034B274 345B08 00AC+00 0/0 7/7 0/0 .text            DVDGetDriveStatus */
s32 DVDGetDriveStatus() {
    BOOL enabled;
    s32 retVal;
    DVDCommandBlock* cmd;

    enabled = OSDisableInterrupts();

    if (FatalErrorFlag) {
        retVal = -1;
    } else if (PausingFlag) {
        retVal = 8;
    } else {
        cmd = executing;
        if (cmd == (DVDCommandBlock*)NULL) {
            retVal = 0;
        } else if (cmd == &DummyCommandBlock) {
            retVal = 0;
        } else {
            retVal = DVDGetCommandBlockStatus(executing);
        }
    }

    OSRestoreInterrupts(enabled);

    return retVal;
}

/* 8034B274-8034B284 345BB4 0010+00 0/0 1/1 0/0 .text            DVDSetAutoInvalidation */
BOOL DVDSetAutoInvalidation(BOOL autoInval) {
    BOOL prev;
    prev = autoInvalidation;
    autoInvalidation = autoInval;
    return prev;
}

/* 8034B284-8034B2D4 345BC4 0050+00 0/0 1/1 0/0 .text            DVDResume */
void DVDResume(void) {
    BOOL level;
    level = OSDisableInterrupts();
    PauseFlag = FALSE;
    if (PausingFlag) {
        PausingFlag = FALSE;
        stateReady();
    }
    OSRestoreInterrupts(level);
}

/* ############################################################################################## */
/* 803D15F8-803D163C 02E718 0041+03 0/0 0/0 0/0 .data            @789 */
static char string_DVDChangeDiskAsyncMsg[] =
    "DVDChangeDiskAsync(): You can't specify NULL to company name.  \n";

/* 8034B2D4-8034B550 345C14 027C+00 3/2 0/0 0/0 .text            DVDCancelAsync */
BOOL DVDCancelAsync(DVDCommandBlock* block, DVDCBCallback callback) {
    BOOL enabled;
    DVDLowCallback old;
    s32 state;

    enabled = OSDisableInterrupts();

    state = block->state;
    switch (state) {
    case -1:
    case 0:
    case 10:
        if (callback)
            (*callback)(0, block);
        break;

    case 1:
        if (Canceling) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }

        Canceling = TRUE;
        CancelCallback = callback;
        if (block->command == 4 || block->command == 1) {
            DVDLowBreak();
        }
        break;

    case 2:
        __DVDDequeueWaitingQueue(block);
        block->state = 10;
        if (block->callback)
            (block->callback)(-3, block);
        if (callback)
            (*callback)(0, block);
        break;

    case 3:
        switch (block->command) {
        case 5:
        case 4:
        case 13:
        case 15:
            if (callback)
                (*callback)(0, block);
            break;

        default:
            if (Canceling) {
                OSRestoreInterrupts(enabled);
                return FALSE;
            }
            Canceling = TRUE;
            CancelCallback = callback;
            break;
        }
        break;

    case 4:
    case 5:
    case 6:
    case 7:
    case 11:
        old = DVDLowClearCallback();
        if (old != cbForStateMotorStopped) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }

        if (block->state == 4)
            ResumeFromHere = 3;
        if (block->state == 5)
            ResumeFromHere = 4;
        if (block->state == 6)
            ResumeFromHere = 1;
        if (block->state == 11)
            ResumeFromHere = 2;
        if (block->state == 7)
            ResumeFromHere = 7;

        executing = &DummyCommandBlock;

        block->state = 10;
        if (block->callback) {
            (block->callback)(-3, block);
        }
        if (callback) {
            (callback)(0, block);
        }
        stateReady();
        break;
    }

    OSRestoreInterrupts(enabled);
    return TRUE;
}

/* 8034B550-8034B5FC 345E90 00AC+00 0/0 1/1 1/1 .text            DVDCancel */
s32 DVDCancel(DVDCommandBlock* block) {
    BOOL result;
    s32 state;
    u32 command;
    BOOL enabled;

    result = DVDCancelAsync(block, cbForCancelSync);

    if (result == FALSE) {
        return -1;
    }

    enabled = OSDisableInterrupts();

    for (;;) {
        state = ((volatile DVDCommandBlock*)block)->state;

        if ((state == 0) || (state == -1) || (state == 10)) {
            break;
        }

        if (state == 3) {
            command = ((volatile DVDCommandBlock*)block)->command;

            if ((command == 4) || (command == 5) || (command == 13) || (command == 15)) {
                break;
            }
        }

        OSSleepThread(&__DVDThreadQueue);
    }

    OSRestoreInterrupts(enabled);
    return 0;
}

/* 8034B5FC-8034B620 345F3C 0024+00 1/1 0/0 0/0 .text            cbForCancelSync */
static void cbForCancelSync(s32 result, DVDCommandBlock* block) {
    OSWakeupThread(&__DVDThreadQueue);
}

/* 8034B620-8034B628 345F60 0008+00 0/0 3/3 0/0 .text            DVDGetCurrentDiskID */
DVDDiskID* DVDGetCurrentDiskID(void) {
    return (DVDDiskID*)OSPhysicalToCached(0);
}

/* ############################################################################################## */

/* 8034B628-8034B720 345F68 00F8+00 1/0 4/4 0/0 .text            DVDCheckDisk */
BOOL DVDCheckDisk(void) {
    BOOL enabled;
    s32 retVal;
    s32 state;
    u32 coverReg;

    enabled = OSDisableInterrupts();

    if (FatalErrorFlag) {
        state = -1;
    } else if (PausingFlag) {
        state = 8;
    } else {
        if (executing == (DVDCommandBlock*)NULL) {
            state = 0;
        } else if (executing == &DummyCommandBlock) {
            state = 0;
        } else {
            state = executing->state;
        }
    }

    switch (state) {
    case 1:
    case 9:
    case 10:
    case 2:
        retVal = TRUE;
        break;

    case -1:
    case 11:
    case 7:
    case 3:
    case 4:
    case 5:
    case 6:
        retVal = FALSE;
        break;

    case 0:
    case 8:
        coverReg = __DIRegs[1];
        if (((coverReg >> 2) & 1) || (coverReg & 1)) {
            retVal = FALSE;
        } else if (ResumeFromHere) {
            retVal = 0;
        } else {
            retVal = 1;
        }
    }

    OSRestoreInterrupts(enabled);

    return retVal;
}

void DVDPause(void) {
    BOOL level;
    level = OSDisableInterrupts();
    PauseFlag = TRUE;
    if (executing == (DVDCommandBlock*)NULL) {
        PausingFlag = TRUE;
    }
    OSRestoreInterrupts(level);
}

BOOL DVDCancelAllAsync(DVDCBCallback callback) {
    BOOL enabled;
    DVDCommandBlock* p;
    BOOL retVal;

    enabled = OSDisableInterrupts();
    DVDPause();

    while ((p = __DVDPopWaitingQueue()) != 0) {
        DVDCancelAsync(p, NULL);
    }

    if (executing)
        retVal = DVDCancelAsync(executing, callback);
    else {
        retVal = TRUE;
        if (callback)
            (*callback)(0, NULL);
    }

    DVDResume();
    OSRestoreInterrupts(enabled);
    return retVal;
}

/* 8034B720-8034B83C 346060 011C+00 0/0 1/1 0/0 .text            __DVDPrepareResetAsync */
void __DVDPrepareResetAsync(DVDCBCallback callback) {
    BOOL enabled;

    enabled = OSDisableInterrupts();

    __DVDClearWaitingQueue();

    if (Canceling) {
        CancelCallback = callback;
    } else {
        if (executing) {
            executing->callback = NULL;
        }

        DVDCancelAllAsync(callback);
    }

    OSRestoreInterrupts(enabled);
}

/* 8034B83C-8034B874 34617C 0038+00 0/0 1/1 0/0 .text            __DVDTestAlarm */
BOOL __DVDTestAlarm(OSAlarm* alarm) {
    if (alarm == &ResetAlarm) {
        return TRUE;
    }

    return __DVDLowTestAlarm(alarm);
}