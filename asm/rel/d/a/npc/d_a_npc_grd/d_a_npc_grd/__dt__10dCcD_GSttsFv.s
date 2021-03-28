lbl_809D3790:
/* 809D3790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3794  7C 08 02 A6 */	mflr r0
/* 809D3798  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D379C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D37A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D37A4  41 82 00 30 */	beq lbl_809D37D4
/* 809D37A8  3C 60 80 9D */	lis r3, __vt__10dCcD_GStts@ha
/* 809D37AC  38 03 3E 54 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809D37B0  90 1F 00 00 */	stw r0, 0(r31)
/* 809D37B4  41 82 00 10 */	beq lbl_809D37C4
/* 809D37B8  3C 60 80 9D */	lis r3, __vt__10cCcD_GStts@ha
/* 809D37BC  38 03 3E 48 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809D37C0  90 1F 00 00 */	stw r0, 0(r31)
lbl_809D37C4:
/* 809D37C4  7C 80 07 35 */	extsh. r0, r4
/* 809D37C8  40 81 00 0C */	ble lbl_809D37D4
/* 809D37CC  7F E3 FB 78 */	mr r3, r31
/* 809D37D0  4B 8F B5 6C */	b __dl__FPv
lbl_809D37D4:
/* 809D37D4  7F E3 FB 78 */	mr r3, r31
/* 809D37D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D37DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D37E0  7C 08 03 A6 */	mtlr r0
/* 809D37E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D37E8  4E 80 00 20 */	blr 
