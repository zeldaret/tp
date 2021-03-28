lbl_80A25798:
/* 80A25798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2579C  7C 08 02 A6 */	mflr r0
/* 80A257A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A257A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A257A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A257AC  41 82 00 1C */	beq lbl_80A257C8
/* 80A257B0  3C A0 80 A2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A257B4  38 05 5F 8C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A257B8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A257BC  7C 80 07 35 */	extsh. r0, r4
/* 80A257C0  40 81 00 08 */	ble lbl_80A257C8
/* 80A257C4  4B 8A 95 78 */	b __dl__FPv
lbl_80A257C8:
/* 80A257C8  7F E3 FB 78 */	mr r3, r31
/* 80A257CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A257D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A257D4  7C 08 03 A6 */	mtlr r0
/* 80A257D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A257DC  4E 80 00 20 */	blr 
