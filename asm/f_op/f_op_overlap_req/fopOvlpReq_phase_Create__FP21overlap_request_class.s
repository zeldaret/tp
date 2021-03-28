lbl_8001E904:
/* 8001E904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E908  7C 08 02 A6 */	mflr r0
/* 8001E90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E914  7C 7F 1B 78 */	mr r31, r3
/* 8001E918  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8001E91C  48 00 2D D1 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 8001E920  48 00 2D D5 */	bl fpcLy_CurrentLayer__Fv
/* 8001E924  A8 9F 00 10 */	lha r4, 0x10(r31)
/* 8001E928  38 A0 00 00 */	li r5, 0
/* 8001E92C  38 C0 00 00 */	li r6, 0
/* 8001E930  38 E0 00 00 */	li r7, 0
/* 8001E934  48 00 54 61 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
/* 8001E938  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8001E93C  38 60 00 02 */	li r3, 2
/* 8001E940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E948  7C 08 03 A6 */	mtlr r0
/* 8001E94C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E950  4E 80 00 20 */	blr 
