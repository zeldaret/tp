lbl_80C24738:
/* 80C24738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2473C  7C 08 02 A6 */	mflr r0
/* 80C24740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C24744  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80C24748  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C2474C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C24750  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C24754  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C24758  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C2475C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C24760  48 00 00 15 */	bl setBaseMtx__14daObjIceLeaf_cFv
/* 80C24764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24768  7C 08 03 A6 */	mtlr r0
/* 80C2476C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C24770  4E 80 00 20 */	blr 
