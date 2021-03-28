lbl_80AF267C:
/* 80AF267C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF2680  7C 08 02 A6 */	mflr r0
/* 80AF2684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF2688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF268C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF2690  41 82 00 1C */	beq lbl_80AF26AC
/* 80AF2694  3C A0 80 AF */	lis r5, __vt__22daNpc_SoldierA_Param_c@ha
/* 80AF2698  38 05 2A D8 */	addi r0, r5, __vt__22daNpc_SoldierA_Param_c@l
/* 80AF269C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF26A0  7C 80 07 35 */	extsh. r0, r4
/* 80AF26A4  40 81 00 08 */	ble lbl_80AF26AC
/* 80AF26A8  4B 7D C6 94 */	b __dl__FPv
lbl_80AF26AC:
/* 80AF26AC  7F E3 FB 78 */	mr r3, r31
/* 80AF26B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF26B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF26B8  7C 08 03 A6 */	mtlr r0
/* 80AF26BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF26C0  4E 80 00 20 */	blr 
