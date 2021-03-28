lbl_80BDCC58:
/* 80BDCC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCC5C  7C 08 02 A6 */	mflr r0
/* 80BDCC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCC64  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80BDCC68  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BDCC6C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BDCC70  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BDCC74  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BDCC78  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BDCC7C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BDCC80  48 00 00 15 */	bl setBaseMtx__14daObjDigSnow_cFv
/* 80BDCC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCC88  7C 08 03 A6 */	mtlr r0
/* 80BDCC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCC90  4E 80 00 20 */	blr 
