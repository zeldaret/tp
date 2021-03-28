lbl_8058CE28:
/* 8058CE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CE2C  7C 08 02 A6 */	mflr r0
/* 8058CE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CE34  4B FF FF C5 */	bl Draw__12daKtOnFire_cFv
/* 8058CE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CE3C  7C 08 03 A6 */	mtlr r0
/* 8058CE40  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CE44  4E 80 00 20 */	blr 
