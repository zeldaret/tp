lbl_80D213F8:
/* 80D213F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D213FC  7C 08 02 A6 */	mflr r0
/* 80D21400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21404  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80D21408  3C 80 80 D2 */	lis r4, lit_3630@ha /* 0x80D21A08@ha */
/* 80D2140C  C0 04 1A 08 */	lfs f0, lit_3630@l(r4)  /* 0x80D21A08@l */
/* 80D21410  EC 01 00 2A */	fadds f0, f1, f0
/* 80D21414  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80D21418  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80D2141C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D21420  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D21424  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D21428  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D2142C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D21430  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D21434  48 00 00 15 */	bl setBaseMtx__11daObjVGnd_cFv
/* 80D21438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2143C  7C 08 03 A6 */	mtlr r0
/* 80D21440  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21444  4E 80 00 20 */	blr 
