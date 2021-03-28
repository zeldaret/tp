lbl_80C7296C:
/* 80C7296C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72970  7C 08 02 A6 */	mflr r0
/* 80C72974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C72978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7297C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C72980  41 82 00 1C */	beq lbl_80C7299C
/* 80C72984  3C A0 80 C7 */	lis r5, __vt__8cM3dGAab@ha
/* 80C72988  38 05 32 64 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C7298C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C72990  7C 80 07 35 */	extsh. r0, r4
/* 80C72994  40 81 00 08 */	ble lbl_80C7299C
/* 80C72998  4B 65 C3 A4 */	b __dl__FPv
lbl_80C7299C:
/* 80C7299C  7F E3 FB 78 */	mr r3, r31
/* 80C729A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C729A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C729A8  7C 08 03 A6 */	mtlr r0
/* 80C729AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C729B0  4E 80 00 20 */	blr 
