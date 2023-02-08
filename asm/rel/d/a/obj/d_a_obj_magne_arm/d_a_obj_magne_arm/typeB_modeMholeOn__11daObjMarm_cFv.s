lbl_80590EF4:
/* 80590EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590EF8  7C 08 02 A6 */	mflr r0
/* 80590EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590F00  48 00 01 E9 */	bl init_typeB_modeRotate__11daObjMarm_cFv
/* 80590F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590F08  7C 08 03 A6 */	mtlr r0
/* 80590F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80590F10  4E 80 00 20 */	blr 
