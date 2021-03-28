lbl_801935D0:
/* 801935D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801935D4  7C 08 02 A6 */	mflr r0
/* 801935D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801935DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801935E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801935E4  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 801935E8  80 63 00 04 */	lwz r3, 4(r3)
/* 801935EC  C0 22 A0 00 */	lfs f1, lit_3792(r2)
/* 801935F0  FC 40 08 90 */	fmr f2, f1
/* 801935F4  48 16 58 E1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801935F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801935FC  7C 08 03 A6 */	mtlr r0
/* 80193600  38 21 00 10 */	addi r1, r1, 0x10
/* 80193604  4E 80 00 20 */	blr 
