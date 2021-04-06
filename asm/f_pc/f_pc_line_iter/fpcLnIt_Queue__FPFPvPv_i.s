lbl_80023728:
/* 80023728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002372C  7C 08 02 A6 */	mflr r0
/* 80023730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023734  90 61 00 08 */	stw r3, 8(r1)
/* 80023738  38 00 00 00 */	li r0, 0
/* 8002373C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80023740  38 6D 80 58 */	la r3, g_fpcLn_Queue(r13) /* 804505D8-_SDA_BASE_ */
/* 80023744  3C 80 80 02 */	lis r4, fpcLnIt_MethodCall__FP16create_tag_classP13method_filter@ha /* 0x800236C0@ha */
/* 80023748  38 84 36 C0 */	addi r4, r4, fpcLnIt_MethodCall__FP16create_tag_classP13method_filter@l /* 0x800236C0@l */
/* 8002374C  38 A1 00 08 */	addi r5, r1, 8
/* 80023750  48 24 2D F1 */	bl cTrIt_Method__FP21node_lists_tree_classPFP10node_classPv_iPv
/* 80023754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023758  7C 08 03 A6 */	mtlr r0
/* 8002375C  38 21 00 10 */	addi r1, r1, 0x10
/* 80023760  4E 80 00 20 */	blr 
