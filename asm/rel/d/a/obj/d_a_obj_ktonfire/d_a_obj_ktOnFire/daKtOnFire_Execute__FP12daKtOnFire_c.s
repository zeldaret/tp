lbl_8058CE48:
/* 8058CE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CE4C  7C 08 02 A6 */	mflr r0
/* 8058CE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CE54  4B FF FB C9 */	bl Execute__12daKtOnFire_cFv
/* 8058CE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CE5C  7C 08 03 A6 */	mtlr r0
/* 8058CE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CE64  4E 80 00 20 */	blr 
