lbl_800204AC:
/* 800204AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800204B0  7C 08 02 A6 */	mflr r0
/* 800204B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800204B8  7C 65 1B 78 */	mr r5, r3
/* 800204BC  38 6D 80 50 */	la r3, g_fopDwTg_Queue(r13) /* 804505D0-_SDA_BASE_ */
/* 800204C0  48 24 64 0D */	bl cTg_AdditionToTree__FP21node_lists_tree_classiP16create_tag_class
/* 800204C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800204C8  7C 08 03 A6 */	mtlr r0
/* 800204CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800204D0  4E 80 00 20 */	blr 
