lbl_80AEF758:
/* 80AEF758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEF75C  7C 08 02 A6 */	mflr r0
/* 80AEF760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEF764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEF768  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEF76C  41 82 00 1C */	beq lbl_80AEF788
/* 80AEF770  3C A0 80 AF */	lis r5, __vt__8cM3dGAab@ha
/* 80AEF774  38 05 2A C0 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AEF778  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AEF77C  7C 80 07 35 */	extsh. r0, r4
/* 80AEF780  40 81 00 08 */	ble lbl_80AEF788
/* 80AEF784  4B 7D F5 B8 */	b __dl__FPv
lbl_80AEF788:
/* 80AEF788  7F E3 FB 78 */	mr r3, r31
/* 80AEF78C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEF790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEF794  7C 08 03 A6 */	mtlr r0
/* 80AEF798  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEF79C  4E 80 00 20 */	blr 
