lbl_80B6E93C:
/* 80B6E93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E940  7C 08 02 A6 */	mflr r0
/* 80B6E944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E94C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E950  41 82 00 1C */	beq lbl_80B6E96C
/* 80B6E954  3C A0 80 B7 */	lis r5, __vt__18daNpc_Zant_Param_c@ha /* 0x80B6ED10@ha */
/* 80B6E958  38 05 ED 10 */	addi r0, r5, __vt__18daNpc_Zant_Param_c@l /* 0x80B6ED10@l */
/* 80B6E95C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6E960  7C 80 07 35 */	extsh. r0, r4
/* 80B6E964  40 81 00 08 */	ble lbl_80B6E96C
/* 80B6E968  4B 76 03 D5 */	bl __dl__FPv
lbl_80B6E96C:
/* 80B6E96C  7F E3 FB 78 */	mr r3, r31
/* 80B6E970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E978  7C 08 03 A6 */	mtlr r0
/* 80B6E97C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E980  4E 80 00 20 */	blr 
