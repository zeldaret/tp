lbl_8034AFAC:
/* 8034AFAC  7C 08 02 A6 */	mflr r0
/* 8034AFB0  90 01 00 04 */	stw r0, 4(r1)
/* 8034AFB4  38 00 00 07 */	li r0, 7
/* 8034AFB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034AFBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034AFC0  3B E3 00 00 */	addi r31, r3, 0
/* 8034AFC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034AFC8  90 03 00 08 */	stw r0, 8(r3)
/* 8034AFCC  90 83 00 28 */	stw r4, 0x28(r3)
/* 8034AFD0  80 0D 84 6C */	lwz r0, autoInvalidation(r13)
/* 8034AFD4  2C 00 00 00 */	cmpwi r0, 0
/* 8034AFD8  41 82 00 30 */	beq lbl_8034B008
/* 8034AFDC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8034AFE0  28 03 00 01 */	cmplwi r3, 1
/* 8034AFE4  41 82 00 18 */	beq lbl_8034AFFC
/* 8034AFE8  38 03 FF FC */	addi r0, r3, -4
/* 8034AFEC  28 00 00 01 */	cmplwi r0, 1
/* 8034AFF0  40 81 00 0C */	ble lbl_8034AFFC
/* 8034AFF4  28 03 00 0E */	cmplwi r3, 0xe
/* 8034AFF8  40 82 00 10 */	bne lbl_8034B008
lbl_8034AFFC:
/* 8034AFFC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8034B000  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8034B004  4B FF 05 7D */	bl DCInvalidateRange
lbl_8034B008:
/* 8034B008  4B FF 26 ED */	bl OSDisableInterrupts
/* 8034B00C  38 00 00 02 */	li r0, 2
/* 8034B010  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8034B014  3B C3 00 00 */	addi r30, r3, 0
/* 8034B018  38 9F 00 00 */	addi r4, r31, 0
/* 8034B01C  38 60 00 01 */	li r3, 1
/* 8034B020  48 00 08 8D */	bl __DVDPushWaitingQueue
/* 8034B024  80 0D 91 F8 */	lwz r0, executing(r13)
/* 8034B028  3B E3 00 00 */	addi r31, r3, 0
/* 8034B02C  28 00 00 00 */	cmplwi r0, 0
/* 8034B030  40 82 00 14 */	bne lbl_8034B044
/* 8034B034  80 0D 92 04 */	lwz r0, PauseFlag(r13)
/* 8034B038  2C 00 00 00 */	cmpwi r0, 0
/* 8034B03C  40 82 00 08 */	bne lbl_8034B044
/* 8034B040  4B FF F0 6D */	bl stateReady
lbl_8034B044:
/* 8034B044  7F C3 F3 78 */	mr r3, r30
/* 8034B048  4B FF 26 D5 */	bl OSRestoreInterrupts
/* 8034B04C  7F E3 FB 78 */	mr r3, r31
/* 8034B050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034B054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034B058  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034B05C  38 21 00 20 */	addi r1, r1, 0x20
/* 8034B060  7C 08 03 A6 */	mtlr r0
/* 8034B064  4E 80 00 20 */	blr 
