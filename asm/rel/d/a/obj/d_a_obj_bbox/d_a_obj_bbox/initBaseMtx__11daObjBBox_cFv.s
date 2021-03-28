lbl_80BACD38:
/* 80BACD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BACD3C  7C 08 02 A6 */	mflr r0
/* 80BACD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BACD44  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80BACD48  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BACD4C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BACD50  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BACD54  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BACD58  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BACD5C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BACD60  48 00 00 15 */	bl setBaseMtx__11daObjBBox_cFv
/* 80BACD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BACD68  7C 08 03 A6 */	mtlr r0
/* 80BACD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BACD70  4E 80 00 20 */	blr 
