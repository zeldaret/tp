lbl_80539ACC:
/* 80539ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80539AD0  7C 08 02 A6 */	mflr r0
/* 80539AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80539AD8  38 63 11 0C */	addi r3, r3, 0x110c
/* 80539ADC  4B E2 85 6C */	b __ptmf_cmpr
/* 80539AE0  7C 60 00 34 */	cntlzw r0, r3
/* 80539AE4  54 03 D9 7E */	srwi r3, r0, 5
/* 80539AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80539AEC  7C 08 03 A6 */	mtlr r0
/* 80539AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80539AF4  4E 80 00 20 */	blr 
