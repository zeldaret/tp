lbl_805F3CE0:
/* 805F3CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3CE4  7C 08 02 A6 */	mflr r0
/* 805F3CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3CF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F3CF4  41 82 00 30 */	beq lbl_805F3D24
/* 805F3CF8  3C 60 80 5F */	lis r3, __vt__10dCcD_GStts@ha
/* 805F3CFC  38 03 47 1C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805F3D00  90 1F 00 00 */	stw r0, 0(r31)
/* 805F3D04  41 82 00 10 */	beq lbl_805F3D14
/* 805F3D08  3C 60 80 5F */	lis r3, __vt__10cCcD_GStts@ha
/* 805F3D0C  38 03 47 10 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805F3D10  90 1F 00 00 */	stw r0, 0(r31)
lbl_805F3D14:
/* 805F3D14  7C 80 07 35 */	extsh. r0, r4
/* 805F3D18  40 81 00 0C */	ble lbl_805F3D24
/* 805F3D1C  7F E3 FB 78 */	mr r3, r31
/* 805F3D20  4B CD B0 1C */	b __dl__FPv
lbl_805F3D24:
/* 805F3D24  7F E3 FB 78 */	mr r3, r31
/* 805F3D28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3D30  7C 08 03 A6 */	mtlr r0
/* 805F3D34  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3D38  4E 80 00 20 */	blr 
