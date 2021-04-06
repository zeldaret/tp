lbl_80020A04:
/* 80020A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020A08  7C 08 02 A6 */	mflr r0
/* 80020A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020A10  90 61 00 08 */	stw r3, 8(r1)
/* 80020A14  90 81 00 0C */	stw r4, 0xc(r1)
/* 80020A18  3C 60 80 3A */	lis r3, g_fpcCtTg_Queue@ha /* 0x803A3990@ha */
/* 80020A1C  38 63 39 90 */	addi r3, r3, g_fpcCtTg_Queue@l /* 0x803A3990@l */
/* 80020A20  3C 80 80 26 */	lis r4, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@ha /* 0x80266AB0@ha */
/* 80020A24  38 84 6A B0 */	addi r4, r4, cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter@l /* 0x80266AB0@l */
/* 80020A28  38 A1 00 08 */	addi r5, r1, 8
/* 80020A2C  48 24 56 6D */	bl cLsIt_Judge__FP15node_list_classPFP10node_classPv_PvPv
/* 80020A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020A34  7C 08 03 A6 */	mtlr r0
/* 80020A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80020A3C  4E 80 00 20 */	blr 
