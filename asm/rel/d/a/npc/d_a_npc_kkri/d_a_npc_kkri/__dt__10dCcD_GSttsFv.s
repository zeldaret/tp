lbl_80552CBC:
/* 80552CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552CC0  7C 08 02 A6 */	mflr r0
/* 80552CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552CCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80552CD0  41 82 00 30 */	beq lbl_80552D00
/* 80552CD4  3C 60 80 55 */	lis r3, __vt__10dCcD_GStts@ha
/* 80552CD8  38 03 3D B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80552CDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80552CE0  41 82 00 10 */	beq lbl_80552CF0
/* 80552CE4  3C 60 80 55 */	lis r3, __vt__10cCcD_GStts@ha
/* 80552CE8  38 03 3D A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80552CEC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80552CF0:
/* 80552CF0  7C 80 07 35 */	extsh. r0, r4
/* 80552CF4  40 81 00 0C */	ble lbl_80552D00
/* 80552CF8  7F E3 FB 78 */	mr r3, r31
/* 80552CFC  4B D7 C0 40 */	b __dl__FPv
lbl_80552D00:
/* 80552D00  7F E3 FB 78 */	mr r3, r31
/* 80552D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552D0C  7C 08 03 A6 */	mtlr r0
/* 80552D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80552D14  4E 80 00 20 */	blr 
