lbl_80C68AC4:
/* 80C68AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68AC8  7C 08 02 A6 */	mflr r0
/* 80C68ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68AD0  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C68AD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C68AD8  7D 89 03 A6 */	mtctr r12
/* 80C68ADC  4E 80 04 21 */	bctrl 
/* 80C68AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68AE4  7C 08 03 A6 */	mtlr r0
/* 80C68AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68AEC  4E 80 00 20 */	blr 
