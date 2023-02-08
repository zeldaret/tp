lbl_80028DD4:
/* 80028DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028DD8  7C 08 02 A6 */	mflr r0
/* 80028DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028DE0  4B FF FE B1 */	bl getLineWidthSub__15renderingAmap_cFi
/* 80028DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028DE8  7C 08 03 A6 */	mtlr r0
/* 80028DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80028DF0  4E 80 00 20 */	blr 
