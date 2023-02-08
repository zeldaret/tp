lbl_80CD9F2C:
/* 80CD9F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9F30  7C 08 02 A6 */	mflr r0
/* 80CD9F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9F38  80 83 05 74 */	lwz r4, 0x574(r3)
/* 80CD9F3C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CD9F40  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CD9F44  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CD9F48  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CD9F4C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CD9F50  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CD9F54  48 00 00 15 */	bl setBaseMtx__7daKey_cFv
/* 80CD9F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9F5C  7C 08 03 A6 */	mtlr r0
/* 80CD9F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9F64  4E 80 00 20 */	blr 
