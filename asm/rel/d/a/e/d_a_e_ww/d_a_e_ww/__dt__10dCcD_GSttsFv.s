lbl_807EED18:
/* 807EED18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EED1C  7C 08 02 A6 */	mflr r0
/* 807EED20  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EED24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EED28  7C 7F 1B 79 */	or. r31, r3, r3
/* 807EED2C  41 82 00 30 */	beq lbl_807EED5C
/* 807EED30  3C 60 80 7F */	lis r3, __vt__10dCcD_GStts@ha
/* 807EED34  38 03 FA E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 807EED38  90 1F 00 00 */	stw r0, 0(r31)
/* 807EED3C  41 82 00 10 */	beq lbl_807EED4C
/* 807EED40  3C 60 80 7F */	lis r3, __vt__10cCcD_GStts@ha
/* 807EED44  38 03 FA DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 807EED48  90 1F 00 00 */	stw r0, 0(r31)
lbl_807EED4C:
/* 807EED4C  7C 80 07 35 */	extsh. r0, r4
/* 807EED50  40 81 00 0C */	ble lbl_807EED5C
/* 807EED54  7F E3 FB 78 */	mr r3, r31
/* 807EED58  4B AD FF E4 */	b __dl__FPv
lbl_807EED5C:
/* 807EED5C  7F E3 FB 78 */	mr r3, r31
/* 807EED60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EED64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EED68  7C 08 03 A6 */	mtlr r0
/* 807EED6C  38 21 00 10 */	addi r1, r1, 0x10
/* 807EED70  4E 80 00 20 */	blr 
