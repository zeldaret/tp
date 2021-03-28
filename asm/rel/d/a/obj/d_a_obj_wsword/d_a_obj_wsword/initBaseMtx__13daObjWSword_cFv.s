lbl_80D3B998:
/* 80D3B998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B99C  7C 08 02 A6 */	mflr r0
/* 80D3B9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B9A4  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80D3B9A8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D3B9AC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D3B9B0  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D3B9B4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D3B9B8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D3B9BC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D3B9C0  48 00 00 15 */	bl setBaseMtx__13daObjWSword_cFv
/* 80D3B9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B9C8  7C 08 03 A6 */	mtlr r0
/* 80D3B9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B9D0  4E 80 00 20 */	blr 
