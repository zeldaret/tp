lbl_80B9BCEC:
/* 80B9BCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9BCF0  7C 08 02 A6 */	mflr r0
/* 80B9BCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9BCF8  48 00 08 F5 */	bl create_1st__13daObjLv5Key_cFv
/* 80B9BCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9BD00  7C 08 03 A6 */	mtlr r0
/* 80B9BD04  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9BD08  4E 80 00 20 */	blr 
