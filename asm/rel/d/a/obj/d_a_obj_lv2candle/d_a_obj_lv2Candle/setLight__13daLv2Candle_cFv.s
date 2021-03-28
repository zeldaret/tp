lbl_8058E720:
/* 8058E720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E724  7C 08 02 A6 */	mflr r0
/* 8058E728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E72C  88 03 07 0C */	lbz r0, 0x70c(r3)
/* 8058E730  28 00 00 00 */	cmplwi r0, 0
/* 8058E734  41 82 00 0C */	beq lbl_8058E740
/* 8058E738  38 63 07 14 */	addi r3, r3, 0x714
/* 8058E73C  4B C1 90 54 */	b dKy_plight_set__FP15LIGHT_INFLUENCE
lbl_8058E740:
/* 8058E740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E744  7C 08 03 A6 */	mtlr r0
/* 8058E748  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E74C  4E 80 00 20 */	blr 
