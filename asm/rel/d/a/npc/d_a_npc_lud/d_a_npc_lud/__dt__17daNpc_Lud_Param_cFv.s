lbl_80A6FD10:
/* 80A6FD10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6FD14  7C 08 02 A6 */	mflr r0
/* 80A6FD18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6FD1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6FD20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6FD24  41 82 00 1C */	beq lbl_80A6FD40
/* 80A6FD28  3C A0 80 A7 */	lis r5, __vt__17daNpc_Lud_Param_c@ha /* 0x80A70B40@ha */
/* 80A6FD2C  38 05 0B 40 */	addi r0, r5, __vt__17daNpc_Lud_Param_c@l /* 0x80A70B40@l */
/* 80A6FD30  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6FD34  7C 80 07 35 */	extsh. r0, r4
/* 80A6FD38  40 81 00 08 */	ble lbl_80A6FD40
/* 80A6FD3C  4B 85 F0 01 */	bl __dl__FPv
lbl_80A6FD40:
/* 80A6FD40  7F E3 FB 78 */	mr r3, r31
/* 80A6FD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6FD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6FD4C  7C 08 03 A6 */	mtlr r0
/* 80A6FD50  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6FD54  4E 80 00 20 */	blr 
