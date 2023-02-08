lbl_80D62FD4:
/* 80D62FD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D62FD8  7C 08 02 A6 */	mflr r0
/* 80D62FDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D62FE0  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80D62FE4  38 00 00 00 */	li r0, 0
/* 80D62FE8  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80D62FEC  B0 83 04 DE */	sth r4, 0x4de(r3)
/* 80D62FF0  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80D62FF4  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 80D62FF8  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80D62FFC  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80D63000  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80D63004  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80D63008  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80D6300C  3C 80 80 D6 */	lis r4, lit_3829@ha /* 0x80D637D8@ha */
/* 80D63010  38 A4 37 D8 */	addi r5, r4, lit_3829@l /* 0x80D637D8@l */
/* 80D63014  80 85 00 00 */	lwz r4, 0(r5)
/* 80D63018  80 05 00 04 */	lwz r0, 4(r5)
/* 80D6301C  90 81 00 08 */	stw r4, 8(r1)
/* 80D63020  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D63024  80 05 00 08 */	lwz r0, 8(r5)
/* 80D63028  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D6302C  38 81 00 08 */	addi r4, r1, 8
/* 80D63030  48 00 00 B9 */	bl setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i
/* 80D63034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D63038  7C 08 03 A6 */	mtlr r0
/* 80D6303C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D63040  4E 80 00 20 */	blr 
