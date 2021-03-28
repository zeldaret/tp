lbl_80A3C124:
/* 80A3C124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C128  7C 08 02 A6 */	mflr r0
/* 80A3C12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C134  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C138  41 82 00 1C */	beq lbl_80A3C154
/* 80A3C13C  3C A0 80 A4 */	lis r5, __vt__16daNpc_Kn_Param_c@ha
/* 80A3C140  38 05 32 A8 */	addi r0, r5, __vt__16daNpc_Kn_Param_c@l
/* 80A3C144  90 1F 00 00 */	stw r0, 0(r31)
/* 80A3C148  7C 80 07 35 */	extsh. r0, r4
/* 80A3C14C  40 81 00 08 */	ble lbl_80A3C154
/* 80A3C150  4B 89 2B EC */	b __dl__FPv
lbl_80A3C154:
/* 80A3C154  7F E3 FB 78 */	mr r3, r31
/* 80A3C158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C160  7C 08 03 A6 */	mtlr r0
/* 80A3C164  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C168  4E 80 00 20 */	blr 
