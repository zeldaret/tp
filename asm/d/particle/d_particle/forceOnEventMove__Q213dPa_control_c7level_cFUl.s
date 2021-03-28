lbl_8004B8B4:
/* 8004B8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004B8B8  7C 08 02 A6 */	mflr r0
/* 8004B8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004B8C0  4B FF FF B5 */	bl get__Q213dPa_control_c7level_cFUl
/* 8004B8C4  28 03 00 00 */	cmplwi r3, 0
/* 8004B8C8  41 82 00 10 */	beq lbl_8004B8D8
/* 8004B8CC  88 03 00 06 */	lbz r0, 6(r3)
/* 8004B8D0  60 00 00 02 */	ori r0, r0, 2
/* 8004B8D4  98 03 00 06 */	stb r0, 6(r3)
lbl_8004B8D8:
/* 8004B8D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004B8DC  7C 08 03 A6 */	mtlr r0
/* 8004B8E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8004B8E4  4E 80 00 20 */	blr 
