lbl_8058CE68:
/* 8058CE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CE6C  7C 08 02 A6 */	mflr r0
/* 8058CE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CE74  4B FF FF 8D */	bl Delete__12daKtOnFire_cFv
/* 8058CE78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CE7C  7C 08 03 A6 */	mtlr r0
/* 8058CE80  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CE84  4E 80 00 20 */	blr 
