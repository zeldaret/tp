lbl_80ABF974:
/* 80ABF974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF978  7C 08 02 A6 */	mflr r0
/* 80ABF97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF984  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABF988  41 82 00 1C */	beq lbl_80ABF9A4
/* 80ABF98C  3C A0 80 AC */	lis r5, __vt__19daNpcRafrel_Param_c@ha /* 0x80AC0300@ha */
/* 80ABF990  38 05 03 00 */	addi r0, r5, __vt__19daNpcRafrel_Param_c@l /* 0x80AC0300@l */
/* 80ABF994  90 1F 00 00 */	stw r0, 0(r31)
/* 80ABF998  7C 80 07 35 */	extsh. r0, r4
/* 80ABF99C  40 81 00 08 */	ble lbl_80ABF9A4
/* 80ABF9A0  4B 80 F3 9D */	bl __dl__FPv
lbl_80ABF9A4:
/* 80ABF9A4  7F E3 FB 78 */	mr r3, r31
/* 80ABF9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF9B0  7C 08 03 A6 */	mtlr r0
/* 80ABF9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF9B8  4E 80 00 20 */	blr 
