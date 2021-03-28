lbl_805A2D34:
/* 805A2D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2D38  7C 08 02 A6 */	mflr r0
/* 805A2D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2D40  4B A7 6F 3C */	b fopAcM_delete__FP10fopAc_ac_c
/* 805A2D44  38 60 00 01 */	li r3, 1
/* 805A2D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2D4C  7C 08 03 A6 */	mtlr r0
/* 805A2D50  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2D54  4E 80 00 20 */	blr 
