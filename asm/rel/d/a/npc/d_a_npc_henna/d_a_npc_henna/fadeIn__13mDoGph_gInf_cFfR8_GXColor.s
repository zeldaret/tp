lbl_8054A4CC:
/* 8054A4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A4D0  7C 08 02 A6 */	mflr r0
/* 8054A4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A4D8  FC 20 08 50 */	fneg f1, f1
/* 8054A4DC  4B AB DA FD */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 8054A4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A4E4  7C 08 03 A6 */	mtlr r0
/* 8054A4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A4EC  4E 80 00 20 */	blr 
