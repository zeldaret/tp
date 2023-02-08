lbl_80150BE0:
/* 80150BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80150BE4  7C 08 02 A6 */	mflr r0
/* 80150BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80150BEC  7C 64 1B 78 */	mr r4, r3
/* 80150BF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80150BF4  88 03 00 05 */	lbz r0, 5(r3)
/* 80150BF8  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 80150BFC  A0 63 00 00 */	lhz r3, 0(r3)
/* 80150C00  88 C4 00 02 */	lbz r6, 2(r4)
/* 80150C04  4B FF F9 F5 */	bl daNpcF_incIdx__FiRUsii
/* 80150C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80150C0C  7C 08 03 A6 */	mtlr r0
/* 80150C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80150C14  4E 80 00 20 */	blr 
