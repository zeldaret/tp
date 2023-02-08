lbl_802E82B0:
/* 802E82B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E82B4  7C 08 02 A6 */	mflr r0
/* 802E82B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E82BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E82C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E82C4  7C 7E 1B 78 */	mr r30, r3
/* 802E82C8  7C 9F 23 78 */	mr r31, r4
/* 802E82CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802E82D0  7C 00 F8 40 */	cmplw r0, r31
/* 802E82D4  40 82 00 64 */	bne lbl_802E8338
/* 802E82D8  80 1E 00 00 */	lwz r0, 0(r30)
/* 802E82DC  28 00 00 01 */	cmplwi r0, 1
/* 802E82E0  41 81 00 10 */	bgt lbl_802E82F0
/* 802E82E4  38 00 00 00 */	li r0, 0
/* 802E82E8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802E82EC  48 00 00 4C */	b lbl_802E8338
lbl_802E82F0:
/* 802E82F0  38 7E 00 04 */	addi r3, r30, 4
/* 802E82F4  90 61 00 18 */	stw r3, 0x18(r1)
/* 802E82F8  90 61 00 14 */	stw r3, 0x14(r1)
/* 802E82FC  90 61 00 20 */	stw r3, 0x20(r1)
/* 802E8300  80 63 00 04 */	lwz r3, 4(r3)
/* 802E8304  90 61 00 08 */	stw r3, 8(r1)
/* 802E8308  38 03 FF E8 */	addi r0, r3, -24
/* 802E830C  7C 1F 00 40 */	cmplw r31, r0
/* 802E8310  41 82 00 10 */	beq lbl_802E8320
/* 802E8314  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802E8318  38 03 FF E8 */	addi r0, r3, -24
/* 802E831C  48 00 00 18 */	b lbl_802E8334
lbl_802E8320:
/* 802E8320  80 7E 00 04 */	lwz r3, 4(r30)
/* 802E8324  90 61 00 10 */	stw r3, 0x10(r1)
/* 802E8328  90 61 00 0C */	stw r3, 0xc(r1)
/* 802E832C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802E8330  38 03 FF E8 */	addi r0, r3, -24
lbl_802E8334:
/* 802E8334  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_802E8338:
/* 802E8338  48 00 02 01 */	bl JUTGetWarningConsole
/* 802E833C  7C 03 F8 40 */	cmplw r3, r31
/* 802E8340  40 82 00 0C */	bne lbl_802E834C
/* 802E8344  38 60 00 00 */	li r3, 0
/* 802E8348  48 00 01 E9 */	bl JUTSetWarningConsole
lbl_802E834C:
/* 802E834C  48 00 01 DD */	bl JUTGetReportConsole
/* 802E8350  7C 03 F8 40 */	cmplw r3, r31
/* 802E8354  40 82 00 0C */	bne lbl_802E8360
/* 802E8358  38 60 00 00 */	li r3, 0
/* 802E835C  48 00 01 C5 */	bl JUTSetReportConsole
lbl_802E8360:
/* 802E8360  38 9F 00 18 */	addi r4, r31, 0x18
/* 802E8364  7F C3 F3 78 */	mr r3, r30
/* 802E8368  4B FF 48 91 */	bl Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
/* 802E836C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E8370  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E8374  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E8378  7C 08 03 A6 */	mtlr r0
/* 802E837C  38 21 00 30 */	addi r1, r1, 0x30
/* 802E8380  4E 80 00 20 */	blr 
