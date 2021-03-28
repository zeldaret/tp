lbl_8020D8BC:
/* 8020D8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D8C0  7C 08 02 A6 */	mflr r0
/* 8020D8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D8CC  7C 7F 1B 78 */	mr r31, r3
/* 8020D8D0  4B E2 07 A9 */	bl dComIfGp_mapHide__Fv
/* 8020D8D4  38 00 00 00 */	li r0, 0
/* 8020D8D8  98 1F 00 2D */	stb r0, 0x2d(r31)
/* 8020D8DC  38 00 00 07 */	li r0, 7
/* 8020D8E0  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 8020D8E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D8EC  7C 08 03 A6 */	mtlr r0
/* 8020D8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D8F4  4E 80 00 20 */	blr 
