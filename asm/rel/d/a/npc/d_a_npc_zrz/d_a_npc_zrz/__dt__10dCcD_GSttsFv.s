lbl_80B9ACE4:
/* 80B9ACE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9ACE8  7C 08 02 A6 */	mflr r0
/* 80B9ACEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9ACF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9ACF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9ACF8  41 82 00 30 */	beq lbl_80B9AD28
/* 80B9ACFC  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B9B7F4@ha */
/* 80B9AD00  38 03 B7 F4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B9B7F4@l */
/* 80B9AD04  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9AD08  41 82 00 10 */	beq lbl_80B9AD18
/* 80B9AD0C  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B9B7E8@ha */
/* 80B9AD10  38 03 B7 E8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B9B7E8@l */
/* 80B9AD14  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B9AD18:
/* 80B9AD18  7C 80 07 35 */	extsh. r0, r4
/* 80B9AD1C  40 81 00 0C */	ble lbl_80B9AD28
/* 80B9AD20  7F E3 FB 78 */	mr r3, r31
/* 80B9AD24  4B 73 40 19 */	bl __dl__FPv
lbl_80B9AD28:
/* 80B9AD28  7F E3 FB 78 */	mr r3, r31
/* 80B9AD2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9AD30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9AD34  7C 08 03 A6 */	mtlr r0
/* 80B9AD38  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9AD3C  4E 80 00 20 */	blr 
