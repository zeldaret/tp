lbl_80021B88:
/* 80021B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021B8C  7C 08 02 A6 */	mflr r0
/* 80021B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021B94  90 81 00 08 */	stw r4, 8(r1)
/* 80021B98  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80021B9C  3C 80 80 26 */	lis r4, cTgIt_MethodCall__FP16create_tag_classP13method_filter@ha /* 0x80266A7C@ha */
/* 80021BA0  38 84 6A 7C */	addi r4, r4, cTgIt_MethodCall__FP16create_tag_classP13method_filter@l /* 0x80266A7C@l */
/* 80021BA4  38 A1 00 08 */	addi r5, r1, 8
/* 80021BA8  38 63 00 10 */	addi r3, r3, 0x10
/* 80021BAC  48 24 49 95 */	bl cTrIt_Method__FP21node_lists_tree_classPFP10node_classPv_iPv
/* 80021BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021BB4  7C 08 03 A6 */	mtlr r0
/* 80021BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80021BBC  4E 80 00 20 */	blr 
