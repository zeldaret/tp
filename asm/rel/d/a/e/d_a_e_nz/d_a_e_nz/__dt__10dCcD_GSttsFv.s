lbl_8072BB04:
/* 8072BB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072BB08  7C 08 02 A6 */	mflr r0
/* 8072BB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072BB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072BB14  7C 7F 1B 79 */	or. r31, r3, r3
/* 8072BB18  41 82 00 30 */	beq lbl_8072BB48
/* 8072BB1C  3C 60 80 73 */	lis r3, __vt__10dCcD_GStts@ha
/* 8072BB20  38 03 C3 8C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8072BB24  90 1F 00 00 */	stw r0, 0(r31)
/* 8072BB28  41 82 00 10 */	beq lbl_8072BB38
/* 8072BB2C  3C 60 80 73 */	lis r3, __vt__10cCcD_GStts@ha
/* 8072BB30  38 03 C3 80 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8072BB34  90 1F 00 00 */	stw r0, 0(r31)
lbl_8072BB38:
/* 8072BB38  7C 80 07 35 */	extsh. r0, r4
/* 8072BB3C  40 81 00 0C */	ble lbl_8072BB48
/* 8072BB40  7F E3 FB 78 */	mr r3, r31
/* 8072BB44  4B BA 31 F8 */	b __dl__FPv
lbl_8072BB48:
/* 8072BB48  7F E3 FB 78 */	mr r3, r31
/* 8072BB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072BB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BB54  7C 08 03 A6 */	mtlr r0
/* 8072BB58  38 21 00 10 */	addi r1, r1, 0x10
/* 8072BB5C  4E 80 00 20 */	blr 
