lbl_8074ABA8:
/* 8074ABA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074ABAC  7C 08 02 A6 */	mflr r0
/* 8074ABB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074ABB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074ABB8  7C 7F 1B 78 */	mr r31, r3
/* 8074ABBC  80 63 07 04 */	lwz r3, 0x704(r3)
/* 8074ABC0  80 63 00 04 */	lwz r3, 4(r3)
/* 8074ABC4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8074ABC8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074ABCC  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 8074ABD0  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 8074ABD4  80 84 00 04 */	lwz r4, 4(r4)
/* 8074ABD8  38 84 00 24 */	addi r4, r4, 0x24
/* 8074ABDC  4B BF B8 D4 */	b PSMTXCopy
/* 8074ABE0  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 8074ABE4  38 80 00 00 */	li r4, 0
/* 8074ABE8  38 A0 00 00 */	li r5, 0
/* 8074ABEC  38 C0 00 00 */	li r6, 0
/* 8074ABF0  4B 8C 59 D8 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 8074ABF4  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 8074ABF8  4B 8C 5A B4 */	b modelCalc__14mDoExt_McaMorfFv
/* 8074ABFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074AC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074AC04  7C 08 03 A6 */	mtlr r0
/* 8074AC08  38 21 00 10 */	addi r1, r1, 0x10
/* 8074AC0C  4E 80 00 20 */	blr 
