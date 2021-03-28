lbl_800215F8:
/* 800215F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800215FC  7C 08 02 A6 */	mflr r0
/* 80021600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021604  38 63 00 10 */	addi r3, r3, 0x10
/* 80021608  48 24 53 15 */	bl cTg_InsertToTree__FP21node_lists_tree_classiP16create_tag_classi
/* 8002160C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021610  7C 08 03 A6 */	mtlr r0
/* 80021614  38 21 00 10 */	addi r1, r1, 0x10
/* 80021618  4E 80 00 20 */	blr 
