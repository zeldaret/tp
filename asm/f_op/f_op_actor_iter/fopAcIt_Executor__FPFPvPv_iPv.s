lbl_800197BC:
/* 800197BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800197C0  7C 08 02 A6 */	mflr r0
/* 800197C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800197C8  90 61 00 08 */	stw r3, 8(r1)
/* 800197CC  90 81 00 0C */	stw r4, 0xc(r1)
/* 800197D0  3C 60 80 3A */	lis r3, g_fopAcTg_Queue@ha
/* 800197D4  38 63 35 E0 */	addi r3, r3, g_fopAcTg_Queue@l
/* 800197D8  3C 80 80 26 */	lis r4, cTgIt_MethodCall__FP16create_tag_classP13method_filter@ha
/* 800197DC  38 84 6A 7C */	addi r4, r4, cTgIt_MethodCall__FP16create_tag_classP13method_filter@l
/* 800197E0  38 A1 00 08 */	addi r5, r1, 8
/* 800197E4  48 24 C8 7D */	bl cLsIt_Method__FP15node_list_classPFP10node_classPv_iPv
/* 800197E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800197EC  7C 08 03 A6 */	mtlr r0
/* 800197F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800197F4  4E 80 00 20 */	blr 
