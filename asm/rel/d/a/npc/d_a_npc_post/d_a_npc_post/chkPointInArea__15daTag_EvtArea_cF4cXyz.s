lbl_80AAD178:
/* 80AAD178  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AAD17C  7C 08 02 A6 */	mflr r0
/* 80AAD180  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AAD184  3C A0 80 AB */	lis r5, lit_4070@ha /* 0x80AAD2A0@ha */
/* 80AAD188  C0 25 D2 A0 */	lfs f1, lit_4070@l(r5)  /* 0x80AAD2A0@l */
/* 80AAD18C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80AAD190  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80AAD194  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80AAD198  C0 04 00 00 */	lfs f0, 0(r4)
/* 80AAD19C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AAD1A0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80AAD1A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AAD1A8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AAD1AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AAD1B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AAD1B4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AAD1B8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80AAD1BC  38 81 00 14 */	addi r4, r1, 0x14
/* 80AAD1C0  38 A1 00 08 */	addi r5, r1, 8
/* 80AAD1C4  4B 9D F7 89 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80AAD1C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AAD1CC  7C 08 03 A6 */	mtlr r0
/* 80AAD1D0  38 21 00 30 */	addi r1, r1, 0x30
/* 80AAD1D4  4E 80 00 20 */	blr 
