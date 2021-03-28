lbl_80021C60:
/* 80021C60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021C64  7C 08 02 A6 */	mflr r0
/* 80021C68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021C6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80021C70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80021C74  90 61 00 08 */	stw r3, 8(r1)
/* 80021C78  90 81 00 0C */	stw r4, 0xc(r1)
/* 80021C7C  4B FF FA 61 */	bl fpcLy_RootLayer__Fv
/* 80021C80  7C 7E 1B 78 */	mr r30, r3
/* 80021C84  3C 60 80 26 */	lis r3, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@ha
/* 80021C88  3B E3 6A B0 */	addi r31, r3, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@l
/* 80021C8C  48 00 00 24 */	b lbl_80021CB0
lbl_80021C90:
/* 80021C90  38 7E 00 10 */	addi r3, r30, 0x10
/* 80021C94  7F E4 FB 78 */	mr r4, r31
/* 80021C98  38 A1 00 08 */	addi r5, r1, 8
/* 80021C9C  48 24 49 19 */	bl cTrIt_Judge__FP21node_lists_tree_classPFP10node_classPv_PvPv
/* 80021CA0  28 03 00 00 */	cmplwi r3, 0
/* 80021CA4  41 82 00 08 */	beq lbl_80021CAC
/* 80021CA8  48 00 00 14 */	b lbl_80021CBC
lbl_80021CAC:
/* 80021CAC  83 DE 00 08 */	lwz r30, 8(r30)
lbl_80021CB0:
/* 80021CB0  28 1E 00 00 */	cmplwi r30, 0
/* 80021CB4  40 82 FF DC */	bne lbl_80021C90
/* 80021CB8  38 60 00 00 */	li r3, 0
lbl_80021CBC:
/* 80021CBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80021CC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80021CC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021CC8  7C 08 03 A6 */	mtlr r0
/* 80021CCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80021CD0  4E 80 00 20 */	blr 
