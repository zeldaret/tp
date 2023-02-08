lbl_80CA7B58:
/* 80CA7B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7B5C  7C 08 02 A6 */	mflr r0
/* 80CA7B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7B64  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80CA7B68  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CA7B6C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CA7B70  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CA7B74  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CA7B78  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CA7B7C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CA7B80  80 83 05 AC */	lwz r4, 0x5ac(r3)
/* 80CA7B84  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CA7B88  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CA7B8C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CA7B90  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CA7B94  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CA7B98  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CA7B9C  48 00 00 15 */	bl setBaseMtx__12daObjOnsen_cFv
/* 80CA7BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7BA4  7C 08 03 A6 */	mtlr r0
/* 80CA7BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7BAC  4E 80 00 20 */	blr 
