lbl_80AEA344:
/* 80AEA344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA348  7C 08 02 A6 */	mflr r0
/* 80AEA34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEA354  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEA358  41 82 00 1C */	beq lbl_80AEA374
/* 80AEA35C  3C A0 80 AF */	lis r5, __vt__17daNpcShoe_Param_c@ha /* 0x80AEA724@ha */
/* 80AEA360  38 05 A7 24 */	addi r0, r5, __vt__17daNpcShoe_Param_c@l /* 0x80AEA724@l */
/* 80AEA364  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEA368  7C 80 07 35 */	extsh. r0, r4
/* 80AEA36C  40 81 00 08 */	ble lbl_80AEA374
/* 80AEA370  4B 7E 49 CD */	bl __dl__FPv
lbl_80AEA374:
/* 80AEA374  7F E3 FB 78 */	mr r3, r31
/* 80AEA378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEA37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA380  7C 08 03 A6 */	mtlr r0
/* 80AEA384  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA388  4E 80 00 20 */	blr 
