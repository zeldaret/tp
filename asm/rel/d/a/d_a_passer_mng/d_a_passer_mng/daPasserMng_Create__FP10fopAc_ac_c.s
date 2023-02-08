lbl_80D46748:
/* 80D46748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4674C  7C 08 02 A6 */	mflr r0
/* 80D46750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46754  48 00 00 15 */	bl create__13daPasserMng_cFv
/* 80D46758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4675C  7C 08 03 A6 */	mtlr r0
/* 80D46760  38 21 00 10 */	addi r1, r1, 0x10
/* 80D46764  4E 80 00 20 */	blr 
