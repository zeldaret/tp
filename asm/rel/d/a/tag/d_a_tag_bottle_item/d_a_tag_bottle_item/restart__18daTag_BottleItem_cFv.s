lbl_80D56100:
/* 80D56100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D56104  7C 08 02 A6 */	mflr r0
/* 80D56108  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5610C  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80D56110  38 00 00 00 */	li r0, 0
/* 80D56114  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80D56118  B0 83 04 DE */	sth r4, 0x4de(r3)
/* 80D5611C  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80D56120  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 80D56124  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80D56128  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80D5612C  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80D56130  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80D56134  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80D56138  3C 80 80 D5 */	lis r4, lit_3683@ha
/* 80D5613C  38 A4 66 70 */	addi r5, r4, lit_3683@l
/* 80D56140  80 85 00 00 */	lwz r4, 0(r5)
/* 80D56144  80 05 00 04 */	lwz r0, 4(r5)
/* 80D56148  90 81 00 08 */	stw r4, 8(r1)
/* 80D5614C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D56150  80 05 00 08 */	lwz r0, 8(r5)
/* 80D56154  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D56158  38 81 00 08 */	addi r4, r1, 8
/* 80D5615C  48 00 00 B9 */	bl setProcess__18daTag_BottleItem_cFM18daTag_BottleItem_cFPCvPvPv_i
/* 80D56160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D56164  7C 08 03 A6 */	mtlr r0
/* 80D56168  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5616C  4E 80 00 20 */	blr 
