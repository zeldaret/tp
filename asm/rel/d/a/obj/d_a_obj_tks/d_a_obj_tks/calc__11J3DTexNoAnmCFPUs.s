lbl_80D11640:
/* 80D11640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D11644  7C 08 02 A6 */	mflr r0
/* 80D11648  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1164C  7C 66 1B 78 */	mr r6, r3
/* 80D11650  7C 85 23 78 */	mr r5, r4
/* 80D11654  80 63 00 08 */	lwz r3, 8(r3)
/* 80D11658  A0 86 00 04 */	lhz r4, 4(r6)
/* 80D1165C  4B 61 98 F4 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80D11660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D11664  7C 08 03 A6 */	mtlr r0
/* 80D11668  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1166C  4E 80 00 20 */	blr 
