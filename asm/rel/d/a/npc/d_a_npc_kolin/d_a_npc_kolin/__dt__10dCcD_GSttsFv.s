lbl_80559CD0:
/* 80559CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559CD4  7C 08 02 A6 */	mflr r0
/* 80559CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80559CE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80559CE4  41 82 00 30 */	beq lbl_80559D14
/* 80559CE8  3C 60 80 56 */	lis r3, __vt__10dCcD_GStts@ha
/* 80559CEC  38 03 B2 A0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80559CF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80559CF4  41 82 00 10 */	beq lbl_80559D04
/* 80559CF8  3C 60 80 56 */	lis r3, __vt__10cCcD_GStts@ha
/* 80559CFC  38 03 B2 94 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80559D00  90 1F 00 00 */	stw r0, 0(r31)
lbl_80559D04:
/* 80559D04  7C 80 07 35 */	extsh. r0, r4
/* 80559D08  40 81 00 0C */	ble lbl_80559D14
/* 80559D0C  7F E3 FB 78 */	mr r3, r31
/* 80559D10  4B D7 50 2C */	b __dl__FPv
lbl_80559D14:
/* 80559D14  7F E3 FB 78 */	mr r3, r31
/* 80559D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559D20  7C 08 03 A6 */	mtlr r0
/* 80559D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80559D28  4E 80 00 20 */	blr 
