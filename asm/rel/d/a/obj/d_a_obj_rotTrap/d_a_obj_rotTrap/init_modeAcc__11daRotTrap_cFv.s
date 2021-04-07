lbl_80CC0180:
/* 80CC0180  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC0184  7C 08 02 A6 */	mflr r0
/* 80CC0188  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC018C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CC0190  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CC0194  7C 7F 1B 78 */	mr r31, r3
/* 80CC0198  3C 60 80 CC */	lis r3, lit_3649@ha /* 0x80CC0808@ha */
/* 80CC019C  3B C3 08 08 */	addi r30, r3, lit_3649@l /* 0x80CC0808@l */
/* 80CC01A0  80 9F 17 38 */	lwz r4, 0x1738(r31)
/* 80CC01A4  28 04 00 00 */	cmplwi r4, 0
/* 80CC01A8  41 82 00 1C */	beq lbl_80CC01C4
/* 80CC01AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC01B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC01B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC01B8  4B 3B 40 99 */	bl Release__4cBgSFP9dBgW_Base
/* 80CC01BC  80 7F 17 38 */	lwz r3, 0x1738(r31)
/* 80CC01C0  4B 3B B8 01 */	bl Move__4dBgWFv
lbl_80CC01C4:
/* 80CC01C4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80CC01C8  28 04 00 00 */	cmplwi r4, 0
/* 80CC01CC  41 82 00 18 */	beq lbl_80CC01E4
/* 80CC01D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC01D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC01D8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC01DC  7F E5 FB 78 */	mr r5, r31
/* 80CC01E0  4B 3B 48 29 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80CC01E4:
/* 80CC01E4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CC01E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CC01EC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CC01F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC01F4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CC01F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC01FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC0200  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CC0204  3C 80 80 CC */	lis r4, l_HIO@ha /* 0x80CC0AC4@ha */
/* 80CC0208  38 84 0A C4 */	addi r4, r4, l_HIO@l /* 0x80CC0AC4@l */
/* 80CC020C  88 84 00 0E */	lbz r4, 0xe(r4)
/* 80CC0210  38 A0 00 0F */	li r5, 0xf
/* 80CC0214  38 C1 00 08 */	addi r6, r1, 8
/* 80CC0218  4B 3A F8 0D */	bl StartShock__12dVibration_cFii4cXyz
/* 80CC021C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80CC0220  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80CC0224  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80CC0228  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CC0AC4@ha */
/* 80CC022C  38 63 0A C4 */	addi r3, r3, l_HIO@l /* 0x80CC0AC4@l */
/* 80CC0230  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CC0234  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CC0238  EC 02 00 24 */	fdivs f0, f2, f0
/* 80CC023C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CC0240  FC 00 00 1E */	fctiwz f0, f0
/* 80CC0244  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CC0248  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CC024C  B0 1F 05 B0 */	sth r0, 0x5b0(r31)
/* 80CC0250  38 00 00 00 */	li r0, 0
/* 80CC0254  B0 1F 05 B2 */	sth r0, 0x5b2(r31)
/* 80CC0258  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 80CC025C  38 00 00 01 */	li r0, 1
/* 80CC0260  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CC0264  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CC0268  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CC026C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC0270  7C 08 03 A6 */	mtlr r0
/* 80CC0274  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC0278  4E 80 00 20 */	blr 
