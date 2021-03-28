lbl_80C94398:
/* 80C94398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9439C  7C 08 02 A6 */	mflr r0
/* 80C943A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C943A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C943A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C943AC  41 82 00 1C */	beq lbl_80C943C8
/* 80C943B0  3C A0 80 C9 */	lis r5, __vt__8cM3dGLin@ha
/* 80C943B4  38 05 5C A0 */	addi r0, r5, __vt__8cM3dGLin@l
/* 80C943B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C943BC  7C 80 07 35 */	extsh. r0, r4
/* 80C943C0  40 81 00 08 */	ble lbl_80C943C8
/* 80C943C4  4B 63 A9 78 */	b __dl__FPv
lbl_80C943C8:
/* 80C943C8  7F E3 FB 78 */	mr r3, r31
/* 80C943CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C943D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C943D4  7C 08 03 A6 */	mtlr r0
/* 80C943D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C943DC  4E 80 00 20 */	blr 
