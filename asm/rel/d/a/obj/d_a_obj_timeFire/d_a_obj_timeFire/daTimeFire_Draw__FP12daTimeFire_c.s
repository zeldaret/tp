lbl_80D0EFB8:
/* 80D0EFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0EFBC  7C 08 02 A6 */	mflr r0
/* 80D0EFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0EFC4  4B FF FF C5 */	bl Draw__12daTimeFire_cFv
/* 80D0EFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0EFCC  7C 08 03 A6 */	mtlr r0
/* 80D0EFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0EFD4  4E 80 00 20 */	blr 
