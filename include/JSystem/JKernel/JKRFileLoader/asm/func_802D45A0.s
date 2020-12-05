/* __sinit_JKRFileLoader_cpp __sinit_JKRFileLoader_cpp */
/* missing reference */
/* 802D45A0 002D14E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D45A4 002D14E4  7C 08 02 A6 */	mflr r0
/* 802D45A8 002D14E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D45AC 002D14EC  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D45B0 002D14F0  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D45B4 002D14F4  48 00 79 61 */	bl initiate__10JSUPtrListFv
/* 802D45B8 002D14F8  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D45BC 002D14FC  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D45C0 002D1500  3C 80 80 2D */	lis r4, JSUList_NS_dtor_X6_@ha
/* 802D45C4 002D1504  38 84 45 E4 */	addi r4, r4, JSUList_NS_dtor_X6_@l
/* 802D45C8 002D1508  3C A0 80 43 */	lis r5, lbl_80434348@ha
/* 802D45CC 002D150C  38 A5 43 48 */	addi r5, r5, lbl_80434348@l
/* 802D45D0 002D1510  48 08 D6 55 */	bl func_80361C24
/* 802D45D4 002D1514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D45D8 002D1518  7C 08 03 A6 */	mtlr r0
/* 802D45DC 002D151C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D45E0 002D1520  4E 80 00 20 */	blr
