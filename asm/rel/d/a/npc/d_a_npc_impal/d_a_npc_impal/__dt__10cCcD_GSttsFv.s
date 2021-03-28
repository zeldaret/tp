lbl_80A0C1BC:
/* 80A0C1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C1C0  7C 08 02 A6 */	mflr r0
/* 80A0C1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C1C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0C1CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0C1D0  41 82 00 1C */	beq lbl_80A0C1EC
/* 80A0C1D4  3C A0 80 A1 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A0C1D8  38 05 C8 8C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A0C1DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A0C1E0  7C 80 07 35 */	extsh. r0, r4
/* 80A0C1E4  40 81 00 08 */	ble lbl_80A0C1EC
/* 80A0C1E8  4B 8C 2B 54 */	b __dl__FPv
lbl_80A0C1EC:
/* 80A0C1EC  7F E3 FB 78 */	mr r3, r31
/* 80A0C1F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0C1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C1F8  7C 08 03 A6 */	mtlr r0
/* 80A0C1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C200  4E 80 00 20 */	blr 
