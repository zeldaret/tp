lbl_801F6B0C:
/* 801F6B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F6B10  7C 08 02 A6 */	mflr r0
/* 801F6B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F6B18  80 63 00 04 */	lwz r3, 4(r3)
/* 801F6B1C  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F6B20  FC 40 08 90 */	fmr f2, f1
/* 801F6B24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F6B28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F6B2C  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 801F6B30  48 10 23 A5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801F6B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F6B38  7C 08 03 A6 */	mtlr r0
/* 801F6B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F6B40  4E 80 00 20 */	blr 
