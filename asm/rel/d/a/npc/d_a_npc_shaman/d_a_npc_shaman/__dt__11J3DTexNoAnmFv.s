lbl_80AE34B8:
/* 80AE34B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE34BC  7C 08 02 A6 */	mflr r0
/* 80AE34C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE34C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE34C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE34CC  41 82 00 1C */	beq lbl_80AE34E8
/* 80AE34D0  3C A0 80 AE */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80AE76C4@ha */
/* 80AE34D4  38 05 76 C4 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80AE76C4@l */
/* 80AE34D8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE34DC  7C 80 07 35 */	extsh. r0, r4
/* 80AE34E0  40 81 00 08 */	ble lbl_80AE34E8
/* 80AE34E4  4B 7E B8 59 */	bl __dl__FPv
lbl_80AE34E8:
/* 80AE34E8  7F E3 FB 78 */	mr r3, r31
/* 80AE34EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE34F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE34F4  7C 08 03 A6 */	mtlr r0
/* 80AE34F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE34FC  4E 80 00 20 */	blr 
