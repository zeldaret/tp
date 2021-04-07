lbl_80B49644:
/* 80B49644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B49648  7C 08 02 A6 */	mflr r0
/* 80B4964C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B49650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B49654  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B49658  41 82 00 1C */	beq lbl_80B49674
/* 80B4965C  3C A0 80 B5 */	lis r5, __vt__19daNpc_yamiS_Param_c@ha /* 0x80B49AC0@ha */
/* 80B49660  38 05 9A C0 */	addi r0, r5, __vt__19daNpc_yamiS_Param_c@l /* 0x80B49AC0@l */
/* 80B49664  90 1F 00 00 */	stw r0, 0(r31)
/* 80B49668  7C 80 07 35 */	extsh. r0, r4
/* 80B4966C  40 81 00 08 */	ble lbl_80B49674
/* 80B49670  4B 78 56 CD */	bl __dl__FPv
lbl_80B49674:
/* 80B49674  7F E3 FB 78 */	mr r3, r31
/* 80B49678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4967C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B49680  7C 08 03 A6 */	mtlr r0
/* 80B49684  38 21 00 10 */	addi r1, r1, 0x10
/* 80B49688  4E 80 00 20 */	blr 
