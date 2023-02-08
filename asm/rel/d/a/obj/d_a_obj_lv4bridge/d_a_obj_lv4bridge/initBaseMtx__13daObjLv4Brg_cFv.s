lbl_80C62878:
/* 80C62878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6287C  7C 08 02 A6 */	mflr r0
/* 80C62880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62884  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 80C62888  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C6288C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C62890  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C62894  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C62898  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C6289C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C628A0  48 00 00 15 */	bl setBaseMtx__13daObjLv4Brg_cFv
/* 80C628A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C628A8  7C 08 03 A6 */	mtlr r0
/* 80C628AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C628B0  4E 80 00 20 */	blr 
