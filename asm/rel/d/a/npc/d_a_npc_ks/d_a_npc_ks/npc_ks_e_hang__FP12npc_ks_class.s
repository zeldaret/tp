lbl_80A4EE18:
/* 80A4EE18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A4EE1C  7C 08 02 A6 */	mflr r0
/* 80A4EE20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A4EE24  39 61 00 30 */	addi r11, r1, 0x30
/* 80A4EE28  4B 91 33 B4 */	b _savegpr_29
/* 80A4EE2C  7C 7D 1B 78 */	mr r29, r3
/* 80A4EE30  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A4EE34  3B C3 DE FC */	addi r30, r3, lit_4030@l
/* 80A4EE38  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 80A4EE3C  90 01 00 08 */	stw r0, 8(r1)
/* 80A4EE40  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A4EE44  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A4EE48  38 81 00 08 */	addi r4, r1, 8
/* 80A4EE4C  4B 5C A9 AC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A4EE50  7C 7F 1B 78 */	mr r31, r3
/* 80A4EE54  C0 23 09 00 */	lfs f1, 0x900(r3)
/* 80A4EE58  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80A4EE5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A4EE60  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 80A4EE64  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A4EE68  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80A4EE6C  38 04 40 00 */	addi r0, r4, 0x4000
/* 80A4EE70  7C 04 07 34 */	extsh r4, r0
/* 80A4EE74  38 A0 00 02 */	li r5, 2
/* 80A4EE78  38 C0 08 00 */	li r6, 0x800
/* 80A4EE7C  4B 82 17 8C */	b cLib_addCalcAngleS2__FPssss
/* 80A4EE80  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A4EE84  2C 00 00 03 */	cmpwi r0, 3
/* 80A4EE88  41 82 01 44 */	beq lbl_80A4EFCC
/* 80A4EE8C  40 80 00 1C */	bge lbl_80A4EEA8
/* 80A4EE90  2C 00 00 01 */	cmpwi r0, 1
/* 80A4EE94  41 82 02 34 */	beq lbl_80A4F0C8
/* 80A4EE98  40 80 00 B8 */	bge lbl_80A4EF50
/* 80A4EE9C  2C 00 00 00 */	cmpwi r0, 0
/* 80A4EEA0  40 80 00 14 */	bge lbl_80A4EEB4
/* 80A4EEA4  48 00 02 24 */	b lbl_80A4F0C8
lbl_80A4EEA8:
/* 80A4EEA8  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A4EEAC  41 82 01 48 */	beq lbl_80A4EFF4
/* 80A4EEB0  48 00 02 18 */	b lbl_80A4F0C8
lbl_80A4EEB4:
/* 80A4EEB4  38 00 00 14 */	li r0, 0x14
/* 80A4EEB8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4EEBC  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003000E@ha */
/* 80A4EEC0  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0003000E@l */
/* 80A4EEC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4EEC8  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4EECC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A4EED0  38 A0 00 00 */	li r5, 0
/* 80A4EED4  38 C0 FF FF */	li r6, -1
/* 80A4EED8  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4EEDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4EEE0  7D 89 03 A6 */	mtctr r12
/* 80A4EEE4  4E 80 04 21 */	bctrl 
/* 80A4EEE8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A4EEEC  D0 1F 08 FC */	stfs f0, 0x8fc(r31)
/* 80A4EEF0  38 80 00 0A */	li r4, 0xa
/* 80A4EEF4  80 1D 06 30 */	lwz r0, 0x630(r29)
/* 80A4EEF8  7C 7F 02 14 */	add r3, r31, r0
/* 80A4EEFC  98 83 0D 10 */	stb r4, 0xd10(r3)
/* 80A4EF00  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A4EF04  B0 1D 04 B6 */	sth r0, 0x4b6(r29)
/* 80A4EF08  38 00 C0 00 */	li r0, -16384
/* 80A4EF0C  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 80A4EF10  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80A4EF14  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 80A4EF18  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 80A4EF1C  28 00 00 00 */	cmplwi r0, 0
/* 80A4EF20  40 82 01 A8 */	bne lbl_80A4F0C8
/* 80A4EF24  7F A3 EB 78 */	mr r3, r29
/* 80A4EF28  38 80 00 18 */	li r4, 0x18
/* 80A4EF2C  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A4EF30  38 A0 00 02 */	li r5, 2
/* 80A4EF34  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4EF38  4B FF A2 6D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4EF3C  38 00 27 10 */	li r0, 0x2710
/* 80A4EF40  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A4EF44  38 00 00 0F */	li r0, 0xf
/* 80A4EF48  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 80A4EF4C  48 00 01 7C */	b lbl_80A4F0C8
lbl_80A4EF50:
/* 80A4EF50  7F A3 EB 78 */	mr r3, r29
/* 80A4EF54  38 80 00 30 */	li r4, 0x30
/* 80A4EF58  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80A4EF5C  38 A0 00 02 */	li r5, 2
/* 80A4EF60  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4EF64  4B FF A2 41 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4EF68  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003000E@ha */
/* 80A4EF6C  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0003000E@l */
/* 80A4EF70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A4EF74  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4EF78  38 81 00 0C */	addi r4, r1, 0xc
/* 80A4EF7C  38 A0 00 00 */	li r5, 0
/* 80A4EF80  38 C0 FF FF */	li r6, -1
/* 80A4EF84  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4EF88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4EF8C  7D 89 03 A6 */	mtctr r12
/* 80A4EF90  4E 80 04 21 */	bctrl 
/* 80A4EF94  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A4EF98  D0 1F 08 FC */	stfs f0, 0x8fc(r31)
/* 80A4EF9C  38 80 00 0A */	li r4, 0xa
/* 80A4EFA0  80 1D 06 30 */	lwz r0, 0x630(r29)
/* 80A4EFA4  7C 7F 02 14 */	add r3, r31, r0
/* 80A4EFA8  98 83 0D 10 */	stb r4, 0xd10(r3)
/* 80A4EFAC  38 00 80 00 */	li r0, -32768
/* 80A4EFB0  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 80A4EFB4  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80A4EFB8  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 80A4EFBC  A8 7D 05 EA */	lha r3, 0x5ea(r29)
/* 80A4EFC0  38 03 00 01 */	addi r0, r3, 1
/* 80A4EFC4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4EFC8  48 00 01 00 */	b lbl_80A4F0C8
lbl_80A4EFCC:
/* 80A4EFCC  A8 1D 05 FA */	lha r0, 0x5fa(r29)
/* 80A4EFD0  2C 00 C8 00 */	cmpwi r0, -14336
/* 80A4EFD4  40 82 00 F4 */	bne lbl_80A4F0C8
/* 80A4EFD8  38 00 00 0A */	li r0, 0xa
/* 80A4EFDC  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80A4EFE0  38 00 00 14 */	li r0, 0x14
/* 80A4EFE4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4EFE8  38 00 00 00 */	li r0, 0
/* 80A4EFEC  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A4EFF0  48 00 00 D8 */	b lbl_80A4F0C8
lbl_80A4EFF4:
/* 80A4EFF4  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A4EFF8  2C 00 00 00 */	cmpwi r0, 0
/* 80A4EFFC  40 82 00 8C */	bne lbl_80A4F088
/* 80A4F000  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4F004  4B 81 89 50 */	b cM_rndF__Ff
/* 80A4F008  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80A4F00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F010  40 80 00 20 */	bge lbl_80A4F030
/* 80A4F014  7F A3 EB 78 */	mr r3, r29
/* 80A4F018  38 80 00 11 */	li r4, 0x11
/* 80A4F01C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80A4F020  38 A0 00 02 */	li r5, 2
/* 80A4F024  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4F028  4B FF A1 7D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F02C  48 00 00 4C */	b lbl_80A4F078
lbl_80A4F030:
/* 80A4F030  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4F034  4B 81 89 20 */	b cM_rndF__Ff
/* 80A4F038  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80A4F03C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4F040  40 80 00 20 */	bge lbl_80A4F060
/* 80A4F044  7F A3 EB 78 */	mr r3, r29
/* 80A4F048  38 80 00 12 */	li r4, 0x12
/* 80A4F04C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80A4F050  38 A0 00 02 */	li r5, 2
/* 80A4F054  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4F058  4B FF A1 4D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F05C  48 00 00 1C */	b lbl_80A4F078
lbl_80A4F060:
/* 80A4F060  7F A3 EB 78 */	mr r3, r29
/* 80A4F064  38 80 00 13 */	li r4, 0x13
/* 80A4F068  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80A4F06C  38 A0 00 02 */	li r5, 2
/* 80A4F070  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4F074  4B FF A1 31 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4F078:
/* 80A4F078  38 00 27 10 */	li r0, 0x2710
/* 80A4F07C  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A4F080  38 00 00 23 */	li r0, 0x23
/* 80A4F084  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
lbl_80A4F088:
/* 80A4F088  A8 1D 05 F2 */	lha r0, 0x5f2(r29)
/* 80A4F08C  2C 00 00 01 */	cmpwi r0, 1
/* 80A4F090  40 82 00 20 */	bne lbl_80A4F0B0
/* 80A4F094  7F A3 EB 78 */	mr r3, r29
/* 80A4F098  38 80 00 18 */	li r4, 0x18
/* 80A4F09C  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80A4F0A0  38 A0 00 02 */	li r5, 2
/* 80A4F0A4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4F0A8  4B FF A0 FD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4F0AC  48 00 00 1C */	b lbl_80A4F0C8
lbl_80A4F0B0:
/* 80A4F0B0  7C 00 07 35 */	extsh. r0, r0
/* 80A4F0B4  40 82 00 14 */	bne lbl_80A4F0C8
/* 80A4F0B8  38 00 40 00 */	li r0, 0x4000
/* 80A4F0BC  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 80A4F0C0  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80A4F0C4  D0 1D 06 0C */	stfs f0, 0x60c(r29)
lbl_80A4F0C8:
/* 80A4F0C8  80 1D 06 30 */	lwz r0, 0x630(r29)
/* 80A4F0CC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80A4F0D0  38 63 09 20 */	addi r3, r3, 0x920
/* 80A4F0D4  7C 7F 1A 14 */	add r3, r31, r3
/* 80A4F0D8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A4F0DC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A4F0E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A4F0E4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A4F0E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A4F0EC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A4F0F0  A8 1D 05 FA */	lha r0, 0x5fa(r29)
/* 80A4F0F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A4F0F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A4F0FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A4F100  7C 23 04 2E */	lfsx f1, r3, r0
/* 80A4F104  38 7D 06 02 */	addi r3, r29, 0x602
/* 80A4F108  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 80A4F10C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A4F110  FC 00 00 1E */	fctiwz f0, f0
/* 80A4F114  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A4F118  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80A4F11C  38 A0 00 04 */	li r5, 4
/* 80A4F120  38 C0 10 00 */	li r6, 0x1000
/* 80A4F124  4B 82 14 E4 */	b cLib_addCalcAngleS2__FPssss
/* 80A4F128  A8 7D 05 FA */	lha r3, 0x5fa(r29)
/* 80A4F12C  38 03 08 00 */	addi r0, r3, 0x800
/* 80A4F130  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 80A4F134  A8 1D 06 02 */	lha r0, 0x602(r29)
/* 80A4F138  7C 00 16 70 */	srawi r0, r0, 2
/* 80A4F13C  7C 00 01 94 */	addze r0, r0
/* 80A4F140  7C 00 00 D0 */	neg r0, r0
/* 80A4F144  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80A4F148  38 7D 06 0C */	addi r3, r29, 0x60c
/* 80A4F14C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80A4F150  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80A4F154  4B 82 09 2C */	b cLib_addCalc0__FPfff
/* 80A4F158  39 61 00 30 */	addi r11, r1, 0x30
/* 80A4F15C  4B 91 30 CC */	b _restgpr_29
/* 80A4F160  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A4F164  7C 08 03 A6 */	mtlr r0
/* 80A4F168  38 21 00 30 */	addi r1, r1, 0x30
/* 80A4F16C  4E 80 00 20 */	blr 
