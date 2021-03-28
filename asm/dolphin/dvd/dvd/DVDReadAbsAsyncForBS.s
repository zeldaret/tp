lbl_8034AE08:
/* 8034AE08  7C 08 02 A6 */	mflr r0
/* 8034AE0C  90 01 00 04 */	stw r0, 4(r1)
/* 8034AE10  38 00 00 04 */	li r0, 4
/* 8034AE14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8034AE18  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8034AE1C  3B E3 00 00 */	addi r31, r3, 0
/* 8034AE20  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8034AE24  90 03 00 08 */	stw r0, 8(r3)
/* 8034AE28  38 00 00 00 */	li r0, 0
/* 8034AE2C  90 83 00 18 */	stw r4, 0x18(r3)
/* 8034AE30  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8034AE34  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8034AE38  90 03 00 20 */	stw r0, 0x20(r3)
/* 8034AE3C  90 E3 00 28 */	stw r7, 0x28(r3)
/* 8034AE40  80 0D 84 6C */	lwz r0, autoInvalidation(r13)
/* 8034AE44  2C 00 00 00 */	cmpwi r0, 0
/* 8034AE48  41 82 00 30 */	beq lbl_8034AE78
/* 8034AE4C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8034AE50  28 03 00 01 */	cmplwi r3, 1
/* 8034AE54  41 82 00 18 */	beq lbl_8034AE6C
/* 8034AE58  38 03 FF FC */	addi r0, r3, -4
/* 8034AE5C  28 00 00 01 */	cmplwi r0, 1
/* 8034AE60  40 81 00 0C */	ble lbl_8034AE6C
/* 8034AE64  28 03 00 0E */	cmplwi r3, 0xe
/* 8034AE68  40 82 00 10 */	bne lbl_8034AE78
lbl_8034AE6C:
/* 8034AE6C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8034AE70  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8034AE74  4B FF 07 0D */	bl DCInvalidateRange
lbl_8034AE78:
/* 8034AE78  4B FF 28 7D */	bl OSDisableInterrupts
/* 8034AE7C  38 00 00 02 */	li r0, 2
/* 8034AE80  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8034AE84  3B C3 00 00 */	addi r30, r3, 0
/* 8034AE88  38 9F 00 00 */	addi r4, r31, 0
/* 8034AE8C  38 60 00 02 */	li r3, 2
/* 8034AE90  48 00 0A 1D */	bl __DVDPushWaitingQueue
/* 8034AE94  80 0D 91 F8 */	lwz r0, executing(r13)
/* 8034AE98  3B E3 00 00 */	addi r31, r3, 0
/* 8034AE9C  28 00 00 00 */	cmplwi r0, 0
/* 8034AEA0  40 82 00 14 */	bne lbl_8034AEB4
/* 8034AEA4  80 0D 92 04 */	lwz r0, PauseFlag(r13)
/* 8034AEA8  2C 00 00 00 */	cmpwi r0, 0
/* 8034AEAC  40 82 00 08 */	bne lbl_8034AEB4
/* 8034AEB0  4B FF F1 FD */	bl stateReady
lbl_8034AEB4:
/* 8034AEB4  7F C3 F3 78 */	mr r3, r30
/* 8034AEB8  4B FF 28 65 */	bl OSRestoreInterrupts
/* 8034AEBC  7F E3 FB 78 */	mr r3, r31
/* 8034AEC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8034AEC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8034AEC8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8034AECC  38 21 00 30 */	addi r1, r1, 0x30
/* 8034AED0  7C 08 03 A6 */	mtlr r0
/* 8034AED4  4E 80 00 20 */	blr 
