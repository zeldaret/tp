lbl_80ACA15C:
/* 80ACA15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA160  7C 08 02 A6 */	mflr r0
/* 80ACA164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACA16C  7C 7F 1B 78 */	mr r31, r3
/* 80ACA170  4B 67 F0 20 */	b setMtx__8daNpcT_cFv
/* 80ACA174  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80ACA178  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80ACA17C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80ACA180  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80ACA184  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80ACA188  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80ACA18C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80ACA190  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80ACA194  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80ACA198  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80ACA19C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80ACA1A0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80ACA1A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACA1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA1AC  7C 08 03 A6 */	mtlr r0
/* 80ACA1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA1B4  4E 80 00 20 */	blr 
