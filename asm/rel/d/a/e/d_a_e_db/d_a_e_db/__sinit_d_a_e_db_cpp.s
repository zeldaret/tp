lbl_806A1420:
/* 806A1420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1424  7C 08 02 A6 */	mflr r0
/* 806A1428  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A142C  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A1430  38 63 1D A8 */	addi r3, r3, l_HIO@l
/* 806A1434  4B FF 96 B9 */	bl __ct__12daE_DB_HIO_cFv
/* 806A1438  3C 80 80 6A */	lis r4, __dt__12daE_DB_HIO_cFv@ha
/* 806A143C  38 84 13 D8 */	addi r4, r4, __dt__12daE_DB_HIO_cFv@l
/* 806A1440  3C A0 80 6A */	lis r5, lit_3918@ha
/* 806A1444  38 A5 1D 9C */	addi r5, r5, lit_3918@l
/* 806A1448  4B FF 96 31 */	bl __register_global_object
/* 806A144C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1450  7C 08 03 A6 */	mtlr r0
/* 806A1454  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1458  4E 80 00 20 */	blr 
