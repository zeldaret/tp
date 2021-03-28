lbl_80CF6120:
/* 80CF6120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6124  7C 08 02 A6 */	mflr r0
/* 80CF6128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF612C  48 00 00 19 */	bl event_proc_call__14daObjSwBallC_cFv
/* 80CF6130  38 60 00 01 */	li r3, 1
/* 80CF6134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6138  7C 08 03 A6 */	mtlr r0
/* 80CF613C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6140  4E 80 00 20 */	blr 
