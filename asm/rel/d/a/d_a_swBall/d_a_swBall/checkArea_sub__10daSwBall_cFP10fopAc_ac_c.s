lbl_80D4E054:
/* 80D4E054  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4E058  7C 08 02 A6 */	mflr r0
/* 80D4E05C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4E060  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D4E064  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D4E068  7C 7E 1B 78 */	mr r30, r3
/* 80D4E06C  3C A0 80 D5 */	lis r5, lit_3718@ha /* 0x80D4E998@ha */
/* 80D4E070  3B E5 E9 98 */	addi r31, r5, lit_3718@l /* 0x80D4E998@l */
/* 80D4E074  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D4E078  54 00 47 3F */	rlwinm. r0, r0, 8, 0x1c, 0x1f
/* 80D4E07C  40 82 00 58 */	bne lbl_80D4E0D4
/* 80D4E080  C0 64 04 D4 */	lfs f3, 0x4d4(r4)
/* 80D4E084  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D4E088  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D4E08C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D4E090  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80D4E094  4C 41 13 82 */	cror 2, 1, 2
/* 80D4E098  40 82 00 E0 */	bne lbl_80D4E178
/* 80D4E09C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D4E0A0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D4E0A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D4E0A8  EC 02 00 2A */	fadds f0, f2, f0
/* 80D4E0AC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80D4E0B0  40 80 00 C8 */	bge lbl_80D4E178
/* 80D4E0B4  4B 2C C8 B1 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D4E0B8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D4E0BC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D4E0C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D4E0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4E0C8  40 80 00 B0 */	bge lbl_80D4E178
/* 80D4E0CC  38 60 00 01 */	li r3, 1
/* 80D4E0D0  48 00 00 AC */	b lbl_80D4E17C
lbl_80D4E0D4:
/* 80D4E0D4  28 00 00 01 */	cmplwi r0, 1
/* 80D4E0D8  40 82 00 A0 */	bne lbl_80D4E178
/* 80D4E0DC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D4E0E0  C0 9E 04 F4 */	lfs f4, 0x4f4(r30)
/* 80D4E0E4  EC 20 01 32 */	fmuls f1, f0, f4
/* 80D4E0E8  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80D4E0EC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D4E0F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D4E0F4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D4E0F8  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80D4E0FC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D4E100  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D4E104  EC A1 01 32 */	fmuls f5, f1, f4
/* 80D4E108  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D4E10C  EC 81 00 32 */	fmuls f4, f1, f0
/* 80D4E110  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80D4E114  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D4E118  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80D4E11C  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80D4E120  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D4E124  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D4E128  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D4E12C  EC 23 00 2A */	fadds f1, f3, f0
/* 80D4E130  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D4E134  EC 04 10 2A */	fadds f0, f4, f2
/* 80D4E138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D4E13C  C0 44 04 D4 */	lfs f2, 0x4d4(r4)
/* 80D4E140  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80D4E144  4C 41 13 82 */	cror 2, 1, 2
/* 80D4E148  40 82 00 30 */	bne lbl_80D4E178
/* 80D4E14C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D4E150  40 80 00 28 */	bge lbl_80D4E178
/* 80D4E154  7C 83 23 78 */	mr r3, r4
/* 80D4E158  7F C4 F3 78 */	mr r4, r30
/* 80D4E15C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80D4E160  38 C1 00 08 */	addi r6, r1, 8
/* 80D4E164  4B 2E 44 F1 */	bl dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80D4E168  2C 03 00 00 */	cmpwi r3, 0
/* 80D4E16C  41 82 00 0C */	beq lbl_80D4E178
/* 80D4E170  38 60 00 01 */	li r3, 1
/* 80D4E174  48 00 00 08 */	b lbl_80D4E17C
lbl_80D4E178:
/* 80D4E178  38 60 00 00 */	li r3, 0
lbl_80D4E17C:
/* 80D4E17C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D4E180  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D4E184  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4E188  7C 08 03 A6 */	mtlr r0
/* 80D4E18C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4E190  4E 80 00 20 */	blr 
