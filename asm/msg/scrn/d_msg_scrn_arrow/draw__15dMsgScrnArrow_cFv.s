lbl_8023BDC0:
/* 8023BDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023BDC4  7C 08 02 A6 */	mflr r0
/* 8023BDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023BDCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8023BDD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8023BDD4  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8023BDD8  80 63 00 04 */	lwz r3, 4(r3)
/* 8023BDDC  C0 22 B1 98 */	lfs f1, lit_3662(r2)
/* 8023BDE0  FC 40 08 90 */	fmr f2, f1
/* 8023BDE4  48 0B D0 F1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8023BDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023BDEC  7C 08 03 A6 */	mtlr r0
/* 8023BDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8023BDF4  4E 80 00 20 */	blr 
