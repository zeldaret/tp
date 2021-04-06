lbl_80AE1F70:
/* 80AE1F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1F74  7C 08 02 A6 */	mflr r0
/* 80AE1F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1F80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE1F84  41 82 00 1C */	beq lbl_80AE1FA0
/* 80AE1F88  3C A0 80 AE */	lis r5, __vt__17daNpcShad_Param_c@ha /* 0x80AE2CA4@ha */
/* 80AE1F8C  38 05 2C A4 */	addi r0, r5, __vt__17daNpcShad_Param_c@l /* 0x80AE2CA4@l */
/* 80AE1F90  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE1F94  7C 80 07 35 */	extsh. r0, r4
/* 80AE1F98  40 81 00 08 */	ble lbl_80AE1FA0
/* 80AE1F9C  4B 7E CD A1 */	bl __dl__FPv
lbl_80AE1FA0:
/* 80AE1FA0  7F E3 FB 78 */	mr r3, r31
/* 80AE1FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1FAC  7C 08 03 A6 */	mtlr r0
/* 80AE1FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1FB4  4E 80 00 20 */	blr 
