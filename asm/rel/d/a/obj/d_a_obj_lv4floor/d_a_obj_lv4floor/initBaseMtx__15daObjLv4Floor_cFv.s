lbl_80C677F8:
/* 80C677F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C677FC  7C 08 02 A6 */	mflr r0
/* 80C67800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67804  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C67808  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C6780C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C67810  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C67814  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C67818  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C6781C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C67820  48 00 00 15 */	bl setBaseMtx__15daObjLv4Floor_cFv
/* 80C67824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67828  7C 08 03 A6 */	mtlr r0
/* 80C6782C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67830  4E 80 00 20 */	blr 
