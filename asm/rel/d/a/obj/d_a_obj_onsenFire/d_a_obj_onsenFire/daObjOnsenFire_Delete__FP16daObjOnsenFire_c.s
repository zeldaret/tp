lbl_80CA843C:
/* 80CA843C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8440  7C 08 02 A6 */	mflr r0
/* 80CA8444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8448  28 03 00 00 */	cmplwi r3, 0
/* 80CA844C  41 82 00 0C */	beq lbl_80CA8458
/* 80CA8450  38 80 00 00 */	li r4, 0
/* 80CA8454  4B 37 08 38 */	b __dt__10fopAc_ac_cFv
lbl_80CA8458:
/* 80CA8458  38 60 00 01 */	li r3, 1
/* 80CA845C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8460  7C 08 03 A6 */	mtlr r0
/* 80CA8464  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8468  4E 80 00 20 */	blr 
