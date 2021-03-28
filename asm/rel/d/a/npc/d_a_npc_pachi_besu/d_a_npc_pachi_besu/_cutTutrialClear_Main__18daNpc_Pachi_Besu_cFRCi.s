lbl_80A94E38:
/* 80A94E38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A94E3C  7C 08 02 A6 */	mflr r0
/* 80A94E40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94E44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A94E48  3C A0 80 A9 */	lis r5, m__24daNpc_Pachi_Besu_Param_c@ha
/* 80A94E4C  38 A5 6A 6C */	addi r5, r5, m__24daNpc_Pachi_Besu_Param_c@l
/* 80A94E50  3B E0 00 00 */	li r31, 0
/* 80A94E54  80 04 00 00 */	lwz r0, 0(r4)
/* 80A94E58  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A94E5C  41 82 00 28 */	beq lbl_80A94E84
/* 80A94E60  40 80 00 10 */	bge lbl_80A94E70
/* 80A94E64  2C 00 00 05 */	cmpwi r0, 5
/* 80A94E68  41 82 00 14 */	beq lbl_80A94E7C
/* 80A94E6C  48 00 00 48 */	b lbl_80A94EB4
lbl_80A94E70:
/* 80A94E70  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A94E74  41 82 00 40 */	beq lbl_80A94EB4
/* 80A94E78  48 00 00 3C */	b lbl_80A94EB4
lbl_80A94E7C:
/* 80A94E7C  3B E0 00 01 */	li r31, 1
/* 80A94E80  48 00 00 34 */	b lbl_80A94EB4
lbl_80A94E84:
/* 80A94E84  C0 05 00 E8 */	lfs f0, 0xe8(r5)
/* 80A94E88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A94E8C  C0 05 00 EC */	lfs f0, 0xec(r5)
/* 80A94E90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A94E94  C0 05 00 F0 */	lfs f0, 0xf0(r5)
/* 80A94E98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A94E9C  38 81 00 08 */	addi r4, r1, 8
/* 80A94EA0  38 A0 10 00 */	li r5, 0x1000
/* 80A94EA4  4B FF FC 25 */	bl _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyzs
/* 80A94EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A94EAC  41 82 00 08 */	beq lbl_80A94EB4
/* 80A94EB0  3B E0 00 01 */	li r31, 1
lbl_80A94EB4:
/* 80A94EB4  7F E3 FB 78 */	mr r3, r31
/* 80A94EB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A94EBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94EC0  7C 08 03 A6 */	mtlr r0
/* 80A94EC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A94EC8  4E 80 00 20 */	blr 
