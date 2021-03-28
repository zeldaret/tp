lbl_80CF0264:
/* 80CF0264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF0268  7C 08 02 A6 */	mflr r0
/* 80CF026C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0270  4B FF FF C5 */	bl _delete__14daObj_Suisya_cFv
/* 80CF0274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF0278  7C 08 03 A6 */	mtlr r0
/* 80CF027C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0280  4E 80 00 20 */	blr 
