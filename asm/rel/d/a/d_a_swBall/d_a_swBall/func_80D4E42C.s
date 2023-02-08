lbl_80D4E42C:
/* 80D4E42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4E430  7C 08 02 A6 */	mflr r0
/* 80D4E434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4E438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4E43C  7C 7F 1B 78 */	mr r31, r3
/* 80D4E440  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D4E444  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D4E448  40 82 00 1C */	bne lbl_80D4E464
/* 80D4E44C  28 1F 00 00 */	cmplwi r31, 0
/* 80D4E450  41 82 00 08 */	beq lbl_80D4E458
/* 80D4E454  4B 2C A7 11 */	bl __ct__10fopAc_ac_cFv
lbl_80D4E458:
/* 80D4E458  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D4E45C  60 00 00 08 */	ori r0, r0, 8
/* 80D4E460  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D4E464:
/* 80D4E464  7F E3 FB 78 */	mr r3, r31
/* 80D4E468  4B FF FF 0D */	bl Create__10daSwBall_cFv
/* 80D4E46C  2C 03 00 00 */	cmpwi r3, 0
/* 80D4E470  40 82 00 0C */	bne lbl_80D4E47C
/* 80D4E474  38 60 00 05 */	li r3, 5
/* 80D4E478  48 00 00 08 */	b lbl_80D4E480
lbl_80D4E47C:
/* 80D4E47C  38 60 00 04 */	li r3, 4
lbl_80D4E480:
/* 80D4E480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4E484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4E488  7C 08 03 A6 */	mtlr r0
/* 80D4E48C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4E490  4E 80 00 20 */	blr 
