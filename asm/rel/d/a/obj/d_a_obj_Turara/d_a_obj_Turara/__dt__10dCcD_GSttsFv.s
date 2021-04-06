lbl_80B9D40C:
/* 80B9D40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D410  7C 08 02 A6 */	mflr r0
/* 80B9D414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9D41C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9D420  41 82 00 30 */	beq lbl_80B9D450
/* 80B9D424  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B9EAB4@ha */
/* 80B9D428  38 03 EA B4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B9EAB4@l */
/* 80B9D42C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9D430  41 82 00 10 */	beq lbl_80B9D440
/* 80B9D434  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B9EAA8@ha */
/* 80B9D438  38 03 EA A8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B9EAA8@l */
/* 80B9D43C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B9D440:
/* 80B9D440  7C 80 07 35 */	extsh. r0, r4
/* 80B9D444  40 81 00 0C */	ble lbl_80B9D450
/* 80B9D448  7F E3 FB 78 */	mr r3, r31
/* 80B9D44C  4B 73 18 F1 */	bl __dl__FPv
lbl_80B9D450:
/* 80B9D450  7F E3 FB 78 */	mr r3, r31
/* 80B9D454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9D458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D45C  7C 08 03 A6 */	mtlr r0
/* 80B9D460  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D464  4E 80 00 20 */	blr 
