lbl_8079CD08:
/* 8079CD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CD0C  7C 08 02 A6 */	mflr r0
/* 8079CD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CD14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CD18  7C 7F 1B 79 */	or. r31, r3, r3
/* 8079CD1C  41 82 00 30 */	beq lbl_8079CD4C
/* 8079CD20  3C 60 80 7A */	lis r3, __vt__10dCcD_GStts@ha
/* 8079CD24  38 03 DA D4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8079CD28  90 1F 00 00 */	stw r0, 0(r31)
/* 8079CD2C  41 82 00 10 */	beq lbl_8079CD3C
/* 8079CD30  3C 60 80 7A */	lis r3, __vt__10cCcD_GStts@ha
/* 8079CD34  38 03 DA C8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8079CD38  90 1F 00 00 */	stw r0, 0(r31)
lbl_8079CD3C:
/* 8079CD3C  7C 80 07 35 */	extsh. r0, r4
/* 8079CD40  40 81 00 0C */	ble lbl_8079CD4C
/* 8079CD44  7F E3 FB 78 */	mr r3, r31
/* 8079CD48  4B B3 1F F4 */	b __dl__FPv
lbl_8079CD4C:
/* 8079CD4C  7F E3 FB 78 */	mr r3, r31
/* 8079CD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CD58  7C 08 03 A6 */	mtlr r0
/* 8079CD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CD60  4E 80 00 20 */	blr 
