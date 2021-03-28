lbl_80C478A4:
/* 80C478A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C478A8  7C 08 02 A6 */	mflr r0
/* 80C478AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C478B0  4B FF FA 51 */	bl Execute__15daObjKnBullet_cFv
/* 80C478B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C478B8  7C 08 03 A6 */	mtlr r0
/* 80C478BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C478C0  4E 80 00 20 */	blr 
