lbl_80BC78B0:
/* 80BC78B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC78B4  A8 03 05 E2 */	lha r0, 0x5e2(r3)
/* 80BC78B8  3C 80 80 BC */	lis r4, lit_3909@ha /* 0x80BC7D38@ha */
/* 80BC78BC  C8 24 7D 38 */	lfd f1, lit_3909@l(r4)  /* 0x80BC7D38@l */
/* 80BC78C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC78C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC78C8  3C 00 43 30 */	lis r0, 0x4330
/* 80BC78CC  90 01 00 08 */	stw r0, 8(r1)
/* 80BC78D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BC78D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BC78D8  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 80BC78DC  3C 80 80 BC */	lis r4, lit_3783@ha /* 0x80BC7D30@ha */
/* 80BC78E0  C0 04 7D 30 */	lfs f0, lit_3783@l(r4)  /* 0x80BC7D30@l */
/* 80BC78E4  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
/* 80BC78E8  38 00 00 00 */	li r0, 0
/* 80BC78EC  98 03 05 E1 */	stb r0, 0x5e1(r3)
/* 80BC78F0  38 00 00 02 */	li r0, 2
/* 80BC78F4  98 03 05 F9 */	stb r0, 0x5f9(r3)
/* 80BC78F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC78FC  4E 80 00 20 */	blr 
