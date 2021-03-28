lbl_80C7CE24:
/* 80C7CE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7CE28  7C 08 02 A6 */	mflr r0
/* 80C7CE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7CE30  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C7CE34  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C7CE38  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C7CE3C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C7CE40  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C7CE44  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C7CE48  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C7CE4C  48 00 00 15 */	bl setBaseMtx__11daObjL6Bm_cFv
/* 80C7CE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7CE54  7C 08 03 A6 */	mtlr r0
/* 80C7CE58  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7CE5C  4E 80 00 20 */	blr 
