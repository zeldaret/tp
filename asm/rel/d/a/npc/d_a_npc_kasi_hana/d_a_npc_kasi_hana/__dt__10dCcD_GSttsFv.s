lbl_80A20D84:
/* 80A20D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20D88  7C 08 02 A6 */	mflr r0
/* 80A20D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20D94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A20D98  41 82 00 30 */	beq lbl_80A20DC8
/* 80A20D9C  3C 60 80 A2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A20DA0  38 03 17 94 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A20DA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A20DA8  41 82 00 10 */	beq lbl_80A20DB8
/* 80A20DAC  3C 60 80 A2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A20DB0  38 03 17 88 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A20DB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A20DB8:
/* 80A20DB8  7C 80 07 35 */	extsh. r0, r4
/* 80A20DBC  40 81 00 0C */	ble lbl_80A20DC8
/* 80A20DC0  7F E3 FB 78 */	mr r3, r31
/* 80A20DC4  4B 8A DF 78 */	b __dl__FPv
lbl_80A20DC8:
/* 80A20DC8  7F E3 FB 78 */	mr r3, r31
/* 80A20DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20DD4  7C 08 03 A6 */	mtlr r0
/* 80A20DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20DDC  4E 80 00 20 */	blr 
