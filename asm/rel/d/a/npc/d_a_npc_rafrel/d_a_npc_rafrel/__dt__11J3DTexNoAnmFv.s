lbl_80ABA26C:
/* 80ABA26C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA270  7C 08 02 A6 */	mflr r0
/* 80ABA274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABA27C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABA280  41 82 00 1C */	beq lbl_80ABA29C
/* 80ABA284  3C A0 80 AC */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80AC0228@ha */
/* 80ABA288  38 05 02 28 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80AC0228@l */
/* 80ABA28C  90 1F 00 00 */	stw r0, 0(r31)
/* 80ABA290  7C 80 07 35 */	extsh. r0, r4
/* 80ABA294  40 81 00 08 */	ble lbl_80ABA29C
/* 80ABA298  4B 81 4A A5 */	bl __dl__FPv
lbl_80ABA29C:
/* 80ABA29C  7F E3 FB 78 */	mr r3, r31
/* 80ABA2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABA2A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA2A8  7C 08 03 A6 */	mtlr r0
/* 80ABA2AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA2B0  4E 80 00 20 */	blr 
