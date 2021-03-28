lbl_80CAFAE8:
/* 80CAFAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAFAEC  7C 08 02 A6 */	mflr r0
/* 80CAFAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAFAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAFAF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAFAFC  41 82 00 30 */	beq lbl_80CAFB2C
/* 80CAFB00  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha
/* 80CAFB04  38 03 0B B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CAFB08  90 1F 00 00 */	stw r0, 0(r31)
/* 80CAFB0C  41 82 00 10 */	beq lbl_80CAFB1C
/* 80CAFB10  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha
/* 80CAFB14  38 03 0B A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CAFB18  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CAFB1C:
/* 80CAFB1C  7C 80 07 35 */	extsh. r0, r4
/* 80CAFB20  40 81 00 0C */	ble lbl_80CAFB2C
/* 80CAFB24  7F E3 FB 78 */	mr r3, r31
/* 80CAFB28  4B 61 F2 14 */	b __dl__FPv
lbl_80CAFB2C:
/* 80CAFB2C  7F E3 FB 78 */	mr r3, r31
/* 80CAFB30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAFB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAFB38  7C 08 03 A6 */	mtlr r0
/* 80CAFB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAFB40  4E 80 00 20 */	blr 
