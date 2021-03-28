lbl_80265E78:
/* 80265E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80265E7C  7C 08 02 A6 */	mflr r0
/* 80265E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80265E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80265E88  93 C1 00 08 */	stw r30, 8(r1)
/* 80265E8C  7C 7E 1B 78 */	mr r30, r3
/* 80265E90  83 E3 00 04 */	lwz r31, 4(r3)
/* 80265E94  80 1F 00 00 */	lwz r0, 0(r31)
/* 80265E98  7C 1E 00 40 */	cmplw r30, r0
/* 80265E9C  40 82 00 0C */	bne lbl_80265EA8
/* 80265EA0  80 1E 00 08 */	lwz r0, 8(r30)
/* 80265EA4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80265EA8:
/* 80265EA8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80265EAC  7C 1E 00 40 */	cmplw r30, r0
/* 80265EB0  40 82 00 0C */	bne lbl_80265EBC
/* 80265EB4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80265EB8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80265EBC:
/* 80265EBC  7F C3 F3 78 */	mr r3, r30
/* 80265EC0  48 00 02 FD */	bl cNd_SingleCut__FP10node_class
/* 80265EC4  7F C3 F3 78 */	mr r3, r30
/* 80265EC8  48 00 04 11 */	bl cNd_ClearObject__FP10node_class
/* 80265ECC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80265ED0  38 63 FF FF */	addi r3, r3, -1
/* 80265ED4  90 7F 00 08 */	stw r3, 8(r31)
/* 80265ED8  7C 03 00 D0 */	neg r0, r3
/* 80265EDC  7C 00 18 78 */	andc r0, r0, r3
/* 80265EE0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80265EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80265EE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80265EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80265EF0  7C 08 03 A6 */	mtlr r0
/* 80265EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80265EF8  4E 80 00 20 */	blr 
