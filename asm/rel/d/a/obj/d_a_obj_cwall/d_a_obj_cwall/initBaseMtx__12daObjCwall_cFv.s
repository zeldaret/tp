lbl_80BD6A4C:
/* 80BD6A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6A50  7C 08 02 A6 */	mflr r0
/* 80BD6A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6A58  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80BD6A5C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BD6A60  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BD6A64  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BD6A68  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BD6A6C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BD6A70  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BD6A74  48 00 00 15 */	bl setBaseMtx__12daObjCwall_cFv
/* 80BD6A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6A7C  7C 08 03 A6 */	mtlr r0
/* 80BD6A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6A84  4E 80 00 20 */	blr 
