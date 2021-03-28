lbl_80BE4E08:
/* 80BE4E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4E0C  7C 08 02 A6 */	mflr r0
/* 80BE4E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4E14  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80BE4E18  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BE4E1C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BE4E20  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BE4E24  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BE4E28  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BE4E2C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BE4E30  48 00 00 15 */	bl setBaseMtx__10daObjFan_cFv
/* 80BE4E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4E38  7C 08 03 A6 */	mtlr r0
/* 80BE4E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4E40  4E 80 00 20 */	blr 
