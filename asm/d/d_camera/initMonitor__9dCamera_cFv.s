lbl_80161D84:
/* 80161D84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80161D88  7C 08 02 A6 */	mflr r0
/* 80161D8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80161D90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80161D94  7C 7F 1B 78 */	mr r31, r3
/* 80161D98  80 A3 01 80 */	lwz r5, 0x180(r3)
/* 80161D9C  28 05 00 00 */	cmplwi r5, 0
/* 80161DA0  41 82 00 2C */	beq lbl_80161DCC
/* 80161DA4  38 61 00 08 */	addi r3, r1, 8
/* 80161DA8  7F E4 FB 78 */	mr r4, r31
/* 80161DAC  4B F3 59 B1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80161DB0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80161DB4  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
/* 80161DB8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80161DBC  D0 1F 02 A4 */	stfs f0, 0x2a4(r31)
/* 80161DC0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80161DC4  D0 1F 02 A8 */	stfs f0, 0x2a8(r31)
/* 80161DC8  48 00 00 20 */	b lbl_80161DE8
lbl_80161DCC:
/* 80161DCC  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80161DD0  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80161DD4  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
/* 80161DD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80161DDC  D0 1F 02 A4 */	stfs f0, 0x2a4(r31)
/* 80161DE0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80161DE4  D0 1F 02 A8 */	stfs f0, 0x2a8(r31)
lbl_80161DE8:
/* 80161DE8  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80161DEC  D0 1F 02 C0 */	stfs f0, 0x2c0(r31)
/* 80161DF0  D0 1F 02 B0 */	stfs f0, 0x2b0(r31)
/* 80161DF4  D0 1F 02 AC */	stfs f0, 0x2ac(r31)
/* 80161DF8  38 00 00 00 */	li r0, 0
/* 80161DFC  90 1F 02 C4 */	stw r0, 0x2c4(r31)
/* 80161E00  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 80161E04  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80161E08  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80161E0C  D0 1F 02 B4 */	stfs f0, 0x2b4(r31)
/* 80161E10  C0 03 00 04 */	lfs f0, 4(r3)
/* 80161E14  D0 1F 02 B8 */	stfs f0, 0x2b8(r31)
/* 80161E18  C0 03 00 08 */	lfs f0, 8(r3)
/* 80161E1C  D0 1F 02 BC */	stfs f0, 0x2bc(r31)
/* 80161E20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80161E24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80161E28  7C 08 03 A6 */	mtlr r0
/* 80161E2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80161E30  4E 80 00 20 */	blr 
