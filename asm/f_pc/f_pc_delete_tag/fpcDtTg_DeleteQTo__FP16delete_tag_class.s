lbl_80020F7C:
/* 80020F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020F80  7C 08 02 A6 */	mflr r0
/* 80020F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020F88  48 24 5A 1D */	bl cTg_SingleCut__FP16create_tag_class
/* 80020F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020F90  7C 08 03 A6 */	mtlr r0
/* 80020F94  38 21 00 10 */	addi r1, r1, 0x10
/* 80020F98  4E 80 00 20 */	blr 
