lbl_801C2518:
/* 801C2518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C251C  7C 08 02 A6 */	mflr r0
/* 801C2520  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2524  4B FF E7 E1 */	bl _delete__15dMenu_DmapMap_cFv
/* 801C2528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C252C  7C 08 03 A6 */	mtlr r0
/* 801C2530  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2534  4E 80 00 20 */	blr 
