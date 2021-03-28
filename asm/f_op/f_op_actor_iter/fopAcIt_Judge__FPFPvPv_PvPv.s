lbl_800197F8:
/* 800197F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800197FC  7C 08 02 A6 */	mflr r0
/* 80019800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019804  90 61 00 08 */	stw r3, 8(r1)
/* 80019808  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001980C  3C 60 80 3A */	lis r3, g_fopAcTg_Queue@ha
/* 80019810  38 63 35 E0 */	addi r3, r3, g_fopAcTg_Queue@l
/* 80019814  3C 80 80 26 */	lis r4, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@ha
/* 80019818  38 84 6A B0 */	addi r4, r4, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@l
/* 8001981C  38 A1 00 08 */	addi r5, r1, 8
/* 80019820  48 24 C8 79 */	bl cLsIt_Judge__FP15node_list_classPFP10node_classPv_PvPv
/* 80019824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019828  7C 08 03 A6 */	mtlr r0
/* 8001982C  38 21 00 10 */	addi r1, r1, 0x10
/* 80019830  4E 80 00 20 */	blr 
