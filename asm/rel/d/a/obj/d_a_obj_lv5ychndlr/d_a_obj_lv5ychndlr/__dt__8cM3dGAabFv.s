lbl_80C6E560:
/* 80C6E560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E564  7C 08 02 A6 */	mflr r0
/* 80C6E568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E570  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6E574  41 82 00 1C */	beq lbl_80C6E590
/* 80C6E578  3C A0 80 C7 */	lis r5, __vt__8cM3dGAab@ha
/* 80C6E57C  38 05 EB 2C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C6E580  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C6E584  7C 80 07 35 */	extsh. r0, r4
/* 80C6E588  40 81 00 08 */	ble lbl_80C6E590
/* 80C6E58C  4B 66 07 B0 */	b __dl__FPv
lbl_80C6E590:
/* 80C6E590  7F E3 FB 78 */	mr r3, r31
/* 80C6E594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E59C  7C 08 03 A6 */	mtlr r0
/* 80C6E5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E5A4  4E 80 00 20 */	blr 
