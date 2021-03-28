lbl_8073548C:
/* 8073548C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80735490  7C 08 02 A6 */	mflr r0
/* 80735494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80735498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073549C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807354A0  41 82 00 30 */	beq lbl_807354D0
/* 807354A4  3C 60 80 73 */	lis r3, __vt__10dCcD_GStts@ha
/* 807354A8  38 03 5F 98 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 807354AC  90 1F 00 00 */	stw r0, 0(r31)
/* 807354B0  41 82 00 10 */	beq lbl_807354C0
/* 807354B4  3C 60 80 73 */	lis r3, __vt__10cCcD_GStts@ha
/* 807354B8  38 03 5F 8C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 807354BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_807354C0:
/* 807354C0  7C 80 07 35 */	extsh. r0, r4
/* 807354C4  40 81 00 0C */	ble lbl_807354D0
/* 807354C8  7F E3 FB 78 */	mr r3, r31
/* 807354CC  4B B9 98 70 */	b __dl__FPv
lbl_807354D0:
/* 807354D0  7F E3 FB 78 */	mr r3, r31
/* 807354D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807354D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807354DC  7C 08 03 A6 */	mtlr r0
/* 807354E0  38 21 00 10 */	addi r1, r1, 0x10
/* 807354E4  4E 80 00 20 */	blr 
