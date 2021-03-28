lbl_8003E028:
/* 8003E028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E02C  7C 08 02 A6 */	mflr r0
/* 8003E030  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E034  90 83 00 00 */	stw r4, 0(r3)
/* 8003E038  48 00 00 15 */	bl buildFmapWorldData__23dMenu_Fmap_world_data_cFv
/* 8003E03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E040  7C 08 03 A6 */	mtlr r0
/* 8003E044  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E048  4E 80 00 20 */	blr 
