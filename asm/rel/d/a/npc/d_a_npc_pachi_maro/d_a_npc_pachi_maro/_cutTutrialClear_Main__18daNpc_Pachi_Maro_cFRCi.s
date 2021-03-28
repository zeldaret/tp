lbl_80A99CB8:
/* 80A99CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A99CBC  7C 08 02 A6 */	mflr r0
/* 80A99CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A99CC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A99CC8  3C A0 80 AA */	lis r5, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A99CCC  38 A5 B8 8C */	addi r5, r5, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A99CD0  3B E0 00 00 */	li r31, 0
/* 80A99CD4  80 04 00 00 */	lwz r0, 0(r4)
/* 80A99CD8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A99CDC  41 82 00 28 */	beq lbl_80A99D04
/* 80A99CE0  40 80 00 10 */	bge lbl_80A99CF0
/* 80A99CE4  2C 00 00 05 */	cmpwi r0, 5
/* 80A99CE8  41 82 00 14 */	beq lbl_80A99CFC
/* 80A99CEC  48 00 00 48 */	b lbl_80A99D34
lbl_80A99CF0:
/* 80A99CF0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A99CF4  41 82 00 40 */	beq lbl_80A99D34
/* 80A99CF8  48 00 00 3C */	b lbl_80A99D34
lbl_80A99CFC:
/* 80A99CFC  3B E0 00 01 */	li r31, 1
/* 80A99D00  48 00 00 34 */	b lbl_80A99D34
lbl_80A99D04:
/* 80A99D04  C0 05 00 F0 */	lfs f0, 0xf0(r5)
/* 80A99D08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A99D0C  C0 05 00 F4 */	lfs f0, 0xf4(r5)
/* 80A99D10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A99D14  C0 05 00 F8 */	lfs f0, 0xf8(r5)
/* 80A99D18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A99D1C  38 81 00 08 */	addi r4, r1, 8
/* 80A99D20  38 A0 10 00 */	li r5, 0x1000
/* 80A99D24  4B FF FC 25 */	bl _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyzs
/* 80A99D28  2C 03 00 00 */	cmpwi r3, 0
/* 80A99D2C  41 82 00 08 */	beq lbl_80A99D34
/* 80A99D30  3B E0 00 01 */	li r31, 1
lbl_80A99D34:
/* 80A99D34  7F E3 FB 78 */	mr r3, r31
/* 80A99D38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A99D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A99D40  7C 08 03 A6 */	mtlr r0
/* 80A99D44  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99D48  4E 80 00 20 */	blr 
