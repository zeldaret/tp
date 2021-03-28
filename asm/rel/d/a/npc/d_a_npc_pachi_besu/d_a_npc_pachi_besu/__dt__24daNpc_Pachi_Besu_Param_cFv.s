lbl_80A96A00:
/* 80A96A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A96A04  7C 08 02 A6 */	mflr r0
/* 80A96A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A96A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A96A10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A96A14  41 82 00 1C */	beq lbl_80A96A30
/* 80A96A18  3C A0 80 A9 */	lis r5, __vt__24daNpc_Pachi_Besu_Param_c@ha
/* 80A96A1C  38 05 7A B0 */	addi r0, r5, __vt__24daNpc_Pachi_Besu_Param_c@l
/* 80A96A20  90 1F 00 00 */	stw r0, 0(r31)
/* 80A96A24  7C 80 07 35 */	extsh. r0, r4
/* 80A96A28  40 81 00 08 */	ble lbl_80A96A30
/* 80A96A2C  4B 83 83 10 */	b __dl__FPv
lbl_80A96A30:
/* 80A96A30  7F E3 FB 78 */	mr r3, r31
/* 80A96A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A96A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A96A3C  7C 08 03 A6 */	mtlr r0
/* 80A96A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80A96A44  4E 80 00 20 */	blr 
