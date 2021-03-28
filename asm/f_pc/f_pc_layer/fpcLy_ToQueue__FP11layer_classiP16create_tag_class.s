lbl_8002161C:
/* 8002161C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021620  7C 08 02 A6 */	mflr r0
/* 80021624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021628  38 63 00 10 */	addi r3, r3, 0x10
/* 8002162C  48 24 52 A1 */	bl cTg_AdditionToTree__FP21node_lists_tree_classiP16create_tag_class
/* 80021630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021634  7C 08 03 A6 */	mtlr r0
/* 80021638  38 21 00 10 */	addi r1, r1, 0x10
/* 8002163C  4E 80 00 20 */	blr 
