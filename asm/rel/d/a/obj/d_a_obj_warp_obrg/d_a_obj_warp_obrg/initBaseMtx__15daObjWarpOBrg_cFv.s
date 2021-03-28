lbl_80D299B8:
/* 80D299B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D299BC  7C 08 02 A6 */	mflr r0
/* 80D299C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D299C4  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80D299C8  38 04 00 24 */	addi r0, r4, 0x24
/* 80D299CC  90 03 05 04 */	stw r0, 0x504(r3)
/* 80D299D0  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80D299D4  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D299D8  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D299DC  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D299E0  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D299E4  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D299E8  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D299EC  48 00 00 15 */	bl setBaseMtx__15daObjWarpOBrg_cFv
/* 80D299F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D299F4  7C 08 03 A6 */	mtlr r0
/* 80D299F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D299FC  4E 80 00 20 */	blr 
