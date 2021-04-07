lbl_80D62978:
/* 80D62978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6297C  7C 08 02 A6 */	mflr r0
/* 80D62980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D62984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D62988  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D6298C  41 82 00 1C */	beq lbl_80D629A8
/* 80D62990  3C A0 80 D6 */	lis r5, __vt__8cM3dGLin@ha /* 0x80D62CE8@ha */
/* 80D62994  38 05 2C E8 */	addi r0, r5, __vt__8cM3dGLin@l /* 0x80D62CE8@l */
/* 80D62998  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D6299C  7C 80 07 35 */	extsh. r0, r4
/* 80D629A0  40 81 00 08 */	ble lbl_80D629A8
/* 80D629A4  4B 56 C3 99 */	bl __dl__FPv
lbl_80D629A8:
/* 80D629A8  7F E3 FB 78 */	mr r3, r31
/* 80D629AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D629B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D629B4  7C 08 03 A6 */	mtlr r0
/* 80D629B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D629BC  4E 80 00 20 */	blr 
