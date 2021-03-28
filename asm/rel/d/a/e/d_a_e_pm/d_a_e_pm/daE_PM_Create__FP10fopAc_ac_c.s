lbl_8074BA00:
/* 8074BA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074BA04  7C 08 02 A6 */	mflr r0
/* 8074BA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074BA0C  4B FF FA D1 */	bl Create__8daE_PM_cFv
/* 8074BA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074BA14  7C 08 03 A6 */	mtlr r0
/* 8074BA18  38 21 00 10 */	addi r1, r1, 0x10
/* 8074BA1C  4E 80 00 20 */	blr 
