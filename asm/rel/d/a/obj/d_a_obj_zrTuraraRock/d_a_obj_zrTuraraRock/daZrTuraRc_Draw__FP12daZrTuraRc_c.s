lbl_80D42208:
/* 80D42208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4220C  7C 08 02 A6 */	mflr r0
/* 80D42210  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42214  4B FF FF 4D */	bl Draw__12daZrTuraRc_cFv
/* 80D42218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4221C  7C 08 03 A6 */	mtlr r0
/* 80D42220  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42224  4E 80 00 20 */	blr 
