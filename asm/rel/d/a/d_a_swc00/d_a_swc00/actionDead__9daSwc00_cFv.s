lbl_805A1AF0:
/* 805A1AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1AF4  7C 08 02 A6 */	mflr r0
/* 805A1AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1AFC  88 03 05 83 */	lbz r0, 0x583(r3)
/* 805A1B00  28 00 00 00 */	cmplwi r0, 0
/* 805A1B04  41 82 00 08 */	beq lbl_805A1B0C
/* 805A1B08  4B A7 81 74 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805A1B0C:
/* 805A1B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1B10  7C 08 03 A6 */	mtlr r0
/* 805A1B14  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1B18  4E 80 00 20 */	blr 
