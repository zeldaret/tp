lbl_8058E750:
/* 8058E750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E754  7C 08 02 A6 */	mflr r0
/* 8058E758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E75C  88 03 07 0C */	lbz r0, 0x70c(r3)
/* 8058E760  28 00 00 00 */	cmplwi r0, 0
/* 8058E764  41 82 00 0C */	beq lbl_8058E770
/* 8058E768  38 63 07 14 */	addi r3, r3, 0x714
/* 8058E76C  4B C1 91 C1 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_8058E770:
/* 8058E770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E774  7C 08 03 A6 */	mtlr r0
/* 8058E778  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E77C  4E 80 00 20 */	blr 
