lbl_8095D40C:
/* 8095D40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095D410  7C 08 02 A6 */	mflr r0
/* 8095D414  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095D418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095D41C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095D420  41 82 00 30 */	beq lbl_8095D450
/* 8095D424  3C 60 80 96 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8095DCE4@ha */
/* 8095D428  38 03 DC E4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8095DCE4@l */
/* 8095D42C  90 1F 00 00 */	stw r0, 0(r31)
/* 8095D430  41 82 00 10 */	beq lbl_8095D440
/* 8095D434  3C 60 80 96 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8095DCD8@ha */
/* 8095D438  38 03 DC D8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8095DCD8@l */
/* 8095D43C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8095D440:
/* 8095D440  7C 80 07 35 */	extsh. r0, r4
/* 8095D444  40 81 00 0C */	ble lbl_8095D450
/* 8095D448  7F E3 FB 78 */	mr r3, r31
/* 8095D44C  4B 97 18 F1 */	bl __dl__FPv
lbl_8095D450:
/* 8095D450  7F E3 FB 78 */	mr r3, r31
/* 8095D454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095D458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095D45C  7C 08 03 A6 */	mtlr r0
/* 8095D460  38 21 00 10 */	addi r1, r1, 0x10
/* 8095D464  4E 80 00 20 */	blr 
