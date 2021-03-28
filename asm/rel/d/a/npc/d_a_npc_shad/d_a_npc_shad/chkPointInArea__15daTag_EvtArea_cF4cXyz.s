lbl_80AE1F10:
/* 80AE1F10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE1F14  7C 08 02 A6 */	mflr r0
/* 80AE1F18  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE1F1C  3C A0 80 AE */	lis r5, lit_4498@ha
/* 80AE1F20  C0 25 20 6C */	lfs f1, lit_4498@l(r5)
/* 80AE1F24  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80AE1F28  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80AE1F2C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80AE1F30  C0 04 00 00 */	lfs f0, 0(r4)
/* 80AE1F34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AE1F38  C0 04 00 04 */	lfs f0, 4(r4)
/* 80AE1F3C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AE1F40  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AE1F44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AE1F48  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AE1F4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AE1F50  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80AE1F54  38 81 00 14 */	addi r4, r1, 0x14
/* 80AE1F58  38 A1 00 08 */	addi r5, r1, 8
/* 80AE1F5C  4B 9A A9 F0 */	b chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80AE1F60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE1F64  7C 08 03 A6 */	mtlr r0
/* 80AE1F68  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE1F6C  4E 80 00 20 */	blr 
