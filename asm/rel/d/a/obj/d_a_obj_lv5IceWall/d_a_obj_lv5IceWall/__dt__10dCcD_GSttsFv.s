lbl_80C6BB04:
/* 80C6BB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6BB08  7C 08 02 A6 */	mflr r0
/* 80C6BB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6BB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6BB14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6BB18  41 82 00 30 */	beq lbl_80C6BB48
/* 80C6BB1C  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C6BB20  38 03 C7 B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C6BB24  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6BB28  41 82 00 10 */	beq lbl_80C6BB38
/* 80C6BB2C  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C6BB30  38 03 C7 AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C6BB34  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6BB38:
/* 80C6BB38  7C 80 07 35 */	extsh. r0, r4
/* 80C6BB3C  40 81 00 0C */	ble lbl_80C6BB48
/* 80C6BB40  7F E3 FB 78 */	mr r3, r31
/* 80C6BB44  4B 66 31 F8 */	b __dl__FPv
lbl_80C6BB48:
/* 80C6BB48  7F E3 FB 78 */	mr r3, r31
/* 80C6BB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6BB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6BB54  7C 08 03 A6 */	mtlr r0
/* 80C6BB58  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6BB5C  4E 80 00 20 */	blr 
