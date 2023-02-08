lbl_8059A5E8:
/* 8059A5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A5EC  7C 08 02 A6 */	mflr r0
/* 8059A5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A5F4  80 83 05 70 */	lwz r4, 0x570(r3)
/* 8059A5F8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8059A5FC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8059A600  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 8059A604  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8059A608  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8059A60C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 8059A610  48 00 00 15 */	bl setBaseMtx__11daObjSwPr_cFv
/* 8059A614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A618  7C 08 03 A6 */	mtlr r0
/* 8059A61C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A620  4E 80 00 20 */	blr 
