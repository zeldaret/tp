lbl_80D1E908:
/* 80D1E908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1E90C  7C 08 02 A6 */	mflr r0
/* 80D1E910  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1E914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1E918  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1E91C  41 82 00 1C */	beq lbl_80D1E938
/* 80D1E920  3C A0 80 D2 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D1EFCC@ha */
/* 80D1E924  38 05 EF CC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D1EFCC@l */
/* 80D1E928  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1E92C  7C 80 07 35 */	extsh. r0, r4
/* 80D1E930  40 81 00 08 */	ble lbl_80D1E938
/* 80D1E934  4B 5B 04 09 */	bl __dl__FPv
lbl_80D1E938:
/* 80D1E938  7F E3 FB 78 */	mr r3, r31
/* 80D1E93C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1E940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1E944  7C 08 03 A6 */	mtlr r0
/* 80D1E948  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1E94C  4E 80 00 20 */	blr 
