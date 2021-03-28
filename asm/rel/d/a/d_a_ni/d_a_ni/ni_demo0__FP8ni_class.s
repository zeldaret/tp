lbl_8094DED0:
/* 8094DED0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8094DED4  7C 08 02 A6 */	mflr r0
/* 8094DED8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8094DEDC  39 61 00 50 */	addi r11, r1, 0x50
/* 8094DEE0  4B A1 42 FC */	b _savegpr_29
/* 8094DEE4  7C 7D 1B 78 */	mr r29, r3
/* 8094DEE8  3C 60 80 95 */	lis r3, lit_3958@ha
/* 8094DEEC  3B E3 11 C0 */	addi r31, r3, lit_3958@l
/* 8094DEF0  38 00 02 9C */	li r0, 0x29c
/* 8094DEF4  B0 01 00 08 */	sth r0, 8(r1)
/* 8094DEF8  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 8094DEFC  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 8094DF00  38 81 00 08 */	addi r4, r1, 8
/* 8094DF04  4B 6C B8 F4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8094DF08  A8 1D 06 04 */	lha r0, 0x604(r29)
/* 8094DF0C  2C 00 00 00 */	cmpwi r0, 0
/* 8094DF10  40 82 00 60 */	bne lbl_8094DF70
/* 8094DF14  28 03 00 00 */	cmplwi r3, 0
/* 8094DF18  41 82 00 58 */	beq lbl_8094DF70
/* 8094DF1C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 8094DF20  80 63 00 04 */	lwz r3, 4(r3)
/* 8094DF24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8094DF28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8094DF2C  38 63 03 30 */	addi r3, r3, 0x330
/* 8094DF30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8094DF34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8094DF38  4B 9F 85 78 */	b PSMTXCopy
/* 8094DF3C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8094DF40  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8094DF44  FC 60 10 90 */	fmr f3, f2
/* 8094DF48  4B 6B EE 54 */	b transM__14mDoMtx_stack_cFfff
/* 8094DF4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8094DF50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8094DF54  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8094DF58  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8094DF5C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8094DF60  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8094DF64  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8094DF68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8094DF6C  48 00 00 0C */	b lbl_8094DF78
lbl_8094DF70:
/* 8094DF70  38 60 00 00 */	li r3, 0
/* 8094DF74  48 00 03 24 */	b lbl_8094E298
lbl_8094DF78:
/* 8094DF78  3B C0 00 00 */	li r30, 0
/* 8094DF7C  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8094DF80  2C 00 00 01 */	cmpwi r0, 1
/* 8094DF84  41 82 00 9C */	beq lbl_8094E020
/* 8094DF88  40 80 00 10 */	bge lbl_8094DF98
/* 8094DF8C  2C 00 00 00 */	cmpwi r0, 0
/* 8094DF90  40 80 00 14 */	bge lbl_8094DFA4
/* 8094DF94  48 00 03 00 */	b lbl_8094E294
lbl_8094DF98:
/* 8094DF98  2C 00 00 03 */	cmpwi r0, 3
/* 8094DF9C  40 80 02 F8 */	bge lbl_8094E294
/* 8094DFA0  48 00 02 24 */	b lbl_8094E1C4
lbl_8094DFA4:
/* 8094DFA4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8094DFA8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8094DFAC  EC 01 00 2A */	fadds f0, f1, f0
/* 8094DFB0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8094DFB4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094DFB8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8094DFBC  A8 1D 05 FE */	lha r0, 0x5fe(r29)
/* 8094DFC0  2C 00 00 00 */	cmpwi r0, 0
/* 8094DFC4  41 82 02 D0 */	beq lbl_8094E294
/* 8094DFC8  38 00 00 01 */	li r0, 1
/* 8094DFCC  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094DFD0  38 00 00 00 */	li r0, 0
/* 8094DFD4  B0 1D 05 FE */	sth r0, 0x5fe(r29)
/* 8094DFD8  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8094DFDC  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8094DFE0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8094DFE4  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 8094DFE8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8094DFEC  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 8094DFF0  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 8094DFF4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8094DFF8  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 8094DFFC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8094E000  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 8094E004  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8094E008  7F A3 EB 78 */	mr r3, r29
/* 8094E00C  38 80 00 06 */	li r4, 6
/* 8094E010  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094E014  38 A0 00 02 */	li r5, 2
/* 8094E018  FC 40 08 90 */	fmr f2, f1
/* 8094E01C  4B FF DC 8D */	bl anm_init__FP8ni_classifUcf
lbl_8094E020:
/* 8094E020  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8094E024  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 8094E028  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8094E02C  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 8094E030  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8094E034  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 8094E038  3B C0 00 02 */	li r30, 2
/* 8094E03C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8094E040  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8094E044  38 61 00 10 */	addi r3, r1, 0x10
/* 8094E048  38 9D 05 C0 */	addi r4, r29, 0x5c0
/* 8094E04C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8094E050  4B 91 8A E4 */	b __mi__4cXyzCFRC3Vec
/* 8094E054  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8094E058  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8094E05C  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8094E060  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8094E064  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8094E068  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8094E06C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8094E070  EC 03 00 2A */	fadds f0, f3, f0
/* 8094E074  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8094E078  4B 91 95 FC */	b cM_atan2s__Fff
/* 8094E07C  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8094E080  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8094E084  EC 20 00 32 */	fmuls f1, f0, f0
/* 8094E088  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8094E08C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8094E090  EC 41 00 2A */	fadds f2, f1, f0
/* 8094E094  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E098  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8094E09C  40 81 00 0C */	ble lbl_8094E0A8
/* 8094E0A0  FC 00 10 34 */	frsqrte f0, f2
/* 8094E0A4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8094E0A8:
/* 8094E0A8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8094E0AC  4B 91 95 C8 */	b cM_atan2s__Fff
/* 8094E0B0  7C 03 00 D0 */	neg r0, r3
/* 8094E0B4  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8094E0B8  38 61 00 28 */	addi r3, r1, 0x28
/* 8094E0BC  4B 9F 90 7C */	b PSVECSquareMag
/* 8094E0C0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E0C8  40 81 00 58 */	ble lbl_8094E120
/* 8094E0CC  FC 00 08 34 */	frsqrte f0, f1
/* 8094E0D0  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 8094E0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8094E0D8  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 8094E0DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8094E0E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8094E0E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8094E0E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8094E0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8094E0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8094E0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8094E0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8094E0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8094E100  FC 44 00 32 */	fmul f2, f4, f0
/* 8094E104  FC 00 00 32 */	fmul f0, f0, f0
/* 8094E108  FC 01 00 32 */	fmul f0, f1, f0
/* 8094E10C  FC 03 00 28 */	fsub f0, f3, f0
/* 8094E110  FC 02 00 32 */	fmul f0, f2, f0
/* 8094E114  FC 21 00 32 */	fmul f1, f1, f0
/* 8094E118  FC 20 08 18 */	frsp f1, f1
/* 8094E11C  48 00 00 88 */	b lbl_8094E1A4
lbl_8094E120:
/* 8094E120  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 8094E124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E128  40 80 00 10 */	bge lbl_8094E138
/* 8094E12C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094E130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8094E134  48 00 00 70 */	b lbl_8094E1A4
lbl_8094E138:
/* 8094E138  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8094E13C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8094E140  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094E144  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094E148  7C 03 00 00 */	cmpw r3, r0
/* 8094E14C  41 82 00 14 */	beq lbl_8094E160
/* 8094E150  40 80 00 40 */	bge lbl_8094E190
/* 8094E154  2C 03 00 00 */	cmpwi r3, 0
/* 8094E158  41 82 00 20 */	beq lbl_8094E178
/* 8094E15C  48 00 00 34 */	b lbl_8094E190
lbl_8094E160:
/* 8094E160  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094E164  41 82 00 0C */	beq lbl_8094E170
/* 8094E168  38 00 00 01 */	li r0, 1
/* 8094E16C  48 00 00 28 */	b lbl_8094E194
lbl_8094E170:
/* 8094E170  38 00 00 02 */	li r0, 2
/* 8094E174  48 00 00 20 */	b lbl_8094E194
lbl_8094E178:
/* 8094E178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094E17C  41 82 00 0C */	beq lbl_8094E188
/* 8094E180  38 00 00 05 */	li r0, 5
/* 8094E184  48 00 00 10 */	b lbl_8094E194
lbl_8094E188:
/* 8094E188  38 00 00 03 */	li r0, 3
/* 8094E18C  48 00 00 08 */	b lbl_8094E194
lbl_8094E190:
/* 8094E190  38 00 00 04 */	li r0, 4
lbl_8094E194:
/* 8094E194  2C 00 00 01 */	cmpwi r0, 1
/* 8094E198  40 82 00 0C */	bne lbl_8094E1A4
/* 8094E19C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094E1A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8094E1A4:
/* 8094E1A4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8094E1A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E1AC  40 80 00 E8 */	bge lbl_8094E294
/* 8094E1B0  38 00 00 02 */	li r0, 2
/* 8094E1B4  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094E1B8  38 00 00 14 */	li r0, 0x14
/* 8094E1BC  B0 1D 06 06 */	sth r0, 0x606(r29)
/* 8094E1C0  48 00 00 D4 */	b lbl_8094E294
lbl_8094E1C4:
/* 8094E1C4  D0 5D 05 C0 */	stfs f2, 0x5c0(r29)
/* 8094E1C8  D0 3D 05 C4 */	stfs f1, 0x5c4(r29)
/* 8094E1CC  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 8094E1D0  A8 1D 06 06 */	lha r0, 0x606(r29)
/* 8094E1D4  2C 00 00 00 */	cmpwi r0, 0
/* 8094E1D8  41 82 00 68 */	beq lbl_8094E240
/* 8094E1DC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8094E1E0  C0 3D 05 C0 */	lfs f1, 0x5c0(r29)
/* 8094E1E4  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 8094E1E8  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8094E1EC  4B 92 18 50 */	b cLib_addCalc2__FPffff
/* 8094E1F0  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8094E1F4  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 8094E1F8  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 8094E1FC  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8094E200  4B 92 18 3C */	b cLib_addCalc2__FPffff
/* 8094E204  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8094E208  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 8094E20C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 8094E210  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8094E214  4B 92 18 28 */	b cLib_addCalc2__FPffff
/* 8094E218  A8 1D 06 06 */	lha r0, 0x606(r29)
/* 8094E21C  2C 00 00 01 */	cmpwi r0, 1
/* 8094E220  40 82 00 38 */	bne lbl_8094E258
/* 8094E224  7F A3 EB 78 */	mr r3, r29
/* 8094E228  38 80 00 0B */	li r4, 0xb
/* 8094E22C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094E230  38 A0 00 02 */	li r5, 2
/* 8094E234  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8094E238  4B FF DA 71 */	bl anm_init__FP8ni_classifUcf
/* 8094E23C  48 00 00 1C */	b lbl_8094E258
lbl_8094E240:
/* 8094E240  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 8094E244  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8094E248  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 8094E24C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8094E250  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 8094E254  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_8094E258:
/* 8094E258  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8094E25C  A8 9D 05 E4 */	lha r4, 0x5e4(r29)
/* 8094E260  38 A0 00 02 */	li r5, 2
/* 8094E264  38 C0 10 00 */	li r6, 0x1000
/* 8094E268  4B 92 23 A0 */	b cLib_addCalcAngleS2__FPssss
/* 8094E26C  A8 1D 05 FE */	lha r0, 0x5fe(r29)
/* 8094E270  2C 00 00 00 */	cmpwi r0, 0
/* 8094E274  41 82 00 20 */	beq lbl_8094E294
/* 8094E278  38 60 00 00 */	li r3, 0
/* 8094E27C  B0 7D 05 FE */	sth r3, 0x5fe(r29)
/* 8094E280  38 00 00 05 */	li r0, 5
/* 8094E284  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8094E288  B0 7D 05 FC */	sth r3, 0x5fc(r29)
/* 8094E28C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E290  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_8094E294:
/* 8094E294  7F C3 F3 78 */	mr r3, r30
lbl_8094E298:
/* 8094E298  39 61 00 50 */	addi r11, r1, 0x50
/* 8094E29C  4B A1 3F 8C */	b _restgpr_29
/* 8094E2A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8094E2A4  7C 08 03 A6 */	mtlr r0
/* 8094E2A8  38 21 00 50 */	addi r1, r1, 0x50
/* 8094E2AC  4E 80 00 20 */	blr 
