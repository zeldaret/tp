lbl_80A053C8:
/* 80A053C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A053CC  7C 08 02 A6 */	mflr r0
/* 80A053D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A053D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A053D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A053DC  41 82 00 1C */	beq lbl_80A053F8
/* 80A053E0  3C A0 80 A0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A053E4  38 05 77 BC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A053E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A053EC  7C 80 07 35 */	extsh. r0, r4
/* 80A053F0  40 81 00 08 */	ble lbl_80A053F8
/* 80A053F4  4B 8C 99 48 */	b __dl__FPv
lbl_80A053F8:
/* 80A053F8  7F E3 FB 78 */	mr r3, r31
/* 80A053FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05404  7C 08 03 A6 */	mtlr r0
/* 80A05408  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0540C  4E 80 00 20 */	blr 
