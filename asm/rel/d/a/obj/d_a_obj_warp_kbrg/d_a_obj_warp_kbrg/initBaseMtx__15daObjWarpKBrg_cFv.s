lbl_80D26FA8:
/* 80D26FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26FAC  7C 08 02 A6 */	mflr r0
/* 80D26FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26FB4  80 83 05 B0 */	lwz r4, 0x5b0(r3)
/* 80D26FB8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D26FBC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D26FC0  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D26FC4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D26FC8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D26FCC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D26FD0  80 83 05 BC */	lwz r4, 0x5bc(r3)
/* 80D26FD4  28 04 00 00 */	cmplwi r4, 0
/* 80D26FD8  41 82 00 1C */	beq lbl_80D26FF4
/* 80D26FDC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D26FE0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D26FE4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D26FE8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D26FEC  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D26FF0  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_80D26FF4:
/* 80D26FF4  48 00 00 15 */	bl setBaseMtx__15daObjWarpKBrg_cFv
/* 80D26FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26FFC  7C 08 03 A6 */	mtlr r0
/* 80D27000  38 21 00 10 */	addi r1, r1, 0x10
/* 80D27004  4E 80 00 20 */	blr 
