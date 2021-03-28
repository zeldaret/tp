lbl_8058CE88:
/* 8058CE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CE8C  7C 08 02 A6 */	mflr r0
/* 8058CE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CE94  4B FF F8 3D */	bl create__12daKtOnFire_cFv
/* 8058CE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CE9C  7C 08 03 A6 */	mtlr r0
/* 8058CEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CEA4  4E 80 00 20 */	blr 
