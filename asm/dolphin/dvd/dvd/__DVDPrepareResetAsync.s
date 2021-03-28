lbl_8034B720:
/* 8034B720  7C 08 02 A6 */	mflr r0
/* 8034B724  90 01 00 04 */	stw r0, 4(r1)
/* 8034B728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034B72C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034B730  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034B734  7C 7E 1B 78 */	mr r30, r3
/* 8034B738  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034B73C  4B FF 1F B9 */	bl OSDisableInterrupts
/* 8034B740  7C 7D 1B 78 */	mr r29, r3
/* 8034B744  48 00 01 31 */	bl __DVDClearWaitingQueue
/* 8034B748  80 0D 92 18 */	lwz r0, Canceling(r13)
/* 8034B74C  28 00 00 00 */	cmplwi r0, 0
/* 8034B750  41 82 00 0C */	beq lbl_8034B75C
/* 8034B754  93 CD 92 1C */	stw r30, CancelCallback(r13)
/* 8034B758  48 00 00 C0 */	b lbl_8034B818
lbl_8034B75C:
/* 8034B75C  80 6D 91 F8 */	lwz r3, executing(r13)
/* 8034B760  28 03 00 00 */	cmplwi r3, 0
/* 8034B764  41 82 00 0C */	beq lbl_8034B770
/* 8034B768  38 00 00 00 */	li r0, 0
/* 8034B76C  90 03 00 28 */	stw r0, 0x28(r3)
lbl_8034B770:
/* 8034B770  4B FF 1F 85 */	bl OSDisableInterrupts
/* 8034B774  7C 7F 1B 78 */	mr r31, r3
/* 8034B778  4B FF 1F 7D */	bl OSDisableInterrupts
/* 8034B77C  80 0D 91 F8 */	lwz r0, executing(r13)
/* 8034B780  38 80 00 01 */	li r4, 1
/* 8034B784  90 8D 92 04 */	stw r4, PauseFlag(r13)
/* 8034B788  28 00 00 00 */	cmplwi r0, 0
/* 8034B78C  40 82 00 08 */	bne lbl_8034B794
/* 8034B790  90 8D 92 08 */	stw r4, PausingFlag(r13)
lbl_8034B794:
/* 8034B794  4B FF 1F 89 */	bl OSRestoreInterrupts
/* 8034B798  48 00 00 0C */	b lbl_8034B7A4
lbl_8034B79C:
/* 8034B79C  38 80 00 00 */	li r4, 0
/* 8034B7A0  4B FF FB 35 */	bl DVDCancelAsync
lbl_8034B7A4:
/* 8034B7A4  48 00 01 71 */	bl __DVDPopWaitingQueue
/* 8034B7A8  28 03 00 00 */	cmplwi r3, 0
/* 8034B7AC  40 82 FF F0 */	bne lbl_8034B79C
/* 8034B7B0  80 6D 91 F8 */	lwz r3, executing(r13)
/* 8034B7B4  28 03 00 00 */	cmplwi r3, 0
/* 8034B7B8  41 82 00 10 */	beq lbl_8034B7C8
/* 8034B7BC  7F C4 F3 78 */	mr r4, r30
/* 8034B7C0  4B FF FB 15 */	bl DVDCancelAsync
/* 8034B7C4  48 00 00 20 */	b lbl_8034B7E4
lbl_8034B7C8:
/* 8034B7C8  28 1E 00 00 */	cmplwi r30, 0
/* 8034B7CC  41 82 00 18 */	beq lbl_8034B7E4
/* 8034B7D0  39 9E 00 00 */	addi r12, r30, 0
/* 8034B7D4  7D 88 03 A6 */	mtlr r12
/* 8034B7D8  38 60 00 00 */	li r3, 0
/* 8034B7DC  38 80 00 00 */	li r4, 0
/* 8034B7E0  4E 80 00 21 */	blrl 
lbl_8034B7E4:
/* 8034B7E4  4B FF 1F 11 */	bl OSDisableInterrupts
/* 8034B7E8  38 80 00 00 */	li r4, 0
/* 8034B7EC  90 8D 92 04 */	stw r4, PauseFlag(r13)
/* 8034B7F0  7C 7E 1B 78 */	mr r30, r3
/* 8034B7F4  80 0D 92 08 */	lwz r0, PausingFlag(r13)
/* 8034B7F8  2C 00 00 00 */	cmpwi r0, 0
/* 8034B7FC  41 82 00 0C */	beq lbl_8034B808
/* 8034B800  90 8D 92 08 */	stw r4, PausingFlag(r13)
/* 8034B804  4B FF E8 A9 */	bl stateReady
lbl_8034B808:
/* 8034B808  7F C3 F3 78 */	mr r3, r30
/* 8034B80C  4B FF 1F 11 */	bl OSRestoreInterrupts
/* 8034B810  7F E3 FB 78 */	mr r3, r31
/* 8034B814  4B FF 1F 09 */	bl OSRestoreInterrupts
lbl_8034B818:
/* 8034B818  7F A3 EB 78 */	mr r3, r29
/* 8034B81C  4B FF 1F 01 */	bl OSRestoreInterrupts
/* 8034B820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034B824  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034B828  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034B82C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034B830  38 21 00 20 */	addi r1, r1, 0x20
/* 8034B834  7C 08 03 A6 */	mtlr r0
/* 8034B838  4E 80 00 20 */	blr 
