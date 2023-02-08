lbl_80B10550:
/* 80B10550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B10554  7C 08 02 A6 */	mflr r0
/* 80B10558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1055C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B10560  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B10564  41 82 00 30 */	beq lbl_80B10594
/* 80B10568  3C 60 80 B1 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B10C9C@ha */
/* 80B1056C  38 03 0C 9C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B10C9C@l */
/* 80B10570  90 1F 00 00 */	stw r0, 0(r31)
/* 80B10574  41 82 00 10 */	beq lbl_80B10584
/* 80B10578  3C 60 80 B1 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B10C90@ha */
/* 80B1057C  38 03 0C 90 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B10C90@l */
/* 80B10580  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B10584:
/* 80B10584  7C 80 07 35 */	extsh. r0, r4
/* 80B10588  40 81 00 0C */	ble lbl_80B10594
/* 80B1058C  7F E3 FB 78 */	mr r3, r31
/* 80B10590  4B 7B E7 AD */	bl __dl__FPv
lbl_80B10594:
/* 80B10594  7F E3 FB 78 */	mr r3, r31
/* 80B10598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1059C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B105A0  7C 08 03 A6 */	mtlr r0
/* 80B105A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B105A8  4E 80 00 20 */	blr 
