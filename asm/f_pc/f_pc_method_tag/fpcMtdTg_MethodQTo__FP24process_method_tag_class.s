lbl_800237D8:
/* 800237D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800237DC  7C 08 02 A6 */	mflr r0
/* 800237E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800237E4  48 24 31 C1 */	bl cTg_SingleCut__FP16create_tag_class
/* 800237E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800237EC  7C 08 03 A6 */	mtlr r0
/* 800237F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800237F4  4E 80 00 20 */	blr 
