lbl_80B26F78:
/* 80B26F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B26F7C  7C 08 02 A6 */	mflr r0
/* 80B26F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B26F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B26F88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B26F8C  41 82 00 1C */	beq lbl_80B26FA8
/* 80B26F90  3C A0 80 B3 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B2DB94@ha */
/* 80B26F94  38 05 DB 94 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B2DB94@l */
/* 80B26F98  90 1F 00 00 */	stw r0, 0(r31)
/* 80B26F9C  7C 80 07 35 */	extsh. r0, r4
/* 80B26FA0  40 81 00 08 */	ble lbl_80B26FA8
/* 80B26FA4  4B 7A 7D 99 */	bl __dl__FPv
lbl_80B26FA8:
/* 80B26FA8  7F E3 FB 78 */	mr r3, r31
/* 80B26FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B26FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B26FB4  7C 08 03 A6 */	mtlr r0
/* 80B26FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B26FBC  4E 80 00 20 */	blr 
