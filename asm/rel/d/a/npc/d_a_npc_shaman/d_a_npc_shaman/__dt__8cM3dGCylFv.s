lbl_80AE6A8C:
/* 80AE6A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE6A90  7C 08 02 A6 */	mflr r0
/* 80AE6A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE6A98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE6A9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE6AA0  41 82 00 1C */	beq lbl_80AE6ABC
/* 80AE6AA4  3C A0 80 AE */	lis r5, __vt__8cM3dGCyl@ha
/* 80AE6AA8  38 05 77 54 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AE6AAC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AE6AB0  7C 80 07 35 */	extsh. r0, r4
/* 80AE6AB4  40 81 00 08 */	ble lbl_80AE6ABC
/* 80AE6AB8  4B 7E 82 84 */	b __dl__FPv
lbl_80AE6ABC:
/* 80AE6ABC  7F E3 FB 78 */	mr r3, r31
/* 80AE6AC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE6AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE6AC8  7C 08 03 A6 */	mtlr r0
/* 80AE6ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE6AD0  4E 80 00 20 */	blr 
