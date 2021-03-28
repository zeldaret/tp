lbl_8001EC74:
/* 8001EC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EC78  7C 08 02 A6 */	mflr r0
/* 8001EC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EC80  90 61 00 08 */	stw r3, 8(r1)
/* 8001EC84  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001EC88  3C 60 80 3A */	lis r3, g_fopScnTg_SceneList@ha
/* 8001EC8C  38 63 39 18 */	addi r3, r3, g_fopScnTg_SceneList@l
/* 8001EC90  3C 80 80 26 */	lis r4, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@ha
/* 8001EC94  38 84 6A B0 */	addi r4, r4, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@l
/* 8001EC98  38 A1 00 08 */	addi r5, r1, 8
/* 8001EC9C  48 24 73 FD */	bl cLsIt_Judge__FP15node_list_classPFP10node_classPv_PvPv
/* 8001ECA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001ECA4  7C 08 03 A6 */	mtlr r0
/* 8001ECA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001ECAC  4E 80 00 20 */	blr 
