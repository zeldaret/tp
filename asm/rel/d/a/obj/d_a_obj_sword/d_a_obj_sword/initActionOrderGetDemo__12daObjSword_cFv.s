lbl_80CFDA8C:
/* 80CFDA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDA90  7C 08 02 A6 */	mflr r0
/* 80CFDA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDA98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFDA9C  7C 7F 1B 78 */	mr r31, r3
/* 80CFDAA0  4B 33 9F C4 */	b hide__12daItemBase_cFv
/* 80CFDAA4  7F E3 FB 78 */	mr r3, r31
/* 80CFDAA8  38 80 00 00 */	li r4, 0
/* 80CFDAAC  38 A0 00 00 */	li r5, 0
/* 80CFDAB0  4B 31 DF 20 */	b fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80CFDAB4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CFDAB8  60 00 00 08 */	ori r0, r0, 8
/* 80CFDABC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CFDAC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CFDAC4  88 9F 09 2A */	lbz r4, 0x92a(r31)
/* 80CFDAC8  38 A0 FF FF */	li r5, -1
/* 80CFDACC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CFDAD0  7C 06 07 74 */	extsb r6, r0
/* 80CFDAD4  38 E0 00 00 */	li r7, 0
/* 80CFDAD8  39 00 00 00 */	li r8, 0
/* 80CFDADC  4B 31 E1 98 */	b fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 80CFDAE0  90 7F 09 30 */	stw r3, 0x930(r31)
/* 80CFDAE4  38 00 00 01 */	li r0, 1
/* 80CFDAE8  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CFDAEC  38 60 00 01 */	li r3, 1
/* 80CFDAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFDAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDAF8  7C 08 03 A6 */	mtlr r0
/* 80CFDAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDB00  4E 80 00 20 */	blr 
