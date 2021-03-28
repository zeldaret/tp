lbl_80D560D8:
/* 80D560D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D560DC  7C 08 02 A6 */	mflr r0
/* 80D560E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D560E4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D560E8  98 03 05 76 */	stb r0, 0x576(r3)
/* 80D560EC  48 00 03 2D */	bl makeSoup__18daTag_BottleItem_cFv
/* 80D560F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D560F4  7C 08 03 A6 */	mtlr r0
/* 80D560F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D560FC  4E 80 00 20 */	blr 
