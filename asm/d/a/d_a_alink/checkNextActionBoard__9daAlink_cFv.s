lbl_8010658C:
/* 8010658C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80106590  7C 08 02 A6 */	mflr r0
/* 80106594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010659C  7C 7F 1B 78 */	mr r31, r3
/* 801065A0  4B FB 37 8D */	bl checkNextActionFromButton__9daAlink_cFv
/* 801065A4  2C 03 00 00 */	cmpwi r3, 0
/* 801065A8  41 82 00 0C */	beq lbl_801065B4
/* 801065AC  38 60 00 01 */	li r3, 1
/* 801065B0  48 00 00 54 */	b lbl_80106604
lbl_801065B4:
/* 801065B4  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 801065B8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801065BC  40 82 00 18 */	bne lbl_801065D4
/* 801065C0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801065C4  28 00 00 A8 */	cmplwi r0, 0xa8
/* 801065C8  41 82 00 28 */	beq lbl_801065F0
/* 801065CC  28 00 00 A9 */	cmplwi r0, 0xa9
/* 801065D0  41 82 00 20 */	beq lbl_801065F0
lbl_801065D4:
/* 801065D4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801065D8  28 00 00 AC */	cmplwi r0, 0xac
/* 801065DC  41 82 00 14 */	beq lbl_801065F0
/* 801065E0  28 00 00 A8 */	cmplwi r0, 0xa8
/* 801065E4  41 82 00 0C */	beq lbl_801065F0
/* 801065E8  28 00 00 AA */	cmplwi r0, 0xaa
/* 801065EC  40 82 00 0C */	bne lbl_801065F8
lbl_801065F0:
/* 801065F0  38 60 00 00 */	li r3, 0
/* 801065F4  48 00 00 10 */	b lbl_80106604
lbl_801065F8:
/* 801065F8  7F E3 FB 78 */	mr r3, r31
/* 801065FC  38 80 00 00 */	li r4, 0
/* 80106600  48 00 04 39 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
lbl_80106604:
/* 80106604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80106608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010660C  7C 08 03 A6 */	mtlr r0
/* 80106610  38 21 00 10 */	addi r1, r1, 0x10
/* 80106614  4E 80 00 20 */	blr 
