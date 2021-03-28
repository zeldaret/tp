lbl_80B67B6C:
/* 80B67B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B67B70  7C 08 02 A6 */	mflr r0
/* 80B67B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B67B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B67B7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B67B80  41 82 00 1C */	beq lbl_80B67B9C
/* 80B67B84  3C A0 80 B7 */	lis r5, __vt__17daNpc_ykW_Param_c@ha
/* 80B67B88  38 05 8D 54 */	addi r0, r5, __vt__17daNpc_ykW_Param_c@l
/* 80B67B8C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B67B90  7C 80 07 35 */	extsh. r0, r4
/* 80B67B94  40 81 00 08 */	ble lbl_80B67B9C
/* 80B67B98  4B 76 71 A4 */	b __dl__FPv
lbl_80B67B9C:
/* 80B67B9C  7F E3 FB 78 */	mr r3, r31
/* 80B67BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B67BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B67BA8  7C 08 03 A6 */	mtlr r0
/* 80B67BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B67BB0  4E 80 00 20 */	blr 
