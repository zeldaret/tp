lbl_80B5D6C8:
/* 80B5D6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5D6CC  7C 08 02 A6 */	mflr r0
/* 80B5D6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5D6D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5D6D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5D6DC  41 82 00 1C */	beq lbl_80B5D6F8
/* 80B5D6E0  3C A0 80 B6 */	lis r5, __vt__17daNpc_ykM_Param_c@ha
/* 80B5D6E4  38 05 ED 14 */	addi r0, r5, __vt__17daNpc_ykM_Param_c@l
/* 80B5D6E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80B5D6EC  7C 80 07 35 */	extsh. r0, r4
/* 80B5D6F0  40 81 00 08 */	ble lbl_80B5D6F8
/* 80B5D6F4  4B 77 16 48 */	b __dl__FPv
lbl_80B5D6F8:
/* 80B5D6F8  7F E3 FB 78 */	mr r3, r31
/* 80B5D6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5D700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5D704  7C 08 03 A6 */	mtlr r0
/* 80B5D708  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5D70C  4E 80 00 20 */	blr 
