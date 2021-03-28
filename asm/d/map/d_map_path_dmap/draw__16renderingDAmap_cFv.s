lbl_8003FE18:
/* 8003FE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003FE1C  7C 08 02 A6 */	mflr r0
/* 8003FE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003FE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003FE28  7C 7F 1B 78 */	mr r31, r3
/* 8003FE2C  4B FF CF 81 */	bl renderingMap__15dRenderingMap_cFv
/* 8003FE30  38 00 00 01 */	li r0, 1
/* 8003FE34  98 1F 00 31 */	stb r0, 0x31(r31)
/* 8003FE38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003FE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003FE40  7C 08 03 A6 */	mtlr r0
/* 8003FE44  38 21 00 10 */	addi r1, r1, 0x10
/* 8003FE48  4E 80 00 20 */	blr 
