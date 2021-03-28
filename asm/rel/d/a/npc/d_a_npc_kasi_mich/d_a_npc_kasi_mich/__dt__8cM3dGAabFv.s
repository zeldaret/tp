lbl_80A263CC:
/* 80A263CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A263D0  7C 08 02 A6 */	mflr r0
/* 80A263D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A263D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A263DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A263E0  41 82 00 1C */	beq lbl_80A263FC
/* 80A263E4  3C A0 80 A3 */	lis r5, __vt__8cM3dGAab@ha
/* 80A263E8  38 05 A7 58 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A263EC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A263F0  7C 80 07 35 */	extsh. r0, r4
/* 80A263F4  40 81 00 08 */	ble lbl_80A263FC
/* 80A263F8  4B 8A 89 44 */	b __dl__FPv
lbl_80A263FC:
/* 80A263FC  7F E3 FB 78 */	mr r3, r31
/* 80A26400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A26404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26408  7C 08 03 A6 */	mtlr r0
/* 80A2640C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26410  4E 80 00 20 */	blr 
