lbl_80BC8EF8:
/* 80BC8EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8EFC  7C 08 02 A6 */	mflr r0
/* 80BC8F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8F04  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80BC8F08  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BC8F0C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BC8F10  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BC8F14  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BC8F18  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BC8F1C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BC8F20  48 00 00 15 */	bl setBaseMtx__12daObjChest_cFv
/* 80BC8F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8F28  7C 08 03 A6 */	mtlr r0
/* 80BC8F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8F30  4E 80 00 20 */	blr 
