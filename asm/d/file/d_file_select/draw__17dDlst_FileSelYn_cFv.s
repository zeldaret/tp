lbl_8018E0C0:
/* 8018E0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E0C4  7C 08 02 A6 */	mflr r0
/* 8018E0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E0CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8018E0D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8018E0D4  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8018E0D8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018E0DC  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018E0E0  FC 40 08 90 */	fmr f2, f1
/* 8018E0E4  48 16 AD F1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8018E0E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E0EC  7C 08 03 A6 */	mtlr r0
/* 8018E0F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E0F4  4E 80 00 20 */	blr 
