lbl_809C9D2C:
/* 809C9D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C9D30  7C 08 02 A6 */	mflr r0
/* 809C9D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9D3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C9D40  41 82 00 1C */	beq lbl_809C9D5C
/* 809C9D44  3C A0 80 9D */	lis r5, __vt__17daNpc_grA_Param_c@ha
/* 809C9D48  38 05 B2 E4 */	addi r0, r5, __vt__17daNpc_grA_Param_c@l
/* 809C9D4C  90 1F 00 00 */	stw r0, 0(r31)
/* 809C9D50  7C 80 07 35 */	extsh. r0, r4
/* 809C9D54  40 81 00 08 */	ble lbl_809C9D5C
/* 809C9D58  4B 90 4F E4 */	b __dl__FPv
lbl_809C9D5C:
/* 809C9D5C  7F E3 FB 78 */	mr r3, r31
/* 809C9D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9D68  7C 08 03 A6 */	mtlr r0
/* 809C9D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9D70  4E 80 00 20 */	blr 
