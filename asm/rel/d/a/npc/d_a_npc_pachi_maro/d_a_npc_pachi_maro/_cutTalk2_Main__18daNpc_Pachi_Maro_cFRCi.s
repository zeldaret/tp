lbl_80A99EE0:
/* 80A99EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99EE4  7C 08 02 A6 */	mflr r0
/* 80A99EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A99EF0  3B E0 00 00 */	li r31, 0
/* 80A99EF4  80 04 00 00 */	lwz r0, 0(r4)
/* 80A99EF8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A99EFC  41 82 00 28 */	beq lbl_80A99F24
/* 80A99F00  40 80 00 24 */	bge lbl_80A99F24
/* 80A99F04  2C 00 00 05 */	cmpwi r0, 5
/* 80A99F08  41 82 00 08 */	beq lbl_80A99F10
/* 80A99F0C  48 00 00 18 */	b lbl_80A99F24
lbl_80A99F10:
/* 80A99F10  38 80 0A 00 */	li r4, 0xa00
/* 80A99F14  4B FF F9 E9 */	bl _turn_to_link__18daNpc_Pachi_Maro_cFs
/* 80A99F18  2C 03 00 00 */	cmpwi r3, 0
/* 80A99F1C  41 82 00 08 */	beq lbl_80A99F24
/* 80A99F20  3B E0 00 01 */	li r31, 1
lbl_80A99F24:
/* 80A99F24  7F E3 FB 78 */	mr r3, r31
/* 80A99F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A99F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A99F30  7C 08 03 A6 */	mtlr r0
/* 80A99F34  38 21 00 10 */	addi r1, r1, 0x10
/* 80A99F38  4E 80 00 20 */	blr 
