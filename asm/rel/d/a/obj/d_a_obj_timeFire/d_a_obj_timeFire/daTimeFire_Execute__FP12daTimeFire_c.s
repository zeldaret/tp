lbl_80D0EFD8:
/* 80D0EFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0EFDC  7C 08 02 A6 */	mflr r0
/* 80D0EFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0EFE4  4B FF FB A5 */	bl Execute__12daTimeFire_cFv
/* 80D0EFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0EFEC  7C 08 03 A6 */	mtlr r0
/* 80D0EFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0EFF4  4E 80 00 20 */	blr 
