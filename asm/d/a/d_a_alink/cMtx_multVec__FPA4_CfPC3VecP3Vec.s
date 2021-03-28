lbl_800CFFC0:
/* 800CFFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFFC4  7C 08 02 A6 */	mflr r0
/* 800CFFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFFCC  48 27 6D A1 */	bl PSMTXMultVec
/* 800CFFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFFD4  7C 08 03 A6 */	mtlr r0
/* 800CFFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFFDC  4E 80 00 20 */	blr 
