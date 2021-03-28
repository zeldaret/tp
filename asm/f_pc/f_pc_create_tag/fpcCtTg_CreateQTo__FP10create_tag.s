lbl_80020E64:
/* 80020E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020E68  7C 08 02 A6 */	mflr r0
/* 80020E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020E70  48 24 5B 35 */	bl cTg_SingleCut__FP16create_tag_class
/* 80020E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020E78  7C 08 03 A6 */	mtlr r0
/* 80020E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80020E80  4E 80 00 20 */	blr 
