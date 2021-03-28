lbl_80020E84:
/* 80020E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020E88  7C 08 02 A6 */	mflr r0
/* 80020E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020E90  48 24 5B A5 */	bl cTg_Create__FP16create_tag_classPv
/* 80020E94  38 60 00 01 */	li r3, 1
/* 80020E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020E9C  7C 08 03 A6 */	mtlr r0
/* 80020EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80020EA4  4E 80 00 20 */	blr 
