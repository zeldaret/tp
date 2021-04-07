lbl_8085A388:
/* 8085A388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A38C  7C 08 02 A6 */	mflr r0
/* 8085A390  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A394  38 63 05 68 */	addi r3, r3, 0x568
/* 8085A398  4B 94 D5 95 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 8085A39C  38 60 00 01 */	li r3, 1
/* 8085A3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A3A4  7C 08 03 A6 */	mtlr r0
/* 8085A3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A3AC  4E 80 00 20 */	blr 
