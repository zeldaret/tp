lbl_80A883C8:
/* 80A883C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A883CC  7C 08 02 A6 */	mflr r0
/* 80A883D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A883D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A883D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A883DC  41 82 00 1C */	beq lbl_80A883F8
/* 80A883E0  3C A0 80 A9 */	lis r5, __vt__19daNpc_myna2_Param_c@ha
/* 80A883E4  38 05 8A E0 */	addi r0, r5, __vt__19daNpc_myna2_Param_c@l
/* 80A883E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A883EC  7C 80 07 35 */	extsh. r0, r4
/* 80A883F0  40 81 00 08 */	ble lbl_80A883F8
/* 80A883F4  4B 84 69 48 */	b __dl__FPv
lbl_80A883F8:
/* 80A883F8  7F E3 FB 78 */	mr r3, r31
/* 80A883FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A88400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A88404  7C 08 03 A6 */	mtlr r0
/* 80A88408  38 21 00 10 */	addi r1, r1, 0x10
/* 80A8840C  4E 80 00 20 */	blr 
