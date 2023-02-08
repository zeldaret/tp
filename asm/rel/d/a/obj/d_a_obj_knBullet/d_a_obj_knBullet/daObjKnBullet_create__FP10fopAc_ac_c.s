lbl_80C4790C:
/* 80C4790C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47910  7C 08 02 A6 */	mflr r0
/* 80C47914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C47918  4B FF F8 01 */	bl Create__15daObjKnBullet_cFv
/* 80C4791C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C47920  7C 08 03 A6 */	mtlr r0
/* 80C47924  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47928  4E 80 00 20 */	blr 
