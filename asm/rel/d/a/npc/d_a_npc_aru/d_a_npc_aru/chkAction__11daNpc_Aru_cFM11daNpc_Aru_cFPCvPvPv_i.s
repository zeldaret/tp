lbl_80953AB8:
/* 80953AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80953ABC  7C 08 02 A6 */	mflr r0
/* 80953AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80953AC4  38 63 0F B0 */	addi r3, r3, 0xfb0
/* 80953AC8  4B A0 E5 81 */	bl __ptmf_cmpr
/* 80953ACC  7C 60 00 34 */	cntlzw r0, r3
/* 80953AD0  54 03 D9 7E */	srwi r3, r0, 5
/* 80953AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80953AD8  7C 08 03 A6 */	mtlr r0
/* 80953ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80953AE0  4E 80 00 20 */	blr 
