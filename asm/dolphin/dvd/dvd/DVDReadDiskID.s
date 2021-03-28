lbl_8034AED8:
/* 8034AED8  7C 08 02 A6 */	mflr r0
/* 8034AEDC  90 01 00 04 */	stw r0, 4(r1)
/* 8034AEE0  38 00 00 05 */	li r0, 5
/* 8034AEE4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034AEE8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8034AEEC  3B E3 00 00 */	addi r31, r3, 0
/* 8034AEF0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8034AEF4  90 03 00 08 */	stw r0, 8(r3)
/* 8034AEF8  38 60 00 20 */	li r3, 0x20
/* 8034AEFC  38 00 00 00 */	li r0, 0
/* 8034AF00  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8034AF04  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8034AF08  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8034AF0C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8034AF10  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8034AF14  80 0D 84 6C */	lwz r0, autoInvalidation(r13)
/* 8034AF18  2C 00 00 00 */	cmpwi r0, 0
/* 8034AF1C  41 82 00 30 */	beq lbl_8034AF4C
/* 8034AF20  80 7F 00 08 */	lwz r3, 8(r31)
/* 8034AF24  28 03 00 01 */	cmplwi r3, 1
/* 8034AF28  41 82 00 18 */	beq lbl_8034AF40
/* 8034AF2C  38 03 FF FC */	addi r0, r3, -4
/* 8034AF30  28 00 00 01 */	cmplwi r0, 1
/* 8034AF34  40 81 00 0C */	ble lbl_8034AF40
/* 8034AF38  28 03 00 0E */	cmplwi r3, 0xe
/* 8034AF3C  40 82 00 10 */	bne lbl_8034AF4C
lbl_8034AF40:
/* 8034AF40  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8034AF44  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8034AF48  4B FF 06 39 */	bl DCInvalidateRange
lbl_8034AF4C:
/* 8034AF4C  4B FF 27 A9 */	bl OSDisableInterrupts
/* 8034AF50  38 00 00 02 */	li r0, 2
/* 8034AF54  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8034AF58  3B C3 00 00 */	addi r30, r3, 0
/* 8034AF5C  38 9F 00 00 */	addi r4, r31, 0
/* 8034AF60  38 60 00 02 */	li r3, 2
/* 8034AF64  48 00 09 49 */	bl __DVDPushWaitingQueue
/* 8034AF68  80 0D 91 F8 */	lwz r0, executing(r13)
/* 8034AF6C  3B E3 00 00 */	addi r31, r3, 0
/* 8034AF70  28 00 00 00 */	cmplwi r0, 0
/* 8034AF74  40 82 00 14 */	bne lbl_8034AF88
/* 8034AF78  80 0D 92 04 */	lwz r0, PauseFlag(r13)
/* 8034AF7C  2C 00 00 00 */	cmpwi r0, 0
/* 8034AF80  40 82 00 08 */	bne lbl_8034AF88
/* 8034AF84  4B FF F1 29 */	bl stateReady
lbl_8034AF88:
/* 8034AF88  7F C3 F3 78 */	mr r3, r30
/* 8034AF8C  4B FF 27 91 */	bl OSRestoreInterrupts
/* 8034AF90  7F E3 FB 78 */	mr r3, r31
/* 8034AF94  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8034AF98  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8034AF9C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8034AFA0  38 21 00 28 */	addi r1, r1, 0x28
/* 8034AFA4  7C 08 03 A6 */	mtlr r0
/* 8034AFA8  4E 80 00 20 */	blr 
