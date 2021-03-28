lbl_8046FE68:
/* 8046FE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FE6C  7C 08 02 A6 */	mflr r0
/* 8046FE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FE78  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046FE7C  41 82 00 30 */	beq lbl_8046FEAC
/* 8046FE80  3C 60 80 48 */	lis r3, __vt__10dCcD_GStts@ha
/* 8046FE84  38 03 B1 78 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8046FE88  90 1F 00 00 */	stw r0, 0(r31)
/* 8046FE8C  41 82 00 10 */	beq lbl_8046FE9C
/* 8046FE90  3C 60 80 48 */	lis r3, __vt__10cCcD_GStts@ha
/* 8046FE94  38 03 B1 6C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8046FE98  90 1F 00 00 */	stw r0, 0(r31)
lbl_8046FE9C:
/* 8046FE9C  7C 80 07 35 */	extsh. r0, r4
/* 8046FEA0  40 81 00 0C */	ble lbl_8046FEAC
/* 8046FEA4  7F E3 FB 78 */	mr r3, r31
/* 8046FEA8  4B E5 EE 94 */	b __dl__FPv
lbl_8046FEAC:
/* 8046FEAC  7F E3 FB 78 */	mr r3, r31
/* 8046FEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FEB8  7C 08 03 A6 */	mtlr r0
/* 8046FEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FEC0  4E 80 00 20 */	blr 
