lbl_80CAFAA0:
/* 80CAFAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAFAA4  7C 08 02 A6 */	mflr r0
/* 80CAFAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAFAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAFAB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAFAB4  41 82 00 1C */	beq lbl_80CAFAD0
/* 80CAFAB8  3C A0 80 CB */	lis r5, __vt__8cM3dGAab@ha
/* 80CAFABC  38 05 0B CC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CAFAC0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CAFAC4  7C 80 07 35 */	extsh. r0, r4
/* 80CAFAC8  40 81 00 08 */	ble lbl_80CAFAD0
/* 80CAFACC  4B 61 F2 70 */	b __dl__FPv
lbl_80CAFAD0:
/* 80CAFAD0  7F E3 FB 78 */	mr r3, r31
/* 80CAFAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAFAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAFADC  7C 08 03 A6 */	mtlr r0
/* 80CAFAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAFAE4  4E 80 00 20 */	blr 
