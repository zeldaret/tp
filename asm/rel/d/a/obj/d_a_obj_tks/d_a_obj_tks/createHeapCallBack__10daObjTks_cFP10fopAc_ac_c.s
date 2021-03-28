lbl_80D10094:
/* 80D10094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D10098  7C 08 02 A6 */	mflr r0
/* 80D1009C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D100A0  4B FF F8 65 */	bl CreateHeap__10daObjTks_cFv
/* 80D100A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D100A8  7C 08 03 A6 */	mtlr r0
/* 80D100AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D100B0  4E 80 00 20 */	blr 
