lbl_80AE6AD4:
/* 80AE6AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE6AD8  7C 08 02 A6 */	mflr r0
/* 80AE6ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE6AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE6AE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE6AE8  41 82 00 1C */	beq lbl_80AE6B04
/* 80AE6AEC  3C A0 80 AE */	lis r5, __vt__8cM3dGAab@ha
/* 80AE6AF0  38 05 77 48 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AE6AF4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AE6AF8  7C 80 07 35 */	extsh. r0, r4
/* 80AE6AFC  40 81 00 08 */	ble lbl_80AE6B04
/* 80AE6B00  4B 7E 82 3C */	b __dl__FPv
lbl_80AE6B04:
/* 80AE6B04  7F E3 FB 78 */	mr r3, r31
/* 80AE6B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE6B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE6B10  7C 08 03 A6 */	mtlr r0
/* 80AE6B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE6B18  4E 80 00 20 */	blr 
