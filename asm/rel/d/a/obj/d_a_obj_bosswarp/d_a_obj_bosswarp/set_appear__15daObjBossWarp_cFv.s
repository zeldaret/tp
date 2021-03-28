lbl_80579D98:
/* 80579D98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80579D9C  7C 08 02 A6 */	mflr r0
/* 80579DA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80579DA4  80 A3 05 7C */	lwz r5, 0x57c(r3)
/* 80579DA8  A8 05 00 08 */	lha r0, 8(r5)
/* 80579DAC  3C 80 80 58 */	lis r4, lit_3918@ha
/* 80579DB0  C8 24 B4 58 */	lfd f1, lit_3918@l(r4)
/* 80579DB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80579DB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80579DBC  3C 80 43 30 */	lis r4, 0x4330
/* 80579DC0  90 81 00 08 */	stw r4, 8(r1)
/* 80579DC4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80579DC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80579DCC  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80579DD0  80 A3 05 78 */	lwz r5, 0x578(r3)
/* 80579DD4  A8 05 00 08 */	lha r0, 8(r5)
/* 80579DD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80579DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579DE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80579DE4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80579DE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80579DEC  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80579DF0  38 80 00 00 */	li r4, 0
/* 80579DF4  4B FF FE 3D */	bl appear__15daObjBossWarp_cFi
/* 80579DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80579DFC  7C 08 03 A6 */	mtlr r0
/* 80579E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80579E04  4E 80 00 20 */	blr 
