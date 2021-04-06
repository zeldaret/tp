lbl_80D679C8:
/* 80D679C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D679CC  7C 08 02 A6 */	mflr r0
/* 80D679D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D679D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D679D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D679DC  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 80D679E0  80 63 00 04 */	lwz r3, 4(r3)
/* 80D679E4  3C A0 80 D6 */	lis r5, lit_4139@ha /* 0x80D67BF8@ha */
/* 80D679E8  C0 25 7B F8 */	lfs f1, lit_4139@l(r5)  /* 0x80D67BF8@l */
/* 80D679EC  FC 40 08 90 */	fmr f2, f1
/* 80D679F0  4B 59 14 E5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80D679F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D679F8  7C 08 03 A6 */	mtlr r0
/* 80D679FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67A00  4E 80 00 20 */	blr 
