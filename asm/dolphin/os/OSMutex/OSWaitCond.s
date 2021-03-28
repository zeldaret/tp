lbl_8033F330:
/* 8033F330  7C 08 02 A6 */	mflr r0
/* 8033F334  90 01 00 04 */	stw r0, 4(r1)
/* 8033F338  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033F33C  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8033F340  3B 63 00 00 */	addi r27, r3, 0
/* 8033F344  3B 84 00 00 */	addi r28, r4, 0
/* 8033F348  4B FF E3 AD */	bl OSDisableInterrupts
/* 8033F34C  7C 7F 1B 78 */	mr r31, r3
/* 8033F350  48 00 19 35 */	bl OSGetCurrentThread
/* 8033F354  80 1C 00 08 */	lwz r0, 8(r28)
/* 8033F358  3B C3 00 00 */	addi r30, r3, 0
/* 8033F35C  7C 00 F0 40 */	cmplw r0, r30
/* 8033F360  40 82 00 88 */	bne lbl_8033F3E8
/* 8033F364  83 BC 00 0C */	lwz r29, 0xc(r28)
/* 8033F368  38 00 00 00 */	li r0, 0
/* 8033F36C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8033F370  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8033F374  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8033F378  28 03 00 00 */	cmplwi r3, 0
/* 8033F37C  40 82 00 0C */	bne lbl_8033F388
/* 8033F380  90 9E 02 F8 */	stw r4, 0x2f8(r30)
/* 8033F384  48 00 00 08 */	b lbl_8033F38C
lbl_8033F388:
/* 8033F388  90 83 00 14 */	stw r4, 0x14(r3)
lbl_8033F38C:
/* 8033F38C  28 04 00 00 */	cmplwi r4, 0
/* 8033F390  40 82 00 0C */	bne lbl_8033F39C
/* 8033F394  90 7E 02 F4 */	stw r3, 0x2f4(r30)
/* 8033F398  48 00 00 08 */	b lbl_8033F3A0
lbl_8033F39C:
/* 8033F39C  90 64 00 10 */	stw r3, 0x10(r4)
lbl_8033F3A0:
/* 8033F3A0  38 00 00 00 */	li r0, 0
/* 8033F3A4  90 1C 00 08 */	stw r0, 8(r28)
/* 8033F3A8  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 8033F3AC  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 8033F3B0  7C 03 00 00 */	cmpw r3, r0
/* 8033F3B4  40 80 00 10 */	bge lbl_8033F3C4
/* 8033F3B8  7F C3 F3 78 */	mr r3, r30
/* 8033F3BC  48 00 19 F1 */	bl __OSGetEffectivePriority
/* 8033F3C0  90 7E 02 D0 */	stw r3, 0x2d0(r30)
lbl_8033F3C4:
/* 8033F3C4  48 00 19 01 */	bl OSDisableScheduler
/* 8033F3C8  7F 83 E3 78 */	mr r3, r28
/* 8033F3CC  48 00 28 CD */	bl OSWakeupThread
/* 8033F3D0  48 00 19 35 */	bl OSEnableScheduler
/* 8033F3D4  7F 63 DB 78 */	mr r3, r27
/* 8033F3D8  48 00 27 D5 */	bl OSSleepThread
/* 8033F3DC  7F 83 E3 78 */	mr r3, r28
/* 8033F3E0  4B FF FC 61 */	bl OSLockMutex
/* 8033F3E4  93 BC 00 0C */	stw r29, 0xc(r28)
lbl_8033F3E8:
/* 8033F3E8  7F E3 FB 78 */	mr r3, r31
/* 8033F3EC  4B FF E3 31 */	bl OSRestoreInterrupts
/* 8033F3F0  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8033F3F4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033F3F8  38 21 00 28 */	addi r1, r1, 0x28
/* 8033F3FC  7C 08 03 A6 */	mtlr r0
/* 8033F400  4E 80 00 20 */	blr 
