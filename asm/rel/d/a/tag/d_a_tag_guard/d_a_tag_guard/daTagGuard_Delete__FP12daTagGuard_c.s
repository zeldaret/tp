lbl_80D599E0:
/* 80D599E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D599E4  7C 08 02 A6 */	mflr r0
/* 80D599E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D599EC  28 03 00 00 */	cmplwi r3, 0
/* 80D599F0  41 82 00 0C */	beq lbl_80D599FC
/* 80D599F4  38 80 00 00 */	li r4, 0
/* 80D599F8  4B 2B F2 94 */	b __dt__10fopAc_ac_cFv
lbl_80D599FC:
/* 80D599FC  38 60 00 01 */	li r3, 1
/* 80D59A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59A04  7C 08 03 A6 */	mtlr r0
/* 80D59A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59A0C  4E 80 00 20 */	blr 
