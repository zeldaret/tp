lbl_80192354:
/* 80192354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192358  7C 08 02 A6 */	mflr r0
/* 8019235C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192360  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80192364  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80192368  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8019236C  80 63 00 04 */	lwz r3, 4(r3)
/* 80192370  C0 22 9F D8 */	lfs f1, lit_3741(r2)
/* 80192374  FC 40 08 90 */	fmr f2, f1
/* 80192378  48 16 6B 5D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8019237C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192380  7C 08 03 A6 */	mtlr r0
/* 80192384  38 21 00 10 */	addi r1, r1, 0x10
/* 80192388  4E 80 00 20 */	blr 
