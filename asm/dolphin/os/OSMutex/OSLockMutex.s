lbl_8033F040:
/* 8033F040  7C 08 02 A6 */	mflr r0
/* 8033F044  90 01 00 04 */	stw r0, 4(r1)
/* 8033F048  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F04C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F050  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F054  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F058  93 81 00 10 */	stw r28, 0x10(r1)
/* 8033F05C  7C 7C 1B 78 */	mr r28, r3
/* 8033F060  4B FF E6 95 */	bl OSDisableInterrupts
/* 8033F064  7C 7D 1B 78 */	mr r29, r3
/* 8033F068  48 00 1C 1D */	bl OSGetCurrentThread
/* 8033F06C  3B C3 00 00 */	addi r30, r3, 0
/* 8033F070  3B E0 00 00 */	li r31, 0
lbl_8033F074:
/* 8033F074  80 1C 00 08 */	lwz r0, 8(r28)
/* 8033F078  28 00 00 00 */	cmplwi r0, 0
/* 8033F07C  40 82 00 40 */	bne lbl_8033F0BC
/* 8033F080  93 DC 00 08 */	stw r30, 8(r28)
/* 8033F084  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8033F088  38 03 00 01 */	addi r0, r3, 1
/* 8033F08C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8033F090  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 8033F094  28 03 00 00 */	cmplwi r3, 0
/* 8033F098  40 82 00 0C */	bne lbl_8033F0A4
/* 8033F09C  93 9E 02 F4 */	stw r28, 0x2f4(r30)
/* 8033F0A0  48 00 00 08 */	b lbl_8033F0A8
lbl_8033F0A4:
/* 8033F0A4  93 83 00 10 */	stw r28, 0x10(r3)
lbl_8033F0A8:
/* 8033F0A8  90 7C 00 14 */	stw r3, 0x14(r28)
/* 8033F0AC  38 00 00 00 */	li r0, 0
/* 8033F0B0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8033F0B4  93 9E 02 F8 */	stw r28, 0x2f8(r30)
/* 8033F0B8  48 00 00 3C */	b lbl_8033F0F4
lbl_8033F0BC:
/* 8033F0BC  7C 00 F0 40 */	cmplw r0, r30
/* 8033F0C0  40 82 00 14 */	bne lbl_8033F0D4
/* 8033F0C4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8033F0C8  38 03 00 01 */	addi r0, r3, 1
/* 8033F0CC  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8033F0D0  48 00 00 24 */	b lbl_8033F0F4
lbl_8033F0D4:
/* 8033F0D4  93 9E 02 F0 */	stw r28, 0x2f0(r30)
/* 8033F0D8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8033F0DC  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8033F0E0  48 00 1E C9 */	bl __OSPromoteThread
/* 8033F0E4  7F 83 E3 78 */	mr r3, r28
/* 8033F0E8  48 00 2A C5 */	bl OSSleepThread
/* 8033F0EC  93 FE 02 F0 */	stw r31, 0x2f0(r30)
/* 8033F0F0  4B FF FF 84 */	b lbl_8033F074
lbl_8033F0F4:
/* 8033F0F4  7F A3 EB 78 */	mr r3, r29
/* 8033F0F8  4B FF E6 25 */	bl OSRestoreInterrupts
/* 8033F0FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F100  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F104  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F108  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F10C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8033F110  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F114  7C 08 03 A6 */	mtlr r0
/* 8033F118  4E 80 00 20 */	blr 
