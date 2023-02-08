lbl_80AE6B5C:
/* 80AE6B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE6B60  7C 08 02 A6 */	mflr r0
/* 80AE6B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE6B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE6B6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE6B70  41 82 00 1C */	beq lbl_80AE6B8C
/* 80AE6B74  3C A0 80 AE */	lis r5, __vt__17daNpc_Sha_Param_c@ha /* 0x80AE7824@ha */
/* 80AE6B78  38 05 78 24 */	addi r0, r5, __vt__17daNpc_Sha_Param_c@l /* 0x80AE7824@l */
/* 80AE6B7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE6B80  7C 80 07 35 */	extsh. r0, r4
/* 80AE6B84  40 81 00 08 */	ble lbl_80AE6B8C
/* 80AE6B88  4B 7E 81 B5 */	bl __dl__FPv
lbl_80AE6B8C:
/* 80AE6B8C  7F E3 FB 78 */	mr r3, r31
/* 80AE6B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE6B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE6B98  7C 08 03 A6 */	mtlr r0
/* 80AE6B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE6BA0  4E 80 00 20 */	blr 
