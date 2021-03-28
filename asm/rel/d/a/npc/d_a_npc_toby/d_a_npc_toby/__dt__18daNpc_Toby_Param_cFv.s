lbl_80B24978:
/* 80B24978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2497C  7C 08 02 A6 */	mflr r0
/* 80B24980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B24984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B24988  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2498C  41 82 00 1C */	beq lbl_80B249A8
/* 80B24990  3C A0 80 B2 */	lis r5, __vt__18daNpc_Toby_Param_c@ha
/* 80B24994  38 05 58 2C */	addi r0, r5, __vt__18daNpc_Toby_Param_c@l
/* 80B24998  90 1F 00 00 */	stw r0, 0(r31)
/* 80B2499C  7C 80 07 35 */	extsh. r0, r4
/* 80B249A0  40 81 00 08 */	ble lbl_80B249A8
/* 80B249A4  4B 7A A3 98 */	b __dl__FPv
lbl_80B249A8:
/* 80B249A8  7F E3 FB 78 */	mr r3, r31
/* 80B249AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B249B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B249B4  7C 08 03 A6 */	mtlr r0
/* 80B249B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B249BC  4E 80 00 20 */	blr 
