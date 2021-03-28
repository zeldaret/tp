lbl_80A14D90:
/* 80A14D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14D94  7C 08 02 A6 */	mflr r0
/* 80A14D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A14DA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A14DA4  41 82 00 10 */	beq lbl_80A14DB4
/* 80A14DA8  7C 80 07 35 */	extsh. r0, r4
/* 80A14DAC  40 81 00 08 */	ble lbl_80A14DB4
/* 80A14DB0  4B 8B 9F 8C */	b __dl__FPv
lbl_80A14DB4:
/* 80A14DB4  7F E3 FB 78 */	mr r3, r31
/* 80A14DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A14DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14DC0  7C 08 03 A6 */	mtlr r0
/* 80A14DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14DC8  4E 80 00 20 */	blr 
