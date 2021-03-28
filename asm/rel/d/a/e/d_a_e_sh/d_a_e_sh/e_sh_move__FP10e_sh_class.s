lbl_8078ECCC:
/* 8078ECCC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8078ECD0  7C 08 02 A6 */	mflr r0
/* 8078ECD4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8078ECD8  39 61 00 50 */	addi r11, r1, 0x50
/* 8078ECDC  4B BD 34 F8 */	b _savegpr_27
/* 8078ECE0  7C 7B 1B 78 */	mr r27, r3
/* 8078ECE4  3C 60 80 79 */	lis r3, lit_3902@ha
/* 8078ECE8  3B E3 1D 70 */	addi r31, r3, lit_3902@l
/* 8078ECEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078ECF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8078ECF4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8078ECF8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8078ECFC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8078ED00  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 8078ED04  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8078ED08  EC 01 00 24 */	fdivs f0, f1, f0
/* 8078ED0C  FC 00 00 1E */	fctiwz f0, f0
/* 8078ED10  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078ED14  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8078ED18  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078ED1C  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078ED20  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8078ED24  28 00 00 00 */	cmplwi r0, 0
/* 8078ED28  41 82 00 08 */	beq lbl_8078ED30
/* 8078ED2C  3B A0 00 00 */	li r29, 0
lbl_8078ED30:
/* 8078ED30  3B 80 00 00 */	li r28, 0
/* 8078ED34  38 00 00 01 */	li r0, 1
/* 8078ED38  98 1B 06 AA */	stb r0, 0x6aa(r27)
/* 8078ED3C  A8 1B 06 8C */	lha r0, 0x68c(r27)
/* 8078ED40  B0 1B 06 88 */	sth r0, 0x688(r27)
/* 8078ED44  A8 1B 06 74 */	lha r0, 0x674(r27)
/* 8078ED48  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8078ED4C  40 82 00 40 */	bne lbl_8078ED8C
/* 8078ED50  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078ED54  4B AD 8C 00 */	b cM_rndF__Ff
/* 8078ED58  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078ED5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078ED60  40 80 00 2C */	bge lbl_8078ED8C
/* 8078ED64  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009F@ha */
/* 8078ED68  38 03 00 9F */	addi r0, r3, 0x009F /* 0x0007009F@l */
/* 8078ED6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078ED70  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 8078ED74  38 81 00 0C */	addi r4, r1, 0xc
/* 8078ED78  38 A0 FF FF */	li r5, -1
/* 8078ED7C  81 9B 05 BC */	lwz r12, 0x5bc(r27)
/* 8078ED80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078ED84  7D 89 03 A6 */	mtctr r12
/* 8078ED88  4E 80 04 21 */	bctrl 
lbl_8078ED8C:
/* 8078ED8C  A8 1B 06 78 */	lha r0, 0x678(r27)
/* 8078ED90  2C 00 00 05 */	cmpwi r0, 5
/* 8078ED94  41 82 07 50 */	beq lbl_8078F4E4
/* 8078ED98  40 80 00 2C */	bge lbl_8078EDC4
/* 8078ED9C  2C 00 00 02 */	cmpwi r0, 2
/* 8078EDA0  41 82 02 B0 */	beq lbl_8078F050
/* 8078EDA4  40 80 00 14 */	bge lbl_8078EDB8
/* 8078EDA8  2C 00 00 00 */	cmpwi r0, 0
/* 8078EDAC  41 82 00 3C */	beq lbl_8078EDE8
/* 8078EDB0  40 80 00 BC */	bge lbl_8078EE6C
/* 8078EDB4  48 00 07 E8 */	b lbl_8078F59C
lbl_8078EDB8:
/* 8078EDB8  2C 00 00 04 */	cmpwi r0, 4
/* 8078EDBC  40 80 04 30 */	bge lbl_8078F1EC
/* 8078EDC0  48 00 02 DC */	b lbl_8078F09C
lbl_8078EDC4:
/* 8078EDC4  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8078EDC8  41 82 04 80 */	beq lbl_8078F248
/* 8078EDCC  40 80 00 10 */	bge lbl_8078EDDC
/* 8078EDD0  2C 00 00 07 */	cmpwi r0, 7
/* 8078EDD4  40 80 07 C8 */	bge lbl_8078F59C
/* 8078EDD8  48 00 07 38 */	b lbl_8078F510
lbl_8078EDDC:
/* 8078EDDC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8078EDE0  40 80 07 BC */	bge lbl_8078F59C
/* 8078EDE4  48 00 06 64 */	b lbl_8078F448
lbl_8078EDE8:
/* 8078EDE8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078EDEC  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078EDF0  7F 63 DB 78 */	mr r3, r27
/* 8078EDF4  38 80 00 12 */	li r4, 0x12
/* 8078EDF8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078EDFC  38 A0 00 02 */	li r5, 2
/* 8078EE00  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078EE04  4B FF F5 B1 */	bl anm_init__FP10e_sh_classifUcf
/* 8078EE08  A8 7B 06 78 */	lha r3, 0x678(r27)
/* 8078EE0C  38 03 00 01 */	addi r0, r3, 1
/* 8078EE10  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078EE14  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078EE18  4B AD 8B 3C */	b cM_rndF__Ff
/* 8078EE1C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8078EE20  EC 00 08 2A */	fadds f0, f0, f1
/* 8078EE24  FC 00 00 1E */	fctiwz f0, f0
/* 8078EE28  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078EE2C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078EE30  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8078EE34  88 1B 0C EA */	lbz r0, 0xcea(r27)
/* 8078EE38  7C 00 07 75 */	extsb. r0, r0
/* 8078EE3C  41 82 00 1C */	beq lbl_8078EE58
/* 8078EE40  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8078EE44  4B AD 8B 48 */	b cM_rndFX__Ff
/* 8078EE48  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8078EE4C  EC 00 08 2A */	fadds f0, f0, f1
/* 8078EE50  D0 1B 06 94 */	stfs f0, 0x694(r27)
/* 8078EE54  48 00 00 18 */	b lbl_8078EE6C
lbl_8078EE58:
/* 8078EE58  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8078EE5C  4B AD 8B 30 */	b cM_rndFX__Ff
/* 8078EE60  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078EE64  EC 00 08 2A */	fadds f0, f0, f1
/* 8078EE68  D0 1B 06 94 */	stfs f0, 0x694(r27)
lbl_8078EE6C:
/* 8078EE6C  3B 80 04 00 */	li r28, 0x400
/* 8078EE70  C0 5B 06 90 */	lfs f2, 0x690(r27)
/* 8078EE74  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078EE78  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078EE7C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8078EE80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078EE84  40 80 01 10 */	bge lbl_8078EF94
/* 8078EE88  38 7B 06 B4 */	addi r3, r27, 0x6b4
/* 8078EE8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078EE90  FC 40 08 90 */	fmr f2, f1
/* 8078EE94  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8078EE98  4B AE 0B A4 */	b cLib_addCalc2__FPffff
/* 8078EE9C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8078EEA0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078EEA4  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8078EEA8  4B AE 0B D8 */	b cLib_addCalc0__FPfff
/* 8078EEAC  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8078EEB0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078EEB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078EEB8  40 80 06 E4 */	bge lbl_8078F59C
/* 8078EEBC  88 1B 0C EA */	lbz r0, 0xcea(r27)
/* 8078EEC0  7C 00 07 75 */	extsb. r0, r0
/* 8078EEC4  41 82 00 18 */	beq lbl_8078EEDC
/* 8078EEC8  38 00 00 03 */	li r0, 3
/* 8078EECC  B0 1B 06 76 */	sth r0, 0x676(r27)
/* 8078EED0  38 00 00 00 */	li r0, 0
/* 8078EED4  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078EED8  48 00 06 C4 */	b lbl_8078F59C
lbl_8078EEDC:
/* 8078EEDC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8078EEE0  4B AD 8A 74 */	b cM_rndF__Ff
/* 8078EEE4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078EEE8  EC 00 08 2A */	fadds f0, f0, f1
/* 8078EEEC  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078EEF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078EEF4  4B AD 8A 60 */	b cM_rndF__Ff
/* 8078EEF8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8078EEFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078EF00  40 80 00 20 */	bge lbl_8078EF20
/* 8078EF04  7F 63 DB 78 */	mr r3, r27
/* 8078EF08  38 80 00 0E */	li r4, 0xe
/* 8078EF0C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078EF10  38 A0 00 02 */	li r5, 2
/* 8078EF14  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078EF18  4B FF F4 9D */	bl anm_init__FP10e_sh_classifUcf
/* 8078EF1C  48 00 00 4C */	b lbl_8078EF68
lbl_8078EF20:
/* 8078EF20  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078EF24  4B AD 8A 30 */	b cM_rndF__Ff
/* 8078EF28  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 8078EF2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078EF30  40 80 00 20 */	bge lbl_8078EF50
/* 8078EF34  7F 63 DB 78 */	mr r3, r27
/* 8078EF38  38 80 00 10 */	li r4, 0x10
/* 8078EF3C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078EF40  38 A0 00 02 */	li r5, 2
/* 8078EF44  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078EF48  4B FF F4 6D */	bl anm_init__FP10e_sh_classifUcf
/* 8078EF4C  48 00 00 1C */	b lbl_8078EF68
lbl_8078EF50:
/* 8078EF50  7F 63 DB 78 */	mr r3, r27
/* 8078EF54  38 80 00 11 */	li r4, 0x11
/* 8078EF58  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078EF5C  38 A0 00 02 */	li r5, 2
/* 8078EF60  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078EF64  4B FF F4 51 */	bl anm_init__FP10e_sh_classifUcf
lbl_8078EF68:
/* 8078EF68  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8078EF6C  4B AD 89 E8 */	b cM_rndF__Ff
/* 8078EF70  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8078EF74  EC 00 08 2A */	fadds f0, f0, f1
/* 8078EF78  FC 00 00 1E */	fctiwz f0, f0
/* 8078EF7C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078EF80  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078EF84  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8078EF88  38 00 00 02 */	li r0, 2
/* 8078EF8C  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078EF90  48 00 06 0C */	b lbl_8078F59C
lbl_8078EF94:
/* 8078EF94  A8 1B 06 98 */	lha r0, 0x698(r27)
/* 8078EF98  2C 00 00 00 */	cmpwi r0, 0
/* 8078EF9C  40 82 00 2C */	bne lbl_8078EFC8
/* 8078EFA0  C0 3B 06 B4 */	lfs f1, 0x6b4(r27)
/* 8078EFA4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8078EFA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078EFAC  40 81 00 1C */	ble lbl_8078EFC8
/* 8078EFB0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8078EFB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078EFB8  40 81 00 10 */	ble lbl_8078EFC8
/* 8078EFBC  38 00 00 05 */	li r0, 5
/* 8078EFC0  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078EFC4  48 00 05 D8 */	b lbl_8078F59C
lbl_8078EFC8:
/* 8078EFC8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8078EFCC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8078EFD0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8078EFD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8078EFD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078EFDC  40 80 00 08 */	bge lbl_8078EFE4
/* 8078EFE0  FC 20 00 90 */	fmr f1, f0
lbl_8078EFE4:
/* 8078EFE4  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8078EFE8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8078EFEC  EC 20 08 2A */	fadds f1, f0, f1
/* 8078EFF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078EFF4  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 8078EFF8  3C 80 80 79 */	lis r4, l_HIO@ha
/* 8078EFFC  38 84 21 08 */	addi r4, r4, l_HIO@l
/* 8078F000  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8078F004  EC 63 00 32 */	fmuls f3, f3, f0
/* 8078F008  4B AE 0A 34 */	b cLib_addCalc2__FPffff
/* 8078F00C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8078F010  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8078F014  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078F018  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8078F01C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F020  40 81 00 0C */	ble lbl_8078F02C
/* 8078F024  FC 20 00 90 */	fmr f1, f0
/* 8078F028  48 00 00 14 */	b lbl_8078F03C
lbl_8078F02C:
/* 8078F02C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078F030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F034  40 80 00 08 */	bge lbl_8078F03C
/* 8078F038  FC 20 00 90 */	fmr f1, f0
lbl_8078F03C:
/* 8078F03C  38 7B 06 B4 */	addi r3, r27, 0x6b4
/* 8078F040  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F044  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8078F048  4B AE 09 F4 */	b cLib_addCalc2__FPffff
/* 8078F04C  48 00 05 50 */	b lbl_8078F59C
lbl_8078F050:
/* 8078F050  A8 7B 06 88 */	lha r3, 0x688(r27)
/* 8078F054  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8078F058  7C 03 00 50 */	subf r0, r3, r0
/* 8078F05C  7C 00 07 34 */	extsh r0, r0
/* 8078F060  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8078F064  41 81 00 0C */	bgt lbl_8078F070
/* 8078F068  2C 00 D0 00 */	cmpwi r0, -12288
/* 8078F06C  40 80 01 08 */	bge lbl_8078F174
lbl_8078F070:
/* 8078F070  38 00 00 03 */	li r0, 3
/* 8078F074  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078F078  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078F07C  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F080  7F 63 DB 78 */	mr r3, r27
/* 8078F084  38 80 00 0D */	li r4, 0xd
/* 8078F088  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078F08C  38 A0 00 02 */	li r5, 2
/* 8078F090  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F094  4B FF F3 21 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F098  48 00 00 DC */	b lbl_8078F174
lbl_8078F09C:
/* 8078F09C  3B 80 02 00 */	li r28, 0x200
/* 8078F0A0  A8 7B 06 88 */	lha r3, 0x688(r27)
/* 8078F0A4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8078F0A8  7C 03 00 50 */	subf r0, r3, r0
/* 8078F0AC  7C 00 07 34 */	extsh r0, r0
/* 8078F0B0  2C 00 08 00 */	cmpwi r0, 0x800
/* 8078F0B4  40 80 00 C0 */	bge lbl_8078F174
/* 8078F0B8  2C 00 F8 00 */	cmpwi r0, -2048
/* 8078F0BC  40 81 00 B8 */	ble lbl_8078F174
/* 8078F0C0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8078F0C4  4B AD 88 90 */	b cM_rndF__Ff
/* 8078F0C8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078F0CC  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F0D0  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F0D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F0D8  4B AD 88 7C */	b cM_rndF__Ff
/* 8078F0DC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8078F0E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F0E4  40 80 00 20 */	bge lbl_8078F104
/* 8078F0E8  7F 63 DB 78 */	mr r3, r27
/* 8078F0EC  38 80 00 0E */	li r4, 0xe
/* 8078F0F0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F0F4  38 A0 00 02 */	li r5, 2
/* 8078F0F8  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F0FC  4B FF F2 B9 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F100  48 00 00 4C */	b lbl_8078F14C
lbl_8078F104:
/* 8078F104  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F108  4B AD 88 4C */	b cM_rndF__Ff
/* 8078F10C  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 8078F110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F114  40 80 00 20 */	bge lbl_8078F134
/* 8078F118  7F 63 DB 78 */	mr r3, r27
/* 8078F11C  38 80 00 10 */	li r4, 0x10
/* 8078F120  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F124  38 A0 00 02 */	li r5, 2
/* 8078F128  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F12C  4B FF F2 89 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F130  48 00 00 1C */	b lbl_8078F14C
lbl_8078F134:
/* 8078F134  7F 63 DB 78 */	mr r3, r27
/* 8078F138  38 80 00 11 */	li r4, 0x11
/* 8078F13C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F140  38 A0 00 02 */	li r5, 2
/* 8078F144  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F148  4B FF F2 6D */	bl anm_init__FP10e_sh_classifUcf
lbl_8078F14C:
/* 8078F14C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8078F150  4B AD 88 04 */	b cM_rndF__Ff
/* 8078F154  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8078F158  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F15C  FC 00 00 1E */	fctiwz f0, f0
/* 8078F160  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078F164  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078F168  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8078F16C  38 00 00 02 */	li r0, 2
/* 8078F170  B0 1B 06 78 */	sth r0, 0x678(r27)
lbl_8078F174:
/* 8078F174  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8078F178  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F17C  FC 40 08 90 */	fmr f2, f1
/* 8078F180  4B AE 09 00 */	b cLib_addCalc0__FPfff
/* 8078F184  C0 3B 06 90 */	lfs f1, 0x690(r27)
/* 8078F188  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078F18C  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078F190  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8078F194  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F198  41 81 00 10 */	bgt lbl_8078F1A8
/* 8078F19C  88 1B 0C EA */	lbz r0, 0xcea(r27)
/* 8078F1A0  7C 00 07 75 */	extsb. r0, r0
/* 8078F1A4  41 82 00 30 */	beq lbl_8078F1D4
lbl_8078F1A8:
/* 8078F1A8  38 00 00 00 */	li r0, 0
/* 8078F1AC  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078F1B0  88 1B 0C EA */	lbz r0, 0xcea(r27)
/* 8078F1B4  7C 00 07 75 */	extsb. r0, r0
/* 8078F1B8  41 82 03 E4 */	beq lbl_8078F59C
/* 8078F1BC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8078F1C0  4B AD 87 CC */	b cM_rndFX__Ff
/* 8078F1C4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8078F1C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F1CC  D0 1B 06 94 */	stfs f0, 0x694(r27)
/* 8078F1D0  48 00 03 CC */	b lbl_8078F59C
lbl_8078F1D4:
/* 8078F1D4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8078F1D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F1DC  40 80 03 C0 */	bge lbl_8078F59C
/* 8078F1E0  38 00 00 04 */	li r0, 4
/* 8078F1E4  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078F1E8  48 00 03 B4 */	b lbl_8078F59C
lbl_8078F1EC:
/* 8078F1EC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078F1F0  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F1F4  7F 63 DB 78 */	mr r3, r27
/* 8078F1F8  38 80 00 12 */	li r4, 0x12
/* 8078F1FC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078F200  38 A0 00 02 */	li r5, 2
/* 8078F204  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F208  4B FF F1 AD */	bl anm_init__FP10e_sh_classifUcf
/* 8078F20C  38 00 00 2D */	li r0, 0x2d
/* 8078F210  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078F214  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F218  4B AD 87 3C */	b cM_rndF__Ff
/* 8078F21C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8078F220  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F224  FC 00 00 1E */	fctiwz f0, f0
/* 8078F228  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078F22C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078F230  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8078F234  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8078F238  4B AD 87 54 */	b cM_rndFX__Ff
/* 8078F23C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078F240  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F244  D0 1B 06 94 */	stfs f0, 0x694(r27)
lbl_8078F248:
/* 8078F248  3B 80 08 00 */	li r28, 0x800
/* 8078F24C  A8 7B 06 8C */	lha r3, 0x68c(r27)
/* 8078F250  3C 63 00 01 */	addis r3, r3, 1
/* 8078F254  38 03 80 00 */	addi r0, r3, -32768
/* 8078F258  B0 1B 06 88 */	sth r0, 0x688(r27)
/* 8078F25C  C0 5B 06 90 */	lfs f2, 0x690(r27)
/* 8078F260  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8078F264  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078F268  38 83 21 08 */	addi r4, r3, l_HIO@l
/* 8078F26C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8078F270  EC 01 00 2A */	fadds f0, f1, f0
/* 8078F274  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078F278  40 81 01 00 */	ble lbl_8078F378
/* 8078F27C  38 7B 06 B4 */	addi r3, r27, 0x6b4
/* 8078F280  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F284  FC 40 08 90 */	fmr f2, f1
/* 8078F288  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8078F28C  4B AE 07 B0 */	b cLib_addCalc2__FPffff
/* 8078F290  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8078F294  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F298  FC 40 08 90 */	fmr f2, f1
/* 8078F29C  4B AE 07 E4 */	b cLib_addCalc0__FPfff
/* 8078F2A0  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8078F2A4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8078F2A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F2AC  40 80 00 BC */	bge lbl_8078F368
/* 8078F2B0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8078F2B4  4B AD 86 A0 */	b cM_rndF__Ff
/* 8078F2B8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078F2BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F2C0  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F2C4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F2C8  4B AD 86 8C */	b cM_rndF__Ff
/* 8078F2CC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8078F2D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F2D4  40 80 00 20 */	bge lbl_8078F2F4
/* 8078F2D8  7F 63 DB 78 */	mr r3, r27
/* 8078F2DC  38 80 00 0E */	li r4, 0xe
/* 8078F2E0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F2E4  38 A0 00 02 */	li r5, 2
/* 8078F2E8  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F2EC  4B FF F0 C9 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F2F0  48 00 00 4C */	b lbl_8078F33C
lbl_8078F2F4:
/* 8078F2F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F2F8  4B AD 86 5C */	b cM_rndF__Ff
/* 8078F2FC  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 8078F300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F304  40 80 00 20 */	bge lbl_8078F324
/* 8078F308  7F 63 DB 78 */	mr r3, r27
/* 8078F30C  38 80 00 10 */	li r4, 0x10
/* 8078F310  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F314  38 A0 00 02 */	li r5, 2
/* 8078F318  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F31C  4B FF F0 99 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F320  48 00 00 1C */	b lbl_8078F33C
lbl_8078F324:
/* 8078F324  7F 63 DB 78 */	mr r3, r27
/* 8078F328  38 80 00 11 */	li r4, 0x11
/* 8078F32C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F330  38 A0 00 02 */	li r5, 2
/* 8078F334  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F338  4B FF F0 7D */	bl anm_init__FP10e_sh_classifUcf
lbl_8078F33C:
/* 8078F33C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8078F340  4B AD 86 14 */	b cM_rndF__Ff
/* 8078F344  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8078F348  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F34C  FC 00 00 1E */	fctiwz f0, f0
/* 8078F350  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078F354  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078F358  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8078F35C  38 00 00 02 */	li r0, 2
/* 8078F360  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078F364  48 00 02 38 */	b lbl_8078F59C
lbl_8078F368:
/* 8078F368  3B 80 04 00 */	li r28, 0x400
/* 8078F36C  A8 1B 06 8C */	lha r0, 0x68c(r27)
/* 8078F370  B0 1B 06 88 */	sth r0, 0x688(r27)
/* 8078F374  48 00 02 28 */	b lbl_8078F59C
lbl_8078F378:
/* 8078F378  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8078F37C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078F380  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8078F384  EC 21 00 2A */	fadds f1, f1, f0
/* 8078F388  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F38C  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 8078F390  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8078F394  EC 63 00 32 */	fmuls f3, f3, f0
/* 8078F398  4B AE 06 A4 */	b cLib_addCalc2__FPffff
/* 8078F39C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8078F3A0  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8078F3A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078F3A8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8078F3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F3B0  40 81 00 0C */	ble lbl_8078F3BC
/* 8078F3B4  FC 20 00 90 */	fmr f1, f0
/* 8078F3B8  48 00 00 14 */	b lbl_8078F3CC
lbl_8078F3BC:
/* 8078F3BC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078F3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F3C4  40 80 00 08 */	bge lbl_8078F3CC
/* 8078F3C8  FC 20 00 90 */	fmr f1, f0
lbl_8078F3CC:
/* 8078F3CC  38 7B 06 B4 */	addi r3, r27, 0x6b4
/* 8078F3D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F3D4  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8078F3D8  4B AE 06 64 */	b cLib_addCalc2__FPffff
/* 8078F3DC  C0 3B 06 B4 */	lfs f1, 0x6b4(r27)
/* 8078F3E0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8078F3E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F3E8  4C 41 13 82 */	cror 2, 1, 2
/* 8078F3EC  40 82 01 B0 */	bne lbl_8078F59C
/* 8078F3F0  A8 1B 06 98 */	lha r0, 0x698(r27)
/* 8078F3F4  2C 00 00 00 */	cmpwi r0, 0
/* 8078F3F8  40 82 01 A4 */	bne lbl_8078F59C
/* 8078F3FC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8078F400  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F404  7F 63 DB 78 */	mr r3, r27
/* 8078F408  38 80 00 0A */	li r4, 0xa
/* 8078F40C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8078F410  38 A0 00 02 */	li r5, 2
/* 8078F414  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F418  4B FF EF 9D */	bl anm_init__FP10e_sh_classifUcf
/* 8078F41C  38 00 00 2E */	li r0, 0x2e
/* 8078F420  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078F424  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078F428  4B AD 85 2C */	b cM_rndF__Ff
/* 8078F42C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8078F430  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F434  FC 00 00 1E */	fctiwz f0, f0
/* 8078F438  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078F43C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078F440  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8078F444  48 00 01 58 */	b lbl_8078F59C
lbl_8078F448:
/* 8078F448  3B 80 0A 00 */	li r28, 0xa00
/* 8078F44C  A8 7B 06 8C */	lha r3, 0x68c(r27)
/* 8078F450  3C 63 00 01 */	addis r3, r3, 1
/* 8078F454  38 03 80 00 */	addi r0, r3, -32768
/* 8078F458  B0 1B 06 88 */	sth r0, 0x688(r27)
/* 8078F45C  38 7B 06 B4 */	addi r3, r27, 0x6b4
/* 8078F460  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8078F464  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F468  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8078F46C  4B AE 05 D0 */	b cLib_addCalc2__FPffff
/* 8078F470  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078F474  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078F478  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8078F47C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8078F480  C0 1B 06 B4 */	lfs f0, 0x6b4(r27)
/* 8078F484  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8078F488  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F48C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078F490  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8078F494  4B AE 05 A8 */	b cLib_addCalc2__FPffff
/* 8078F498  C0 5B 06 90 */	lfs f2, 0x690(r27)
/* 8078F49C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8078F4A0  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078F4A4  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078F4A8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8078F4AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8078F4B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078F4B4  40 81 00 E8 */	ble lbl_8078F59C
/* 8078F4B8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8078F4BC  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F4C0  7F 63 DB 78 */	mr r3, r27
/* 8078F4C4  38 80 00 12 */	li r4, 0x12
/* 8078F4C8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8078F4CC  38 A0 00 02 */	li r5, 2
/* 8078F4D0  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F4D4  4B FF EE E1 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F4D8  38 00 00 2D */	li r0, 0x2d
/* 8078F4DC  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 8078F4E0  48 00 00 BC */	b lbl_8078F59C
lbl_8078F4E4:
/* 8078F4E4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8078F4E8  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F4EC  7F 63 DB 78 */	mr r3, r27
/* 8078F4F0  38 80 00 0A */	li r4, 0xa
/* 8078F4F4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8078F4F8  38 A0 00 02 */	li r5, 2
/* 8078F4FC  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F500  4B FF EE B5 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F504  A8 7B 06 78 */	lha r3, 0x678(r27)
/* 8078F508  38 03 00 01 */	addi r0, r3, 1
/* 8078F50C  B0 1B 06 78 */	sth r0, 0x678(r27)
lbl_8078F510:
/* 8078F510  3B 80 0A 00 */	li r28, 0xa00
/* 8078F514  38 7B 06 B4 */	addi r3, r27, 0x6b4
/* 8078F518  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8078F51C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F520  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8078F524  4B AE 05 18 */	b cLib_addCalc2__FPffff
/* 8078F528  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078F52C  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078F530  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8078F534  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8078F538  C0 1B 06 B4 */	lfs f0, 0x6b4(r27)
/* 8078F53C  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8078F540  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F544  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078F548  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8078F54C  4B AE 04 F0 */	b cLib_addCalc2__FPffff
/* 8078F550  A8 1B 06 9C */	lha r0, 0x69c(r27)
/* 8078F554  2C 00 00 00 */	cmpwi r0, 0
/* 8078F558  40 82 00 44 */	bne lbl_8078F59C
/* 8078F55C  C0 3B 06 90 */	lfs f1, 0x690(r27)
/* 8078F560  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078F564  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078F568  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8078F56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F570  40 80 00 2C */	bge lbl_8078F59C
/* 8078F574  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8078F578  D0 1B 06 B4 */	stfs f0, 0x6b4(r27)
/* 8078F57C  7F 63 DB 78 */	mr r3, r27
/* 8078F580  38 80 00 12 */	li r4, 0x12
/* 8078F584  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8078F588  38 A0 00 02 */	li r5, 2
/* 8078F58C  C0 5B 06 B4 */	lfs f2, 0x6b4(r27)
/* 8078F590  4B FF EE 25 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F594  38 00 00 01 */	li r0, 1
/* 8078F598  B0 1B 06 78 */	sth r0, 0x678(r27)
lbl_8078F59C:
/* 8078F59C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8078F5A0  A8 9B 06 88 */	lha r4, 0x688(r27)
/* 8078F5A4  38 A0 00 08 */	li r5, 8
/* 8078F5A8  7F 86 E3 78 */	mr r6, r28
/* 8078F5AC  4B AE 10 5C */	b cLib_addCalcAngleS2__FPssss
/* 8078F5B0  C0 1B 06 B4 */	lfs f0, 0x6b4(r27)
/* 8078F5B4  80 7B 05 B8 */	lwz r3, 0x5b8(r27)
/* 8078F5B8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8078F5BC  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8078F5C0  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 8078F5C4  38 A0 00 04 */	li r5, 4
/* 8078F5C8  38 C0 20 00 */	li r6, 0x2000
/* 8078F5CC  4B AE 10 3C */	b cLib_addCalcAngleS2__FPssss
/* 8078F5D0  38 61 00 10 */	addi r3, r1, 0x10
/* 8078F5D4  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 8078F5D8  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8078F5DC  4B AD 75 58 */	b __mi__4cXyzCFRC3Vec
/* 8078F5E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8078F5E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8078F5E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8078F5EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078F5F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8078F5F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078F5F8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8078F5FC  4B BB 7B 3C */	b PSVECSquareMag
/* 8078F600  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8078F604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F608  40 81 00 58 */	ble lbl_8078F660
/* 8078F60C  FC 00 08 34 */	frsqrte f0, f1
/* 8078F610  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8078F614  FC 44 00 32 */	fmul f2, f4, f0
/* 8078F618  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8078F61C  FC 00 00 32 */	fmul f0, f0, f0
/* 8078F620  FC 01 00 32 */	fmul f0, f1, f0
/* 8078F624  FC 03 00 28 */	fsub f0, f3, f0
/* 8078F628  FC 02 00 32 */	fmul f0, f2, f0
/* 8078F62C  FC 44 00 32 */	fmul f2, f4, f0
/* 8078F630  FC 00 00 32 */	fmul f0, f0, f0
/* 8078F634  FC 01 00 32 */	fmul f0, f1, f0
/* 8078F638  FC 03 00 28 */	fsub f0, f3, f0
/* 8078F63C  FC 02 00 32 */	fmul f0, f2, f0
/* 8078F640  FC 44 00 32 */	fmul f2, f4, f0
/* 8078F644  FC 00 00 32 */	fmul f0, f0, f0
/* 8078F648  FC 01 00 32 */	fmul f0, f1, f0
/* 8078F64C  FC 03 00 28 */	fsub f0, f3, f0
/* 8078F650  FC 02 00 32 */	fmul f0, f2, f0
/* 8078F654  FC 21 00 32 */	fmul f1, f1, f0
/* 8078F658  FC 20 08 18 */	frsp f1, f1
/* 8078F65C  48 00 00 88 */	b lbl_8078F6E4
lbl_8078F660:
/* 8078F660  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8078F664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F668  40 80 00 10 */	bge lbl_8078F678
/* 8078F66C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078F670  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8078F674  48 00 00 70 */	b lbl_8078F6E4
lbl_8078F678:
/* 8078F678  D0 21 00 08 */	stfs f1, 8(r1)
/* 8078F67C  80 81 00 08 */	lwz r4, 8(r1)
/* 8078F680  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078F684  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078F688  7C 03 00 00 */	cmpw r3, r0
/* 8078F68C  41 82 00 14 */	beq lbl_8078F6A0
/* 8078F690  40 80 00 40 */	bge lbl_8078F6D0
/* 8078F694  2C 03 00 00 */	cmpwi r3, 0
/* 8078F698  41 82 00 20 */	beq lbl_8078F6B8
/* 8078F69C  48 00 00 34 */	b lbl_8078F6D0
lbl_8078F6A0:
/* 8078F6A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078F6A4  41 82 00 0C */	beq lbl_8078F6B0
/* 8078F6A8  38 00 00 01 */	li r0, 1
/* 8078F6AC  48 00 00 28 */	b lbl_8078F6D4
lbl_8078F6B0:
/* 8078F6B0  38 00 00 02 */	li r0, 2
/* 8078F6B4  48 00 00 20 */	b lbl_8078F6D4
lbl_8078F6B8:
/* 8078F6B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078F6BC  41 82 00 0C */	beq lbl_8078F6C8
/* 8078F6C0  38 00 00 05 */	li r0, 5
/* 8078F6C4  48 00 00 10 */	b lbl_8078F6D4
lbl_8078F6C8:
/* 8078F6C8  38 00 00 03 */	li r0, 3
/* 8078F6CC  48 00 00 08 */	b lbl_8078F6D4
lbl_8078F6D0:
/* 8078F6D0  38 00 00 04 */	li r0, 4
lbl_8078F6D4:
/* 8078F6D4  2C 00 00 01 */	cmpwi r0, 1
/* 8078F6D8  40 82 00 0C */	bne lbl_8078F6E4
/* 8078F6DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078F6E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8078F6E4:
/* 8078F6E4  C0 1B 06 BC */	lfs f0, 0x6bc(r27)
/* 8078F6E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F6EC  41 81 00 14 */	bgt lbl_8078F700
/* 8078F6F0  2C 1D 00 04 */	cmpwi r29, 4
/* 8078F6F4  40 81 00 1C */	ble lbl_8078F710
/* 8078F6F8  2C 1D 00 13 */	cmpwi r29, 0x13
/* 8078F6FC  40 80 00 14 */	bge lbl_8078F710
lbl_8078F700:
/* 8078F700  38 00 00 05 */	li r0, 5
/* 8078F704  B0 1B 06 76 */	sth r0, 0x676(r27)
/* 8078F708  38 00 00 00 */	li r0, 0
/* 8078F70C  B0 1B 06 78 */	sth r0, 0x678(r27)
lbl_8078F710:
/* 8078F710  39 61 00 50 */	addi r11, r1, 0x50
/* 8078F714  4B BD 2B 0C */	b _restgpr_27
/* 8078F718  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8078F71C  7C 08 03 A6 */	mtlr r0
/* 8078F720  38 21 00 50 */	addi r1, r1, 0x50
/* 8078F724  4E 80 00 20 */	blr 
