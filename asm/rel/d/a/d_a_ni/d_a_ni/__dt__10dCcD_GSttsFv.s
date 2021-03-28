lbl_80950F94:
/* 80950F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80950F98  7C 08 02 A6 */	mflr r0
/* 80950F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80950FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80950FA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80950FA8  41 82 00 30 */	beq lbl_80950FD8
/* 80950FAC  3C 60 80 95 */	lis r3, __vt__10dCcD_GStts@ha
/* 80950FB0  38 03 14 E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80950FB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80950FB8  41 82 00 10 */	beq lbl_80950FC8
/* 80950FBC  3C 60 80 95 */	lis r3, __vt__10cCcD_GStts@ha
/* 80950FC0  38 03 14 DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80950FC4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80950FC8:
/* 80950FC8  7C 80 07 35 */	extsh. r0, r4
/* 80950FCC  40 81 00 0C */	ble lbl_80950FD8
/* 80950FD0  7F E3 FB 78 */	mr r3, r31
/* 80950FD4  4B 97 DD 68 */	b __dl__FPv
lbl_80950FD8:
/* 80950FD8  7F E3 FB 78 */	mr r3, r31
/* 80950FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80950FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80950FE4  7C 08 03 A6 */	mtlr r0
/* 80950FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80950FEC  4E 80 00 20 */	blr 
