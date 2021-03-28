lbl_80B74BF0:
/* 80B74BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B74BF4  7C 08 02 A6 */	mflr r0
/* 80B74BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B74BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B74C00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B74C04  41 82 00 1C */	beq lbl_80B74C20
/* 80B74C08  3C A0 80 B7 */	lis r5, __vt__19daNpc_ZelRo_Param_c@ha
/* 80B74C0C  38 05 50 18 */	addi r0, r5, __vt__19daNpc_ZelRo_Param_c@l
/* 80B74C10  90 1F 00 00 */	stw r0, 0(r31)
/* 80B74C14  7C 80 07 35 */	extsh. r0, r4
/* 80B74C18  40 81 00 08 */	ble lbl_80B74C20
/* 80B74C1C  4B 75 A1 20 */	b __dl__FPv
lbl_80B74C20:
/* 80B74C20  7F E3 FB 78 */	mr r3, r31
/* 80B74C24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B74C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B74C2C  7C 08 03 A6 */	mtlr r0
/* 80B74C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B74C34  4E 80 00 20 */	blr 
