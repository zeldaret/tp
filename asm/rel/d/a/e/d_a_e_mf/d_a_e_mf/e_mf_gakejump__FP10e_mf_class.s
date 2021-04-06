lbl_8070DDDC:
/* 8070DDDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8070DDE0  7C 08 02 A6 */	mflr r0
/* 8070DDE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8070DDE8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8070DDEC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8070DDF0  7C 7E 1B 78 */	mr r30, r3
/* 8070DDF4  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070DDF8  3B E4 39 74 */	addi r31, r4, lit_3828@l /* 0x80713974@l */
/* 8070DDFC  38 80 00 01 */	li r4, 1
/* 8070DE00  98 83 06 D4 */	stb r4, 0x6d4(r3)
/* 8070DE04  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070DE08  2C 00 00 02 */	cmpwi r0, 2
/* 8070DE0C  41 82 01 38 */	beq lbl_8070DF44
/* 8070DE10  40 80 00 14 */	bge lbl_8070DE24
/* 8070DE14  2C 00 00 00 */	cmpwi r0, 0
/* 8070DE18  41 82 00 1C */	beq lbl_8070DE34
/* 8070DE1C  40 80 00 C4 */	bge lbl_8070DEE0
/* 8070DE20  48 00 04 D4 */	b lbl_8070E2F4
lbl_8070DE24:
/* 8070DE24  2C 00 00 04 */	cmpwi r0, 4
/* 8070DE28  41 82 04 54 */	beq lbl_8070E27C
/* 8070DE2C  40 80 04 C8 */	bge lbl_8070E2F4
/* 8070DE30  48 00 02 04 */	b lbl_8070E034
lbl_8070DE34:
/* 8070DE34  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 8070DE38  4B FF DB 19 */	bl jump_pos_check__FP10e_mf_classP4cXyz
/* 8070DE3C  2C 03 00 00 */	cmpwi r3, 0
/* 8070DE40  41 82 00 30 */	beq lbl_8070DE70
/* 8070DE44  7F C3 F3 78 */	mr r3, r30
/* 8070DE48  38 80 00 1B */	li r4, 0x1b
/* 8070DE4C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070DE50  38 A0 00 00 */	li r5, 0
/* 8070DE54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070DE58  4B FF C9 D5 */	bl anm_init__FP10e_mf_classifUcf
/* 8070DE5C  38 00 00 02 */	li r0, 2
/* 8070DE60  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DE64  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 8070DE68  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8070DE6C  48 00 04 88 */	b lbl_8070E2F4
lbl_8070DE70:
/* 8070DE70  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 8070DE74  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8070DE78  41 82 00 50 */	beq lbl_8070DEC8
/* 8070DE7C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8070DE80  4B B5 9A D5 */	bl cM_rndF__Ff
/* 8070DE84  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8070DE88  EC 40 08 2A */	fadds f2, f0, f1
/* 8070DE8C  7F C3 F3 78 */	mr r3, r30
/* 8070DE90  38 80 00 1F */	li r4, 0x1f
/* 8070DE94  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070DE98  38 A0 00 02 */	li r5, 2
/* 8070DE9C  4B FF C9 91 */	bl anm_init__FP10e_mf_classifUcf
/* 8070DEA0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8070DEA4  4B B5 9A B1 */	bl cM_rndF__Ff
/* 8070DEA8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8070DEAC  EC 00 08 2A */	fadds f0, f0, f1
/* 8070DEB0  FC 00 00 1E */	fctiwz f0, f0
/* 8070DEB4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070DEB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070DEBC  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070DEC0  38 00 00 01 */	li r0, 1
/* 8070DEC4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070DEC8:
/* 8070DEC8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8070DECC  A8 9E 06 B4 */	lha r4, 0x6b4(r30)
/* 8070DED0  38 A0 00 04 */	li r5, 4
/* 8070DED4  38 C0 08 00 */	li r6, 0x800
/* 8070DED8  4B B6 27 31 */	bl cLib_addCalcAngleS2__FPssss
/* 8070DEDC  48 00 04 18 */	b lbl_8070E2F4
lbl_8070DEE0:
/* 8070DEE0  38 00 00 02 */	li r0, 2
/* 8070DEE4  98 1E 06 D4 */	stb r0, 0x6d4(r30)
/* 8070DEE8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070DEEC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070DEF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070DEF4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8070DEF8  4B 8F E4 E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8070DEFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070DF00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070DF04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8070DF08  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8070DF0C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8070DF10  38 61 00 24 */	addi r3, r1, 0x24
/* 8070DF14  38 9E 07 18 */	addi r4, r30, 0x718
/* 8070DF18  4B B6 2F D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070DF1C  38 7E 07 18 */	addi r3, r30, 0x718
/* 8070DF20  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8070DF24  7C 65 1B 78 */	mr r5, r3
/* 8070DF28  4B C3 91 69 */	bl PSVECAdd
/* 8070DF2C  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070DF30  2C 00 00 00 */	cmpwi r0, 0
/* 8070DF34  40 82 03 C0 */	bne lbl_8070E2F4
/* 8070DF38  38 00 00 00 */	li r0, 0
/* 8070DF3C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DF40  48 00 03 B4 */	b lbl_8070E2F4
lbl_8070DF44:
/* 8070DF44  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070DF48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070DF4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070DF50  40 82 00 18 */	bne lbl_8070DF68
/* 8070DF54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070DF58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070DF5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070DF60  41 82 00 08 */	beq lbl_8070DF68
/* 8070DF64  38 80 00 00 */	li r4, 0
lbl_8070DF68:
/* 8070DF68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070DF6C  41 82 03 88 */	beq lbl_8070E2F4
/* 8070DF70  7F C3 F3 78 */	mr r3, r30
/* 8070DF74  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 8070DF78  4B FF D9 D9 */	bl jump_pos_check__FP10e_mf_classP4cXyz
/* 8070DF7C  2C 03 00 00 */	cmpwi r3, 0
/* 8070DF80  41 82 00 64 */	beq lbl_8070DFE4
/* 8070DF84  38 00 00 03 */	li r0, 3
/* 8070DF88  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DF8C  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070DF90  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703DE@ha */
/* 8070DF94  38 03 03 DE */	addi r0, r3, 0x03DE /* 0x000703DE@l */
/* 8070DF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070DF9C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070DFA0  38 81 00 14 */	addi r4, r1, 0x14
/* 8070DFA4  38 A0 FF FF */	li r5, -1
/* 8070DFA8  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070DFAC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070DFB0  7D 89 03 A6 */	mtctr r12
/* 8070DFB4  4E 80 04 21 */	bctrl 
/* 8070DFB8  38 00 00 14 */	li r0, 0x14
/* 8070DFBC  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070DFC0  38 00 00 3C */	li r0, 0x3c
/* 8070DFC4  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
/* 8070DFC8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8070DFCC  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8070DFD0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8070DFD4  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 8070DFD8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8070DFDC  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8070DFE0  48 00 00 54 */	b lbl_8070E034
lbl_8070DFE4:
/* 8070DFE4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8070DFE8  4B B5 99 6D */	bl cM_rndF__Ff
/* 8070DFEC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8070DFF0  EC 40 08 2A */	fadds f2, f0, f1
/* 8070DFF4  7F C3 F3 78 */	mr r3, r30
/* 8070DFF8  38 80 00 1F */	li r4, 0x1f
/* 8070DFFC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070E000  38 A0 00 02 */	li r5, 2
/* 8070E004  4B FF C8 29 */	bl anm_init__FP10e_mf_classifUcf
/* 8070E008  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8070E00C  4B B5 99 49 */	bl cM_rndF__Ff
/* 8070E010  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8070E014  EC 00 08 2A */	fadds f0, f0, f1
/* 8070E018  FC 00 00 1E */	fctiwz f0, f0
/* 8070E01C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070E020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070E024  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070E028  38 00 00 01 */	li r0, 1
/* 8070E02C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070E030  48 00 02 C4 */	b lbl_8070E2F4
lbl_8070E034:
/* 8070E034  38 00 00 01 */	li r0, 1
/* 8070E038  98 1E 05 D8 */	stb r0, 0x5d8(r30)
/* 8070E03C  38 61 00 18 */	addi r3, r1, 0x18
/* 8070E040  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 8070E044  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8070E048  4B B5 8A ED */	bl __mi__4cXyzCFRC3Vec
/* 8070E04C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8070E050  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8070E054  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8070E058  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8070E05C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8070E060  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8070E064  4B B5 96 11 */	bl cM_atan2s__Fff
/* 8070E068  B0 7E 05 D4 */	sth r3, 0x5d4(r30)
/* 8070E06C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8070E070  EC 20 00 32 */	fmuls f1, f0, f0
/* 8070E074  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8070E078  EC 00 00 32 */	fmuls f0, f0, f0
/* 8070E07C  EC 41 00 2A */	fadds f2, f1, f0
/* 8070E080  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070E084  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8070E088  40 81 00 0C */	ble lbl_8070E094
/* 8070E08C  FC 00 10 34 */	frsqrte f0, f2
/* 8070E090  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8070E094:
/* 8070E094  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8070E098  4B B5 95 DD */	bl cM_atan2s__Fff
/* 8070E09C  7C 03 00 D0 */	neg r0, r3
/* 8070E0A0  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 8070E0A4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8070E0A8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070E0AC  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070E0B0  2C 00 00 01 */	cmpwi r0, 1
/* 8070E0B4  40 82 00 1C */	bne lbl_8070E0D0
/* 8070E0B8  7F C3 F3 78 */	mr r3, r30
/* 8070E0BC  38 80 00 1C */	li r4, 0x1c
/* 8070E0C0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070E0C4  38 A0 00 00 */	li r5, 0
/* 8070E0C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070E0CC  4B FF C7 61 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070E0D0:
/* 8070E0D0  38 61 00 24 */	addi r3, r1, 0x24
/* 8070E0D4  4B C3 90 65 */	bl PSVECSquareMag
/* 8070E0D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070E0DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070E0E0  40 81 00 58 */	ble lbl_8070E138
/* 8070E0E4  FC 00 08 34 */	frsqrte f0, f1
/* 8070E0E8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8070E0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8070E0F0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8070E0F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8070E0F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8070E0FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8070E100  FC 02 00 32 */	fmul f0, f2, f0
/* 8070E104  FC 44 00 32 */	fmul f2, f4, f0
/* 8070E108  FC 00 00 32 */	fmul f0, f0, f0
/* 8070E10C  FC 01 00 32 */	fmul f0, f1, f0
/* 8070E110  FC 03 00 28 */	fsub f0, f3, f0
/* 8070E114  FC 02 00 32 */	fmul f0, f2, f0
/* 8070E118  FC 44 00 32 */	fmul f2, f4, f0
/* 8070E11C  FC 00 00 32 */	fmul f0, f0, f0
/* 8070E120  FC 01 00 32 */	fmul f0, f1, f0
/* 8070E124  FC 03 00 28 */	fsub f0, f3, f0
/* 8070E128  FC 02 00 32 */	fmul f0, f2, f0
/* 8070E12C  FC 21 00 32 */	fmul f1, f1, f0
/* 8070E130  FC 20 08 18 */	frsp f1, f1
/* 8070E134  48 00 00 88 */	b lbl_8070E1BC
lbl_8070E138:
/* 8070E138  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8070E13C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070E140  40 80 00 10 */	bge lbl_8070E150
/* 8070E144  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8070E148  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8070E14C  48 00 00 70 */	b lbl_8070E1BC
lbl_8070E150:
/* 8070E150  D0 21 00 08 */	stfs f1, 8(r1)
/* 8070E154  80 81 00 08 */	lwz r4, 8(r1)
/* 8070E158  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8070E15C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8070E160  7C 03 00 00 */	cmpw r3, r0
/* 8070E164  41 82 00 14 */	beq lbl_8070E178
/* 8070E168  40 80 00 40 */	bge lbl_8070E1A8
/* 8070E16C  2C 03 00 00 */	cmpwi r3, 0
/* 8070E170  41 82 00 20 */	beq lbl_8070E190
/* 8070E174  48 00 00 34 */	b lbl_8070E1A8
lbl_8070E178:
/* 8070E178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070E17C  41 82 00 0C */	beq lbl_8070E188
/* 8070E180  38 00 00 01 */	li r0, 1
/* 8070E184  48 00 00 28 */	b lbl_8070E1AC
lbl_8070E188:
/* 8070E188  38 00 00 02 */	li r0, 2
/* 8070E18C  48 00 00 20 */	b lbl_8070E1AC
lbl_8070E190:
/* 8070E190  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070E194  41 82 00 0C */	beq lbl_8070E1A0
/* 8070E198  38 00 00 05 */	li r0, 5
/* 8070E19C  48 00 00 10 */	b lbl_8070E1AC
lbl_8070E1A0:
/* 8070E1A0  38 00 00 03 */	li r0, 3
/* 8070E1A4  48 00 00 08 */	b lbl_8070E1AC
lbl_8070E1A8:
/* 8070E1A8  38 00 00 04 */	li r0, 4
lbl_8070E1AC:
/* 8070E1AC  2C 00 00 01 */	cmpwi r0, 1
/* 8070E1B0  40 82 00 0C */	bne lbl_8070E1BC
/* 8070E1B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8070E1B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8070E1BC:
/* 8070E1BC  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 8070E1C0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8070E1C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8070E1C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070E1CC  40 80 00 84 */	bge lbl_8070E250
/* 8070E1D0  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 8070E1D4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8070E1D8  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 8070E1DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8070E1E0  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 8070E1E4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8070E1E8  7F C3 F3 78 */	mr r3, r30
/* 8070E1EC  38 80 00 1D */	li r4, 0x1d
/* 8070E1F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070E1F4  38 A0 00 00 */	li r5, 0
/* 8070E1F8  FC 40 08 90 */	fmr f2, f1
/* 8070E1FC  4B FF C6 31 */	bl anm_init__FP10e_mf_classifUcf
/* 8070E200  38 00 00 04 */	li r0, 4
/* 8070E204  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070E208  38 00 00 03 */	li r0, 3
/* 8070E20C  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070E210  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070E214  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D5@ha */
/* 8070E218  38 03 03 D5 */	addi r0, r3, 0x03D5 /* 0x000703D5@l */
/* 8070E21C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070E220  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070E224  38 81 00 10 */	addi r4, r1, 0x10
/* 8070E228  38 A0 00 00 */	li r5, 0
/* 8070E22C  38 C0 FF FF */	li r6, -1
/* 8070E230  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070E234  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070E238  7D 89 03 A6 */	mtctr r12
/* 8070E23C  4E 80 04 21 */	bctrl 
/* 8070E240  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070E244  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070E248  38 00 00 00 */	li r0, 0
/* 8070E24C  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
lbl_8070E250:
/* 8070E250  A8 1E 06 C2 */	lha r0, 0x6c2(r30)
/* 8070E254  2C 00 00 00 */	cmpwi r0, 0
/* 8070E258  41 82 00 10 */	beq lbl_8070E268
/* 8070E25C  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 8070E260  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8070E264  41 82 00 90 */	beq lbl_8070E2F4
lbl_8070E268:
/* 8070E268  38 00 00 03 */	li r0, 3
/* 8070E26C  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070E270  38 00 00 00 */	li r0, 0
/* 8070E274  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070E278  48 00 00 7C */	b lbl_8070E2F4
lbl_8070E27C:
/* 8070E27C  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070E280  2C 00 00 01 */	cmpwi r0, 1
/* 8070E284  40 82 00 30 */	bne lbl_8070E2B4
/* 8070E288  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D4@ha */
/* 8070E28C  38 03 03 D4 */	addi r0, r3, 0x03D4 /* 0x000703D4@l */
/* 8070E290  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070E294  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070E298  38 81 00 0C */	addi r4, r1, 0xc
/* 8070E29C  38 A0 00 00 */	li r5, 0
/* 8070E2A0  38 C0 FF FF */	li r6, -1
/* 8070E2A4  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070E2A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070E2AC  7D 89 03 A6 */	mtctr r12
/* 8070E2B0  4E 80 04 21 */	bctrl 
lbl_8070E2B4:
/* 8070E2B4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070E2B8  38 80 00 01 */	li r4, 1
/* 8070E2BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070E2C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070E2C4  40 82 00 18 */	bne lbl_8070E2DC
/* 8070E2C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070E2CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070E2D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070E2D4  41 82 00 08 */	beq lbl_8070E2DC
/* 8070E2D8  38 80 00 00 */	li r4, 0
lbl_8070E2DC:
/* 8070E2DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070E2E0  41 82 00 14 */	beq lbl_8070E2F4
/* 8070E2E4  38 00 00 03 */	li r0, 3
/* 8070E2E8  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070E2EC  38 00 00 00 */	li r0, 0
/* 8070E2F0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070E2F4:
/* 8070E2F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8070E2F8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8070E2FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8070E300  7C 08 03 A6 */	mtlr r0
/* 8070E304  38 21 00 40 */	addi r1, r1, 0x40
/* 8070E308  4E 80 00 20 */	blr 
