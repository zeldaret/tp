lbl_80D241E0:
/* 80D241E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D241E4  7C 08 02 A6 */	mflr r0
/* 80D241E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D241EC  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80D241F0  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D241F4  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D241F8  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D241FC  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D24200  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D24204  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D24208  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 80D2420C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D24210  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D24214  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D24218  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D2421C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D24220  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D24224  48 00 00 15 */	bl setBaseMtx__14daObjVolcBom_cFv
/* 80D24228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2422C  7C 08 03 A6 */	mtlr r0
/* 80D24230  38 21 00 10 */	addi r1, r1, 0x10
/* 80D24234  4E 80 00 20 */	blr 
