lbl_8034B068:
/* 8034B068  7C 08 02 A6 */	mflr r0
/* 8034B06C  90 01 00 04 */	stw r0, 4(r1)
/* 8034B070  38 00 00 0E */	li r0, 0xe
/* 8034B074  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034B078  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8034B07C  3B E3 00 00 */	addi r31, r3, 0
/* 8034B080  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8034B084  90 03 00 08 */	stw r0, 8(r3)
/* 8034B088  38 60 00 20 */	li r3, 0x20
/* 8034B08C  38 00 00 00 */	li r0, 0
/* 8034B090  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8034B094  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8034B098  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8034B09C  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8034B0A0  80 0D 84 6C */	lwz r0, autoInvalidation(r13)
/* 8034B0A4  2C 00 00 00 */	cmpwi r0, 0
/* 8034B0A8  41 82 00 30 */	beq lbl_8034B0D8
/* 8034B0AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8034B0B0  28 03 00 01 */	cmplwi r3, 1
/* 8034B0B4  41 82 00 18 */	beq lbl_8034B0CC
/* 8034B0B8  38 03 FF FC */	addi r0, r3, -4
/* 8034B0BC  28 00 00 01 */	cmplwi r0, 1
/* 8034B0C0  40 81 00 0C */	ble lbl_8034B0CC
/* 8034B0C4  28 03 00 0E */	cmplwi r3, 0xe
/* 8034B0C8  40 82 00 10 */	bne lbl_8034B0D8
lbl_8034B0CC:
/* 8034B0CC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8034B0D0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8034B0D4  4B FF 04 AD */	bl DCInvalidateRange
lbl_8034B0D8:
/* 8034B0D8  4B FF 26 1D */	bl OSDisableInterrupts
/* 8034B0DC  38 00 00 02 */	li r0, 2
/* 8034B0E0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8034B0E4  3B C3 00 00 */	addi r30, r3, 0
/* 8034B0E8  38 9F 00 00 */	addi r4, r31, 0
/* 8034B0EC  38 60 00 02 */	li r3, 2
/* 8034B0F0  48 00 07 BD */	bl __DVDPushWaitingQueue
/* 8034B0F4  80 0D 91 F8 */	lwz r0, executing(r13)
/* 8034B0F8  3B E3 00 00 */	addi r31, r3, 0
/* 8034B0FC  28 00 00 00 */	cmplwi r0, 0
/* 8034B100  40 82 00 14 */	bne lbl_8034B114
/* 8034B104  80 0D 92 04 */	lwz r0, PauseFlag(r13)
/* 8034B108  2C 00 00 00 */	cmpwi r0, 0
/* 8034B10C  40 82 00 08 */	bne lbl_8034B114
/* 8034B110  4B FF EF 9D */	bl stateReady
lbl_8034B114:
/* 8034B114  7F C3 F3 78 */	mr r3, r30
/* 8034B118  4B FF 26 05 */	bl OSRestoreInterrupts
/* 8034B11C  7F E3 FB 78 */	mr r3, r31
/* 8034B120  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8034B124  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8034B128  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8034B12C  38 21 00 28 */	addi r1, r1, 0x28
/* 8034B130  7C 08 03 A6 */	mtlr r0
/* 8034B134  4E 80 00 20 */	blr 
