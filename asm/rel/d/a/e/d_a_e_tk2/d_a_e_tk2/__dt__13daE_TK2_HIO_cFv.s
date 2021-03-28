lbl_807BBD00:
/* 807BBD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBD04  7C 08 02 A6 */	mflr r0
/* 807BBD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBD0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BBD10  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BBD14  41 82 00 1C */	beq lbl_807BBD30
/* 807BBD18  3C A0 80 7C */	lis r5, __vt__13daE_TK2_HIO_c@ha
/* 807BBD1C  38 05 BF 28 */	addi r0, r5, __vt__13daE_TK2_HIO_c@l
/* 807BBD20  90 1F 00 00 */	stw r0, 0(r31)
/* 807BBD24  7C 80 07 35 */	extsh. r0, r4
/* 807BBD28  40 81 00 08 */	ble lbl_807BBD30
/* 807BBD2C  4B B1 30 10 */	b __dl__FPv
lbl_807BBD30:
/* 807BBD30  7F E3 FB 78 */	mr r3, r31
/* 807BBD34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BBD38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBD3C  7C 08 03 A6 */	mtlr r0
/* 807BBD40  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBD44  4E 80 00 20 */	blr 
