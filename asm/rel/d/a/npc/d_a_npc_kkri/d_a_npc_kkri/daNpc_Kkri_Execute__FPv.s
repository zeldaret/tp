lbl_805520E0:
/* 805520E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805520E4  7C 08 02 A6 */	mflr r0
/* 805520E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805520EC  4B FF DB 59 */	bl Execute__12daNpc_Kkri_cFv
/* 805520F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805520F4  7C 08 03 A6 */	mtlr r0
/* 805520F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805520FC  4E 80 00 20 */	blr 
