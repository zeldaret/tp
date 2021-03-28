lbl_80BE93A8:
/* 80BE93A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE93AC  7C 08 02 A6 */	mflr r0
/* 80BE93B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE93B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE93B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE93BC  41 82 00 30 */	beq lbl_80BE93EC
/* 80BE93C0  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha
/* 80BE93C4  38 03 9B F0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BE93C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE93CC  41 82 00 10 */	beq lbl_80BE93DC
/* 80BE93D0  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha
/* 80BE93D4  38 03 9B E4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BE93D8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BE93DC:
/* 80BE93DC  7C 80 07 35 */	extsh. r0, r4
/* 80BE93E0  40 81 00 0C */	ble lbl_80BE93EC
/* 80BE93E4  7F E3 FB 78 */	mr r3, r31
/* 80BE93E8  4B 6E 59 54 */	b __dl__FPv
lbl_80BE93EC:
/* 80BE93EC  7F E3 FB 78 */	mr r3, r31
/* 80BE93F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE93F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE93F8  7C 08 03 A6 */	mtlr r0
/* 80BE93FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9400  4E 80 00 20 */	blr 
