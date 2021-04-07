lbl_80541D20:
/* 80541D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80541D24  7C 08 02 A6 */	mflr r0
/* 80541D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80541D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80541D30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80541D34  41 82 00 1C */	beq lbl_80541D50
/* 80541D38  3C A0 80 54 */	lis r5, __vt__25daNpc_FairySeirei_Param_c@ha /* 0x805420D4@ha */
/* 80541D3C  38 05 20 D4 */	addi r0, r5, __vt__25daNpc_FairySeirei_Param_c@l /* 0x805420D4@l */
/* 80541D40  90 1F 00 00 */	stw r0, 0(r31)
/* 80541D44  7C 80 07 35 */	extsh. r0, r4
/* 80541D48  40 81 00 08 */	ble lbl_80541D50
/* 80541D4C  4B D8 CF F1 */	bl __dl__FPv
lbl_80541D50:
/* 80541D50  7F E3 FB 78 */	mr r3, r31
/* 80541D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80541D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80541D5C  7C 08 03 A6 */	mtlr r0
/* 80541D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80541D64  4E 80 00 20 */	blr 
