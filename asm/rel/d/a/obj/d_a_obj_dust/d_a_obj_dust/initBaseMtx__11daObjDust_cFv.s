lbl_80BE2708:
/* 80BE2708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE270C  7C 08 02 A6 */	mflr r0
/* 80BE2710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE2714  80 83 06 20 */	lwz r4, 0x620(r3)
/* 80BE2718  38 04 00 24 */	addi r0, r4, 0x24
/* 80BE271C  90 03 05 04 */	stw r0, 0x504(r3)
/* 80BE2720  48 00 00 15 */	bl setBaseMtx__11daObjDust_cFv
/* 80BE2724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE2728  7C 08 03 A6 */	mtlr r0
/* 80BE272C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2730  4E 80 00 20 */	blr 
