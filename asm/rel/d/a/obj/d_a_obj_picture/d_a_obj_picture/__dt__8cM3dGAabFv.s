lbl_80CAD4E0:
/* 80CAD4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD4E4  7C 08 02 A6 */	mflr r0
/* 80CAD4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD4F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAD4F4  41 82 00 1C */	beq lbl_80CAD510
/* 80CAD4F8  3C A0 80 CB */	lis r5, __vt__8cM3dGAab@ha /* 0x80CAF234@ha */
/* 80CAD4FC  38 05 F2 34 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CAF234@l */
/* 80CAD500  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CAD504  7C 80 07 35 */	extsh. r0, r4
/* 80CAD508  40 81 00 08 */	ble lbl_80CAD510
/* 80CAD50C  4B 62 18 31 */	bl __dl__FPv
lbl_80CAD510:
/* 80CAD510  7F E3 FB 78 */	mr r3, r31
/* 80CAD514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD51C  7C 08 03 A6 */	mtlr r0
/* 80CAD520  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD524  4E 80 00 20 */	blr 
