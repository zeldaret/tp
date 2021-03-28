lbl_8034AD2C:
/* 8034AD2C  7C 08 02 A6 */	mflr r0
/* 8034AD30  90 01 00 04 */	stw r0, 4(r1)
/* 8034AD34  38 00 00 01 */	li r0, 1
/* 8034AD38  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8034AD3C  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8034AD40  3B E8 00 00 */	addi r31, r8, 0
/* 8034AD44  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8034AD48  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 8034AD4C  3B A3 00 00 */	addi r29, r3, 0
/* 8034AD50  90 03 00 08 */	stw r0, 8(r3)
/* 8034AD54  38 00 00 00 */	li r0, 0
/* 8034AD58  90 83 00 18 */	stw r4, 0x18(r3)
/* 8034AD5C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8034AD60  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8034AD64  90 03 00 20 */	stw r0, 0x20(r3)
/* 8034AD68  90 E3 00 28 */	stw r7, 0x28(r3)
/* 8034AD6C  80 0D 84 6C */	lwz r0, autoInvalidation(r13)
/* 8034AD70  2C 00 00 00 */	cmpwi r0, 0
/* 8034AD74  41 82 00 30 */	beq lbl_8034ADA4
/* 8034AD78  80 7D 00 08 */	lwz r3, 8(r29)
/* 8034AD7C  28 03 00 01 */	cmplwi r3, 1
/* 8034AD80  41 82 00 18 */	beq lbl_8034AD98
/* 8034AD84  38 03 FF FC */	addi r0, r3, -4
/* 8034AD88  28 00 00 01 */	cmplwi r0, 1
/* 8034AD8C  40 81 00 0C */	ble lbl_8034AD98
/* 8034AD90  28 03 00 0E */	cmplwi r3, 0xe
/* 8034AD94  40 82 00 10 */	bne lbl_8034ADA4
lbl_8034AD98:
/* 8034AD98  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8034AD9C  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8034ADA0  4B FF 07 E1 */	bl DCInvalidateRange
lbl_8034ADA4:
/* 8034ADA4  4B FF 29 51 */	bl OSDisableInterrupts
/* 8034ADA8  38 00 00 02 */	li r0, 2
/* 8034ADAC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8034ADB0  3B C3 00 00 */	addi r30, r3, 0
/* 8034ADB4  38 7F 00 00 */	addi r3, r31, 0
/* 8034ADB8  38 9D 00 00 */	addi r4, r29, 0
/* 8034ADBC  48 00 0A F1 */	bl __DVDPushWaitingQueue
/* 8034ADC0  80 0D 91 F8 */	lwz r0, executing(r13)
/* 8034ADC4  3B E3 00 00 */	addi r31, r3, 0
/* 8034ADC8  28 00 00 00 */	cmplwi r0, 0
/* 8034ADCC  40 82 00 14 */	bne lbl_8034ADE0
/* 8034ADD0  80 0D 92 04 */	lwz r0, PauseFlag(r13)
/* 8034ADD4  2C 00 00 00 */	cmpwi r0, 0
/* 8034ADD8  40 82 00 08 */	bne lbl_8034ADE0
/* 8034ADDC  4B FF F2 D1 */	bl stateReady
lbl_8034ADE0:
/* 8034ADE0  7F C3 F3 78 */	mr r3, r30
/* 8034ADE4  4B FF 29 39 */	bl OSRestoreInterrupts
/* 8034ADE8  7F E3 FB 78 */	mr r3, r31
/* 8034ADEC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8034ADF0  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8034ADF4  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 8034ADF8  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8034ADFC  38 21 00 38 */	addi r1, r1, 0x38
/* 8034AE00  7C 08 03 A6 */	mtlr r0
/* 8034AE04  4E 80 00 20 */	blr 
