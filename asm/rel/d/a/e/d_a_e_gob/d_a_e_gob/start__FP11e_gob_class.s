lbl_806DB038:
/* 806DB038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806DB03C  7C 08 02 A6 */	mflr r0
/* 806DB040  90 01 00 34 */	stw r0, 0x34(r1)
/* 806DB044  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806DB048  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806DB04C  7C 7E 1B 78 */	mr r30, r3
/* 806DB050  3C 80 80 6E */	lis r4, lit_3763@ha /* 0x806DEE38@ha */
/* 806DB054  3B E4 EE 38 */	addi r31, r4, lit_3763@l /* 0x806DEE38@l */
/* 806DB058  38 A0 00 05 */	li r5, 5
/* 806DB05C  B0 A3 06 7E */	sth r5, 0x67e(r3)
/* 806DB060  A8 03 06 58 */	lha r0, 0x658(r3)
/* 806DB064  28 00 00 06 */	cmplwi r0, 6
/* 806DB068  41 81 02 84 */	bgt lbl_806DB2EC
/* 806DB06C  3C 80 80 6E */	lis r4, lit_4942@ha /* 0x806DF0C8@ha */
/* 806DB070  38 84 F0 C8 */	addi r4, r4, lit_4942@l /* 0x806DF0C8@l */
/* 806DB074  54 00 10 3A */	slwi r0, r0, 2
/* 806DB078  7C 04 00 2E */	lwzx r0, r4, r0
/* 806DB07C  7C 09 03 A6 */	mtctr r0
/* 806DB080  4E 80 04 20 */	bctr 
lbl_806DB084:
/* 806DB084  38 80 00 16 */	li r4, 0x16
/* 806DB088  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DB08C  38 A0 00 02 */	li r5, 2
/* 806DB090  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB094  4B FF D4 E5 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB098  38 00 00 01 */	li r0, 1
/* 806DB09C  B0 1E 06 58 */	sth r0, 0x658(r30)
/* 806DB0A0  48 00 02 4C */	b lbl_806DB2EC
lbl_806DB0A4:
/* 806DB0A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DB0A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DB0AC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806DB0B0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806DB0B4  40 82 02 38 */	bne lbl_806DB2EC
/* 806DB0B8  3C 60 80 6E */	lis r3, ms@ha /* 0x806DF2F4@ha */
/* 806DB0BC  38 63 F2 F4 */	addi r3, r3, ms@l /* 0x806DF2F4@l */
/* 806DB0C0  80 63 00 00 */	lwz r3, 0(r3)
/* 806DB0C4  28 03 00 00 */	cmplwi r3, 0
/* 806DB0C8  41 82 02 24 */	beq lbl_806DB2EC
/* 806DB0CC  88 03 05 C4 */	lbz r0, 0x5c4(r3)
/* 806DB0D0  7C 00 07 75 */	extsb. r0, r0
/* 806DB0D4  41 82 02 18 */	beq lbl_806DB2EC
/* 806DB0D8  38 00 00 01 */	li r0, 1
/* 806DB0DC  B0 1E 0D 38 */	sth r0, 0xd38(r30)
/* 806DB0E0  38 00 00 02 */	li r0, 2
/* 806DB0E4  B0 1E 06 58 */	sth r0, 0x658(r30)
/* 806DB0E8  38 00 00 78 */	li r0, 0x78
/* 806DB0EC  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 806DB0F0  48 00 01 FC */	b lbl_806DB2EC
lbl_806DB0F4:
/* 806DB0F4  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 806DB0F8  2C 00 00 01 */	cmpwi r0, 1
/* 806DB0FC  40 82 00 18 */	bne lbl_806DB114
/* 806DB100  38 80 00 18 */	li r4, 0x18
/* 806DB104  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806DB108  38 A0 00 00 */	li r5, 0
/* 806DB10C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB110  4B FF D4 69 */	bl anm_init__FP11e_gob_classifUcf
lbl_806DB114:
/* 806DB114  80 1E 06 48 */	lwz r0, 0x648(r30)
/* 806DB118  2C 00 00 18 */	cmpwi r0, 0x18
/* 806DB11C  40 82 01 D0 */	bne lbl_806DB2EC
/* 806DB120  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806DB124  38 80 00 01 */	li r4, 1
/* 806DB128  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806DB12C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806DB130  40 82 00 18 */	bne lbl_806DB148
/* 806DB134  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DB138  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DB13C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806DB140  41 82 00 08 */	beq lbl_806DB148
/* 806DB144  38 80 00 00 */	li r4, 0
lbl_806DB148:
/* 806DB148  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806DB14C  41 82 01 A0 */	beq lbl_806DB2EC
/* 806DB150  7F C3 F3 78 */	mr r3, r30
/* 806DB154  38 80 00 19 */	li r4, 0x19
/* 806DB158  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806DB15C  38 A0 00 02 */	li r5, 2
/* 806DB160  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB164  4B FF D4 15 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB168  48 00 01 84 */	b lbl_806DB2EC
lbl_806DB16C:
/* 806DB16C  80 1E 06 48 */	lwz r0, 0x648(r30)
/* 806DB170  2C 00 00 13 */	cmpwi r0, 0x13
/* 806DB174  40 82 01 78 */	bne lbl_806DB2EC
/* 806DB178  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806DB17C  38 80 00 01 */	li r4, 1
/* 806DB180  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806DB184  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806DB188  40 82 00 18 */	bne lbl_806DB1A0
/* 806DB18C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DB190  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DB194  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806DB198  41 82 00 08 */	beq lbl_806DB1A0
/* 806DB19C  38 80 00 00 */	li r4, 0
lbl_806DB1A0:
/* 806DB1A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806DB1A4  41 82 01 48 */	beq lbl_806DB2EC
/* 806DB1A8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 806DB1AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806DB1B0  38 00 00 04 */	li r0, 4
/* 806DB1B4  B0 1E 06 58 */	sth r0, 0x658(r30)
/* 806DB1B8  7F C3 F3 78 */	mr r3, r30
/* 806DB1BC  38 80 00 14 */	li r4, 0x14
/* 806DB1C0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806DB1C4  38 A0 00 00 */	li r5, 0
/* 806DB1C8  FC 40 08 90 */	fmr f2, f1
/* 806DB1CC  4B FF D3 AD */	bl anm_init__FP11e_gob_classifUcf
/* 806DB1D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701ED@ha */
/* 806DB1D4  38 03 01 ED */	addi r0, r3, 0x01ED /* 0x000701ED@l */
/* 806DB1D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DB1DC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806DB1E0  38 81 00 0C */	addi r4, r1, 0xc
/* 806DB1E4  38 A0 FF FF */	li r5, -1
/* 806DB1E8  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806DB1EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DB1F0  7D 89 03 A6 */	mtctr r12
/* 806DB1F4  4E 80 04 21 */	bctrl 
/* 806DB1F8  48 00 00 F4 */	b lbl_806DB2EC
lbl_806DB1FC:
/* 806DB1FC  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 806DB200  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DB204  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806DB208  4C 40 13 82 */	cror 2, 0, 2
/* 806DB20C  40 82 00 E0 */	bne lbl_806DB2EC
/* 806DB210  D0 3E 04 D8 */	stfs f1, 0x4d8(r30)
/* 806DB214  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806DB218  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806DB21C  41 82 00 D0 */	beq lbl_806DB2EC
/* 806DB220  B0 BE 06 58 */	sth r5, 0x658(r30)
/* 806DB224  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806DB228  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806DB22C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806DB230  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806DB234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DB238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DB23C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806DB240  38 80 00 08 */	li r4, 8
/* 806DB244  38 A0 00 1F */	li r5, 0x1f
/* 806DB248  38 C1 00 10 */	addi r6, r1, 0x10
/* 806DB24C  4B 99 47 D9 */	bl StartShock__12dVibration_cFii4cXyz
/* 806DB250  7F C3 F3 78 */	mr r3, r30
/* 806DB254  38 80 00 1D */	li r4, 0x1d
/* 806DB258  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DB25C  38 A0 00 00 */	li r5, 0
/* 806DB260  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB264  4B FF D3 15 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB268  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 806DB26C  D0 1E 0D 8C */	stfs f0, 0xd8c(r30)
/* 806DB270  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FC@ha */
/* 806DB274  38 03 01 FC */	addi r0, r3, 0x01FC /* 0x000701FC@l */
/* 806DB278  90 01 00 08 */	stw r0, 8(r1)
/* 806DB27C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806DB280  38 81 00 08 */	addi r4, r1, 8
/* 806DB284  38 A0 FF FF */	li r5, -1
/* 806DB288  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806DB28C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DB290  7D 89 03 A6 */	mtctr r12
/* 806DB294  4E 80 04 21 */	bctrl 
/* 806DB298  48 00 00 54 */	b lbl_806DB2EC
lbl_806DB29C:
/* 806DB29C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806DB2A0  38 80 00 01 */	li r4, 1
/* 806DB2A4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806DB2A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806DB2AC  40 82 00 18 */	bne lbl_806DB2C4
/* 806DB2B0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DB2B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DB2B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806DB2BC  41 82 00 08 */	beq lbl_806DB2C4
/* 806DB2C0  38 80 00 00 */	li r4, 0
lbl_806DB2C4:
/* 806DB2C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806DB2C8  41 82 00 24 */	beq lbl_806DB2EC
/* 806DB2CC  7F C3 F3 78 */	mr r3, r30
/* 806DB2D0  38 80 00 23 */	li r4, 0x23
/* 806DB2D4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806DB2D8  38 A0 00 02 */	li r5, 2
/* 806DB2DC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB2E0  4B FF D2 99 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB2E4  38 00 00 06 */	li r0, 6
/* 806DB2E8  B0 1E 06 58 */	sth r0, 0x658(r30)
lbl_806DB2EC:
/* 806DB2EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806DB2F0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806DB2F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806DB2F8  7C 08 03 A6 */	mtlr r0
/* 806DB2FC  38 21 00 30 */	addi r1, r1, 0x30
/* 806DB300  4E 80 00 20 */	blr 
