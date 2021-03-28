lbl_8046AF00:
/* 8046AF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AF04  7C 08 02 A6 */	mflr r0
/* 8046AF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AF0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046AF10  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046AF14  41 82 00 30 */	beq lbl_8046AF44
/* 8046AF18  3C 60 80 47 */	lis r3, __vt__10dCcD_GStts@ha
/* 8046AF1C  38 03 B2 7C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8046AF20  90 1F 00 00 */	stw r0, 0(r31)
/* 8046AF24  41 82 00 10 */	beq lbl_8046AF34
/* 8046AF28  3C 60 80 47 */	lis r3, __vt__10cCcD_GStts@ha
/* 8046AF2C  38 03 B2 70 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8046AF30  90 1F 00 00 */	stw r0, 0(r31)
lbl_8046AF34:
/* 8046AF34  7C 80 07 35 */	extsh. r0, r4
/* 8046AF38  40 81 00 0C */	ble lbl_8046AF44
/* 8046AF3C  7F E3 FB 78 */	mr r3, r31
/* 8046AF40  4B E6 3D FC */	b __dl__FPv
lbl_8046AF44:
/* 8046AF44  7F E3 FB 78 */	mr r3, r31
/* 8046AF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AF50  7C 08 03 A6 */	mtlr r0
/* 8046AF54  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AF58  4E 80 00 20 */	blr 
