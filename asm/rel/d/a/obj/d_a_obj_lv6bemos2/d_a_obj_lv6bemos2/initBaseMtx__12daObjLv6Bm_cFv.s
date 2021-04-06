lbl_80C7E30C:
/* 80C7E30C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7E310  7C 08 02 A6 */	mflr r0
/* 80C7E314  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7E318  3C 80 80 C8 */	lis r4, lit_3854@ha /* 0x80C81C44@ha */
/* 80C7E31C  C0 44 1C 44 */	lfs f2, lit_3854@l(r4)  /* 0x80C81C44@l */
/* 80C7E320  D0 41 00 08 */	stfs f2, 8(r1)
/* 80C7E324  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80C7E328  3C 80 80 C8 */	lis r4, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7E32C  C0 24 1C 48 */	lfs f1, lit_3855@l(r4)  /* 0x80C81C48@l */
/* 80C7E330  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C7E334  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C7E338  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C7E33C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C7E340  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C7E344  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C7E348  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C7E34C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C7E350  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 80C7E354  D0 44 00 18 */	stfs f2, 0x18(r4)
/* 80C7E358  D0 44 00 1C */	stfs f2, 0x1c(r4)
/* 80C7E35C  D0 24 00 20 */	stfs f1, 0x20(r4)
/* 80C7E360  48 00 00 15 */	bl setBaseMtx__12daObjLv6Bm_cFv
/* 80C7E364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7E368  7C 08 03 A6 */	mtlr r0
/* 80C7E36C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7E370  4E 80 00 20 */	blr 
