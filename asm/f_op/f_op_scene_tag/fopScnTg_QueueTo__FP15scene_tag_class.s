lbl_8001F13C:
/* 8001F13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F140  7C 08 02 A6 */	mflr r0
/* 8001F144  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F148  48 24 78 5D */	bl cTg_SingleCut__FP16create_tag_class
/* 8001F14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F150  7C 08 03 A6 */	mtlr r0
/* 8001F154  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F158  4E 80 00 20 */	blr 
