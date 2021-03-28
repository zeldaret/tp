lbl_8050DF38:
/* 8050DF38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050DF3C  7C 08 02 A6 */	mflr r0
/* 8050DF40  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050DF44  39 61 00 40 */	addi r11, r1, 0x40
/* 8050DF48  4B E5 42 94 */	b _savegpr_29
/* 8050DF4C  7C 7E 1B 78 */	mr r30, r3
/* 8050DF50  3C 60 80 52 */	lis r3, lit_4208@ha
/* 8050DF54  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 8050DF58  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8050DF5C  54 00 00 3E */	slwi r0, r0, 0
/* 8050DF60  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8050DF64  38 00 00 00 */	li r0, 0
/* 8050DF68  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8050DF6C  38 00 00 0A */	li r0, 0xa
/* 8050DF70  B0 1E 09 98 */	sth r0, 0x998(r30)
/* 8050DF74  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 8050DF78  90 01 00 08 */	stw r0, 8(r1)
/* 8050DF7C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8050DF80  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8050DF84  38 81 00 08 */	addi r4, r1, 8
/* 8050DF88  4B B0 B8 70 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8050DF8C  7C 7D 1B 78 */	mr r29, r3
/* 8050DF90  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8050DF94  2C 00 00 02 */	cmpwi r0, 2
/* 8050DF98  41 82 01 4C */	beq lbl_8050E0E4
/* 8050DF9C  40 80 00 14 */	bge lbl_8050DFB0
/* 8050DFA0  2C 00 00 00 */	cmpwi r0, 0
/* 8050DFA4  41 82 00 1C */	beq lbl_8050DFC0
/* 8050DFA8  40 80 00 58 */	bge lbl_8050E000
/* 8050DFAC  48 00 02 50 */	b lbl_8050E1FC
lbl_8050DFB0:
/* 8050DFB0  2C 00 00 04 */	cmpwi r0, 4
/* 8050DFB4  41 82 02 08 */	beq lbl_8050E1BC
/* 8050DFB8  40 80 02 44 */	bge lbl_8050E1FC
/* 8050DFBC  48 00 01 8C */	b lbl_8050E148
lbl_8050DFC0:
/* 8050DFC0  38 00 00 00 */	li r0, 0
/* 8050DFC4  90 1E 06 80 */	stw r0, 0x680(r30)
/* 8050DFC8  7F C3 F3 78 */	mr r3, r30
/* 8050DFCC  38 80 00 2B */	li r4, 0x2b
/* 8050DFD0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050DFD4  38 A0 00 00 */	li r5, 0
/* 8050DFD8  FC 40 08 90 */	fmr f2, f1
/* 8050DFDC  4B FF 6B F9 */	bl anm_init__FP10e_rd_classifUcf
/* 8050DFE0  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050DFE4  38 03 00 01 */	addi r0, r3, 1
/* 8050DFE8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050DFEC  38 00 00 0E */	li r0, 0xe
/* 8050DFF0  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050DFF4  38 00 00 01 */	li r0, 1
/* 8050DFF8  98 1D 07 A2 */	stb r0, 0x7a2(r29)
/* 8050DFFC  48 00 02 00 */	b lbl_8050E1FC
lbl_8050E000:
/* 8050E000  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050E004  2C 00 00 01 */	cmpwi r0, 1
/* 8050E008  40 82 00 7C */	bne lbl_8050E084
/* 8050E00C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8050E010  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8050E014  80 63 00 00 */	lwz r3, 0(r3)
/* 8050E018  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8050E01C  4B AF E3 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 8050E020  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8050E024  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050E028  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8050E02C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050E030  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8050E034  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050E038  38 61 00 1C */	addi r3, r1, 0x1c
/* 8050E03C  38 9E 06 B0 */	addi r4, r30, 0x6b0
/* 8050E040  4B D6 2E AC */	b MtxPosition__FP4cXyzP4cXyz
/* 8050E044  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8050E048  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 8050E04C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8050E050  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050E054  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050E058  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050E05C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050E060  38 61 00 1C */	addi r3, r1, 0x1c
/* 8050E064  38 81 00 10 */	addi r4, r1, 0x10
/* 8050E068  4B D6 2E 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 8050E06C  38 7E 06 A4 */	addi r3, r30, 0x6a4
/* 8050E070  38 81 00 10 */	addi r4, r1, 0x10
/* 8050E074  7C 65 1B 78 */	mr r5, r3
/* 8050E078  4B E3 90 18 */	b PSVECAdd
/* 8050E07C  38 00 00 02 */	li r0, 2
/* 8050E080  98 1E 06 A0 */	stb r0, 0x6a0(r30)
lbl_8050E084:
/* 8050E084  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050E088  38 80 00 01 */	li r4, 1
/* 8050E08C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050E090  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050E094  40 82 00 18 */	bne lbl_8050E0AC
/* 8050E098  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050E09C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050E0A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E0A4  41 82 00 08 */	beq lbl_8050E0AC
/* 8050E0A8  38 80 00 00 */	li r4, 0
lbl_8050E0AC:
/* 8050E0AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050E0B0  41 82 01 4C */	beq lbl_8050E1FC
/* 8050E0B4  7F C3 F3 78 */	mr r3, r30
/* 8050E0B8  38 80 00 2C */	li r4, 0x2c
/* 8050E0BC  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050E0C0  38 A0 00 02 */	li r5, 2
/* 8050E0C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E0C8  4B FF 6B 0D */	bl anm_init__FP10e_rd_classifUcf
/* 8050E0CC  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050E0D0  38 03 00 01 */	addi r0, r3, 1
/* 8050E0D4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E0D8  38 00 00 6E */	li r0, 0x6e
/* 8050E0DC  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050E0E0  48 00 01 1C */	b lbl_8050E1FC
lbl_8050E0E4:
/* 8050E0E4  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050E0E8  2C 00 00 00 */	cmpwi r0, 0
/* 8050E0EC  40 82 01 10 */	bne lbl_8050E1FC
/* 8050E0F0  7F C3 F3 78 */	mr r3, r30
/* 8050E0F4  38 80 00 2D */	li r4, 0x2d
/* 8050E0F8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050E0FC  38 A0 00 00 */	li r5, 0
/* 8050E100  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E104  4B FF 6A D1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E108  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050E10C  38 03 00 01 */	addi r0, r3, 1
/* 8050E110  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E114  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007012E@ha */
/* 8050E118  38 03 01 2E */	addi r0, r3, 0x012E /* 0x0007012E@l */
/* 8050E11C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050E120  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050E124  38 81 00 0C */	addi r4, r1, 0xc
/* 8050E128  38 A0 FF FF */	li r5, -1
/* 8050E12C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050E130  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050E134  7D 89 03 A6 */	mtctr r12
/* 8050E138  4E 80 04 21 */	bctrl 
/* 8050E13C  38 00 00 0A */	li r0, 0xa
/* 8050E140  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050E144  48 00 00 B8 */	b lbl_8050E1FC
lbl_8050E148:
/* 8050E148  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050E14C  2C 00 00 00 */	cmpwi r0, 0
/* 8050E150  40 82 00 0C */	bne lbl_8050E15C
/* 8050E154  38 00 00 00 */	li r0, 0
/* 8050E158  98 1D 07 A2 */	stb r0, 0x7a2(r29)
lbl_8050E15C:
/* 8050E15C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050E160  38 80 00 01 */	li r4, 1
/* 8050E164  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050E168  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050E16C  40 82 00 18 */	bne lbl_8050E184
/* 8050E170  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050E174  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050E178  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E17C  41 82 00 08 */	beq lbl_8050E184
/* 8050E180  38 80 00 00 */	li r4, 0
lbl_8050E184:
/* 8050E184  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050E188  41 82 00 74 */	beq lbl_8050E1FC
/* 8050E18C  7F C3 F3 78 */	mr r3, r30
/* 8050E190  38 80 00 3B */	li r4, 0x3b
/* 8050E194  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050E198  38 A0 00 02 */	li r5, 2
/* 8050E19C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E1A0  4B FF 6A 35 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E1A4  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050E1A8  38 03 00 01 */	addi r0, r3, 1
/* 8050E1AC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E1B0  38 00 00 14 */	li r0, 0x14
/* 8050E1B4  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050E1B8  48 00 00 44 */	b lbl_8050E1FC
lbl_8050E1BC:
/* 8050E1BC  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050E1C0  2C 00 00 00 */	cmpwi r0, 0
/* 8050E1C4  41 82 00 0C */	beq lbl_8050E1D0
/* 8050E1C8  38 00 00 01 */	li r0, 1
/* 8050E1CC  98 1E 09 C8 */	stb r0, 0x9c8(r30)
lbl_8050E1D0:
/* 8050E1D0  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 8050E1D4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8050E1D8  41 82 00 24 */	beq lbl_8050E1FC
/* 8050E1DC  38 00 00 0E */	li r0, 0xe
/* 8050E1E0  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050E1E4  38 00 00 00 */	li r0, 0
/* 8050E1E8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E1EC  38 00 07 D0 */	li r0, 0x7d0
/* 8050E1F0  B0 1E 09 92 */	sth r0, 0x992(r30)
/* 8050E1F4  38 00 03 E8 */	li r0, 0x3e8
/* 8050E1F8  B0 1E 09 94 */	sth r0, 0x994(r30)
lbl_8050E1FC:
/* 8050E1FC  39 61 00 40 */	addi r11, r1, 0x40
/* 8050E200  4B E5 40 28 */	b _restgpr_29
/* 8050E204  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050E208  7C 08 03 A6 */	mtlr r0
/* 8050E20C  38 21 00 40 */	addi r1, r1, 0x40
/* 8050E210  4E 80 00 20 */	blr 
