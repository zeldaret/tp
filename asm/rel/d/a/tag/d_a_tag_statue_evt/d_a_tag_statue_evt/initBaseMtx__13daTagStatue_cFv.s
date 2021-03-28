lbl_805A6FC4:
/* 805A6FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6FC8  7C 08 02 A6 */	mflr r0
/* 805A6FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6FD0  80 83 05 78 */	lwz r4, 0x578(r3)
/* 805A6FD4  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 805A6FD8  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 805A6FDC  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 805A6FE0  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 805A6FE4  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 805A6FE8  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 805A6FEC  48 00 00 15 */	bl setBaseMtx__13daTagStatue_cFv
/* 805A6FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6FF4  7C 08 03 A6 */	mtlr r0
/* 805A6FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6FFC  4E 80 00 20 */	blr 
