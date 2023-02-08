lbl_80A94F68:
/* 80A94F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A94F6C  7C 08 02 A6 */	mflr r0
/* 80A94F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A94F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A94F78  3B E0 00 00 */	li r31, 0
/* 80A94F7C  80 04 00 00 */	lwz r0, 0(r4)
/* 80A94F80  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A94F84  41 82 00 28 */	beq lbl_80A94FAC
/* 80A94F88  40 80 00 24 */	bge lbl_80A94FAC
/* 80A94F8C  2C 00 00 05 */	cmpwi r0, 5
/* 80A94F90  41 82 00 08 */	beq lbl_80A94F98
/* 80A94F94  48 00 00 18 */	b lbl_80A94FAC
lbl_80A94F98:
/* 80A94F98  38 80 0A 00 */	li r4, 0xa00
/* 80A94F9C  4B FF FA E1 */	bl _turn_to_link__18daNpc_Pachi_Besu_cFs
/* 80A94FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80A94FA4  41 82 00 08 */	beq lbl_80A94FAC
/* 80A94FA8  3B E0 00 01 */	li r31, 1
lbl_80A94FAC:
/* 80A94FAC  7F E3 FB 78 */	mr r3, r31
/* 80A94FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A94FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A94FB8  7C 08 03 A6 */	mtlr r0
/* 80A94FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A94FC0  4E 80 00 20 */	blr 
