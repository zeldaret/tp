lbl_80A454A4:
/* 80A454A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A454A8  7C 08 02 A6 */	mflr r0
/* 80A454AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A454B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A454B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A454B8  41 82 00 1C */	beq lbl_80A454D4
/* 80A454BC  3C A0 80 A4 */	lis r5, __vt__17daNpc_Knj_Param_c@ha
/* 80A454C0  38 05 58 7C */	addi r0, r5, __vt__17daNpc_Knj_Param_c@l
/* 80A454C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A454C8  7C 80 07 35 */	extsh. r0, r4
/* 80A454CC  40 81 00 08 */	ble lbl_80A454D4
/* 80A454D0  4B 88 98 6C */	b __dl__FPv
lbl_80A454D4:
/* 80A454D4  7F E3 FB 78 */	mr r3, r31
/* 80A454D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A454DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A454E0  7C 08 03 A6 */	mtlr r0
/* 80A454E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A454E8  4E 80 00 20 */	blr 
