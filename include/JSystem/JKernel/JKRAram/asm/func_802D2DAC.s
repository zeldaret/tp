/* __sinit_JKRAram_cpp __sinit_JKRAram_cpp */
/* missing reference */
/* 802D2DAC 002CFCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2DB0 002CFCF0  7C 08 02 A6 */	mflr r0
/* 802D2DB4 002CFCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2DB8 002CFCF8  3C 60 80 43 */	lis r3, sAramCommandList__7JKRAram@ha
/* 802D2DBC 002CFCFC  38 63 42 DC */	addi r3, r3, sAramCommandList__7JKRAram@l
/* 802D2DC0 002CFD00  48 00 91 55 */	bl initiate__10JSUPtrListFv
/* 802D2DC4 002CFD04  3C 60 80 43 */	lis r3, sAramCommandList__7JKRAram@ha
/* 802D2DC8 002CFD08  38 63 42 DC */	addi r3, r3, sAramCommandList__7JKRAram@l
/* 802D2DCC 002CFD0C  3C 80 80 2D */	lis r4, JSUList_NS_dtor_X4_@ha
/* 802D2DD0 002CFD10  38 84 2D F0 */	addi r4, r4, JSUList_NS_dtor_X4_@l
/* 802D2DD4 002CFD14  3C A0 80 43 */	lis r5, lbl_804342D0@ha
/* 802D2DD8 002CFD18  38 A5 42 D0 */	addi r5, r5, lbl_804342D0@l
/* 802D2DDC 002CFD1C  48 08 EE 49 */	bl func_80361C24
/* 802D2DE0 002CFD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2DE4 002CFD24  7C 08 03 A6 */	mtlr r0
/* 802D2DE8 002CFD28  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2DEC 002CFD2C  4E 80 00 20 */	blr
