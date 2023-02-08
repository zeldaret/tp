lbl_80D00174:
/* 80D00174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00178  7C 08 02 A6 */	mflr r0
/* 80D0017C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00180  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80D00184  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D00188  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D0018C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D00190  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D00194  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D00198  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D0019C  80 83 05 AC */	lwz r4, 0x5ac(r3)
/* 80D001A0  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D001A4  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D001A8  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D001AC  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D001B0  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D001B4  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D001B8  48 00 00 15 */	bl setBaseMtx__16daObjSwSpinner_cFv
/* 80D001BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D001C0  7C 08 03 A6 */	mtlr r0
/* 80D001C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D001C8  4E 80 00 20 */	blr 
