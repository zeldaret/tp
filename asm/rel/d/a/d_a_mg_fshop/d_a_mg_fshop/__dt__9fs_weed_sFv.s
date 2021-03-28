lbl_8086FED8:
/* 8086FED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086FEDC  7C 08 02 A6 */	mflr r0
/* 8086FEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086FEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086FEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8086FEEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8086FEF0  7C 9F 23 78 */	mr r31, r4
/* 8086FEF4  41 82 00 28 */	beq lbl_8086FF1C
/* 8086FEF8  3C 80 80 87 */	lis r4, __dt__4cXyzFv@ha
/* 8086FEFC  38 84 CC 30 */	addi r4, r4, __dt__4cXyzFv@l
/* 8086FF00  38 A0 00 0C */	li r5, 0xc
/* 8086FF04  38 C0 00 0F */	li r6, 0xf
/* 8086FF08  4B AF 1D E0 */	b __destroy_arr
/* 8086FF0C  7F E0 07 35 */	extsh. r0, r31
/* 8086FF10  40 81 00 0C */	ble lbl_8086FF1C
/* 8086FF14  7F C3 F3 78 */	mr r3, r30
/* 8086FF18  4B A5 EE 24 */	b __dl__FPv
lbl_8086FF1C:
/* 8086FF1C  7F C3 F3 78 */	mr r3, r30
/* 8086FF20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086FF24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8086FF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086FF2C  7C 08 03 A6 */	mtlr r0
/* 8086FF30  38 21 00 10 */	addi r1, r1, 0x10
/* 8086FF34  4E 80 00 20 */	blr 
