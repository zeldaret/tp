lbl_80C67FB4:
/* 80C67FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67FB8  7C 08 02 A6 */	mflr r0
/* 80C67FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67FC0  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80C67FC4  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C67FC8  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C67FCC  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C67FD0  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C67FD4  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C67FD8  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C67FDC  48 00 00 15 */	bl setBaseMtx__14daObjLv4Gear_cFv
/* 80C67FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67FE4  7C 08 03 A6 */	mtlr r0
/* 80C67FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67FEC  4E 80 00 20 */	blr 
