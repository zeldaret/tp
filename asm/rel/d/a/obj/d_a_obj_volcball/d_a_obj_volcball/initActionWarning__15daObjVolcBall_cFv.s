lbl_80D2257C:
/* 80D2257C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D22580  7C 08 02 A6 */	mflr r0
/* 80D22584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D22588  38 00 00 03 */	li r0, 3
/* 80D2258C  98 03 06 01 */	stb r0, 0x601(r3)
/* 80D22590  48 00 12 D9 */	bl startQuake__15daObjVolcBall_cFv
/* 80D22594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D22598  7C 08 03 A6 */	mtlr r0
/* 80D2259C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D225A0  4E 80 00 20 */	blr 
