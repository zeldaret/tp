lbl_80C478EC:
/* 80C478EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C478F0  7C 08 02 A6 */	mflr r0
/* 80C478F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C478F8  4B FF FB 91 */	bl Delete__15daObjKnBullet_cFv
/* 80C478FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C47900  7C 08 03 A6 */	mtlr r0
/* 80C47904  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47908  4E 80 00 20 */	blr 
