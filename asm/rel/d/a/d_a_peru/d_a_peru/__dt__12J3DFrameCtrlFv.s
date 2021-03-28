lbl_80D4B940:
/* 80D4B940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B944  7C 08 02 A6 */	mflr r0
/* 80D4B948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B94C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B950  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B954  41 82 00 1C */	beq lbl_80D4B970
/* 80D4B958  3C A0 80 D5 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D4B95C  38 05 C6 90 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D4B960  90 1F 00 00 */	stw r0, 0(r31)
/* 80D4B964  7C 80 07 35 */	extsh. r0, r4
/* 80D4B968  40 81 00 08 */	ble lbl_80D4B970
/* 80D4B96C  4B 58 33 D0 */	b __dl__FPv
lbl_80D4B970:
/* 80D4B970  7F E3 FB 78 */	mr r3, r31
/* 80D4B974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B97C  7C 08 03 A6 */	mtlr r0
/* 80D4B980  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B984  4E 80 00 20 */	blr 
