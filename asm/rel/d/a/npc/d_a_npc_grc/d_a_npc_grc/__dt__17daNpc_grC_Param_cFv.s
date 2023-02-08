lbl_809CF4B0:
/* 809CF4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CF4B4  7C 08 02 A6 */	mflr r0
/* 809CF4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CF4BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CF4C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CF4C4  41 82 00 1C */	beq lbl_809CF4E0
/* 809CF4C8  3C A0 80 9D */	lis r5, __vt__17daNpc_grC_Param_c@ha /* 0x809CFB50@ha */
/* 809CF4CC  38 05 FB 50 */	addi r0, r5, __vt__17daNpc_grC_Param_c@l /* 0x809CFB50@l */
/* 809CF4D0  90 1F 00 00 */	stw r0, 0(r31)
/* 809CF4D4  7C 80 07 35 */	extsh. r0, r4
/* 809CF4D8  40 81 00 08 */	ble lbl_809CF4E0
/* 809CF4DC  4B 8F F8 61 */	bl __dl__FPv
lbl_809CF4E0:
/* 809CF4E0  7F E3 FB 78 */	mr r3, r31
/* 809CF4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CF4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF4EC  7C 08 03 A6 */	mtlr r0
/* 809CF4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF4F4  4E 80 00 20 */	blr 
