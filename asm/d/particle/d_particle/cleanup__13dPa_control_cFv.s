lbl_8004C054:
/* 8004C054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004C058  7C 08 02 A6 */	mflr r0
/* 8004C05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004C060  38 63 02 10 */	addi r3, r3, 0x210
/* 8004C064  4B FF F7 A5 */	bl cleanup__Q213dPa_control_c7level_cFv
/* 8004C068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004C06C  7C 08 03 A6 */	mtlr r0
/* 8004C070  38 21 00 10 */	addi r1, r1, 0x10
/* 8004C074  4E 80 00 20 */	blr 
