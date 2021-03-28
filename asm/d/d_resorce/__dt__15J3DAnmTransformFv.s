lbl_8003B93C:
/* 8003B93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B940  7C 08 02 A6 */	mflr r0
/* 8003B944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B94C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B950  41 82 00 30 */	beq lbl_8003B980
/* 8003B954  3C 60 80 3A */	lis r3, __vt__15J3DAnmTransform@ha
/* 8003B958  38 03 7C 48 */	addi r0, r3, __vt__15J3DAnmTransform@l
/* 8003B95C  90 1F 00 00 */	stw r0, 0(r31)
/* 8003B960  41 82 00 10 */	beq lbl_8003B970
/* 8003B964  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8003B968  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8003B96C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8003B970:
/* 8003B970  7C 80 07 35 */	extsh. r0, r4
/* 8003B974  40 81 00 0C */	ble lbl_8003B980
/* 8003B978  7F E3 FB 78 */	mr r3, r31
/* 8003B97C  48 29 33 C1 */	bl __dl__FPv
lbl_8003B980:
/* 8003B980  7F E3 FB 78 */	mr r3, r31
/* 8003B984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B98C  7C 08 03 A6 */	mtlr r0
/* 8003B990  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B994  4E 80 00 20 */	blr 
