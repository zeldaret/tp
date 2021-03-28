lbl_80A24F98:
/* 80A24F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24F9C  7C 08 02 A6 */	mflr r0
/* 80A24FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A24FA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A24FAC  41 82 00 1C */	beq lbl_80A24FC8
/* 80A24FB0  3C A0 80 A2 */	lis r5, __vt__16daNpcF_SPCurve_c@ha
/* 80A24FB4  38 05 5F D4 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l
/* 80A24FB8  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80A24FBC  7C 80 07 35 */	extsh. r0, r4
/* 80A24FC0  40 81 00 08 */	ble lbl_80A24FC8
/* 80A24FC4  4B 8A 9D 78 */	b __dl__FPv
lbl_80A24FC8:
/* 80A24FC8  7F E3 FB 78 */	mr r3, r31
/* 80A24FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A24FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A24FD4  7C 08 03 A6 */	mtlr r0
/* 80A24FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24FDC  4E 80 00 20 */	blr 
