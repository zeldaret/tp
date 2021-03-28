lbl_807C188C:
/* 807C188C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1890  7C 08 02 A6 */	mflr r0
/* 807C1894  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C189C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C18A0  41 82 00 30 */	beq lbl_807C18D0
/* 807C18A4  3C 60 80 7C */	lis r3, __vt__10dCcD_GStts@ha
/* 807C18A8  38 03 23 14 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 807C18AC  90 1F 00 00 */	stw r0, 0(r31)
/* 807C18B0  41 82 00 10 */	beq lbl_807C18C0
/* 807C18B4  3C 60 80 7C */	lis r3, __vt__10cCcD_GStts@ha
/* 807C18B8  38 03 23 08 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 807C18BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_807C18C0:
/* 807C18C0  7C 80 07 35 */	extsh. r0, r4
/* 807C18C4  40 81 00 0C */	ble lbl_807C18D0
/* 807C18C8  7F E3 FB 78 */	mr r3, r31
/* 807C18CC  4B B0 D4 70 */	b __dl__FPv
lbl_807C18D0:
/* 807C18D0  7F E3 FB 78 */	mr r3, r31
/* 807C18D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C18D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C18DC  7C 08 03 A6 */	mtlr r0
/* 807C18E0  38 21 00 10 */	addi r1, r1, 0x10
/* 807C18E4  4E 80 00 20 */	blr 
