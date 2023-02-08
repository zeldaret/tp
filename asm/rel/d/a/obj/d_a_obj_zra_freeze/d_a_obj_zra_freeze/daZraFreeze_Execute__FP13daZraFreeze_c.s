lbl_80D44AD8:
/* 80D44AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44ADC  7C 08 02 A6 */	mflr r0
/* 80D44AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44AE4  4B FF FB B5 */	bl Execute__13daZraFreeze_cFv
/* 80D44AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44AEC  7C 08 03 A6 */	mtlr r0
/* 80D44AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44AF4  4E 80 00 20 */	blr 
