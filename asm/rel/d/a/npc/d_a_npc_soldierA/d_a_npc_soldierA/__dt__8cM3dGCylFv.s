lbl_80AEF710:
/* 80AEF710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEF714  7C 08 02 A6 */	mflr r0
/* 80AEF718  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEF71C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEF720  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEF724  41 82 00 1C */	beq lbl_80AEF740
/* 80AEF728  3C A0 80 AF */	lis r5, __vt__8cM3dGCyl@ha
/* 80AEF72C  38 05 2A B4 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AEF730  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AEF734  7C 80 07 35 */	extsh. r0, r4
/* 80AEF738  40 81 00 08 */	ble lbl_80AEF740
/* 80AEF73C  4B 7D F6 00 */	b __dl__FPv
lbl_80AEF740:
/* 80AEF740  7F E3 FB 78 */	mr r3, r31
/* 80AEF744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEF748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEF74C  7C 08 03 A6 */	mtlr r0
/* 80AEF750  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEF754  4E 80 00 20 */	blr 
