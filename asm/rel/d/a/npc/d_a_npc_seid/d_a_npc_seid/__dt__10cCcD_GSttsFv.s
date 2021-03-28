lbl_80ACA5CC:
/* 80ACA5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA5D0  7C 08 02 A6 */	mflr r0
/* 80ACA5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACA5DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACA5E0  41 82 00 1C */	beq lbl_80ACA5FC
/* 80ACA5E4  3C A0 80 AD */	lis r5, __vt__10cCcD_GStts@ha
/* 80ACA5E8  38 05 B5 AC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80ACA5EC  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACA5F0  7C 80 07 35 */	extsh. r0, r4
/* 80ACA5F4  40 81 00 08 */	ble lbl_80ACA5FC
/* 80ACA5F8  4B 80 47 44 */	b __dl__FPv
lbl_80ACA5FC:
/* 80ACA5FC  7F E3 FB 78 */	mr r3, r31
/* 80ACA600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACA604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA608  7C 08 03 A6 */	mtlr r0
/* 80ACA60C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA610  4E 80 00 20 */	blr 
