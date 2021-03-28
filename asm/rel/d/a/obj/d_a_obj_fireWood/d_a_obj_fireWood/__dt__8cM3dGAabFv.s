lbl_80BE7958:
/* 80BE7958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE795C  7C 08 02 A6 */	mflr r0
/* 80BE7960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE7968  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE796C  41 82 00 1C */	beq lbl_80BE7988
/* 80BE7970  3C A0 80 BF */	lis r5, __vt__8cM3dGAab@ha
/* 80BE7974  38 05 81 08 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BE7978  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BE797C  7C 80 07 35 */	extsh. r0, r4
/* 80BE7980  40 81 00 08 */	ble lbl_80BE7988
/* 80BE7984  4B 6E 73 B8 */	b __dl__FPv
lbl_80BE7988:
/* 80BE7988  7F E3 FB 78 */	mr r3, r31
/* 80BE798C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE7990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7994  7C 08 03 A6 */	mtlr r0
/* 80BE7998  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE799C  4E 80 00 20 */	blr 
