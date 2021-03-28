lbl_80BA182C:
/* 80BA182C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1830  7C 08 02 A6 */	mflr r0
/* 80BA1834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA183C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA1840  7C 7E 1B 78 */	mr r30, r3
/* 80BA1844  7C 9F 23 78 */	mr r31, r4
/* 80BA1848  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80BA184C  4B 4A 70 20 */	b eventUpdate__17dEvLib_callback_cFv
/* 80BA1850  7F C3 F3 78 */	mr r3, r30
/* 80BA1854  48 00 00 35 */	bl moveShutter__14daAmiShutter_cFv
/* 80BA1858  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80BA185C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA1860  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA1864  7F C3 F3 78 */	mr r3, r30
/* 80BA1868  4B FF FC F5 */	bl setBaseMtx__14daAmiShutter_cFv
/* 80BA186C  38 60 00 01 */	li r3, 1
/* 80BA1870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1874  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA1878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA187C  7C 08 03 A6 */	mtlr r0
/* 80BA1880  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1884  4E 80 00 20 */	blr 
