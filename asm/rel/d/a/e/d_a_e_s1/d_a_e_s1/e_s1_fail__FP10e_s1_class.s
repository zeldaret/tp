lbl_8077CF30:
/* 8077CF30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8077CF34  7C 08 02 A6 */	mflr r0
/* 8077CF38  90 01 00 54 */	stw r0, 0x54(r1)
/* 8077CF3C  39 61 00 50 */	addi r11, r1, 0x50
/* 8077CF40  4B BE 52 98 */	b _savegpr_28
/* 8077CF44  7C 7D 1B 78 */	mr r29, r3
/* 8077CF48  3C 60 80 78 */	lis r3, lit_3903@ha
/* 8077CF4C  3B C3 0D C4 */	addi r30, r3, lit_3903@l
/* 8077CF50  38 00 00 14 */	li r0, 0x14
/* 8077CF54  B0 1D 06 A8 */	sth r0, 0x6a8(r29)
/* 8077CF58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077CF5C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8077CF60  38 7F 4E 20 */	addi r3, r31, 0x4e20
/* 8077CF64  81 9F 4E 20 */	lwz r12, 0x4e20(r31)
/* 8077CF68  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8077CF6C  7D 89 03 A6 */	mtctr r12
/* 8077CF70  4E 80 04 21 */	bctrl 
/* 8077CF74  7C 7C 1B 78 */	mr r28, r3
/* 8077CF78  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 8077CF7C  28 00 00 1E */	cmplwi r0, 0x1e
/* 8077CF80  41 81 04 B0 */	bgt lbl_8077D430
/* 8077CF84  3C 60 80 78 */	lis r3, lit_4986@ha
/* 8077CF88  38 63 0F E4 */	addi r3, r3, lit_4986@l
/* 8077CF8C  54 00 10 3A */	slwi r0, r0, 2
/* 8077CF90  7C 03 00 2E */	lwzx r0, r3, r0
/* 8077CF94  7C 09 03 A6 */	mtctr r0
/* 8077CF98  4E 80 04 20 */	bctr 
lbl_8077CF9C:
/* 8077CF9C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077CFA0  4B AE A9 B4 */	b cM_rndF__Ff
/* 8077CFA4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8077CFA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077CFAC  40 80 00 20 */	bge lbl_8077CFCC
/* 8077CFB0  7F A3 EB 78 */	mr r3, r29
/* 8077CFB4  38 80 00 0A */	li r4, 0xa
/* 8077CFB8  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8077CFBC  38 A0 00 00 */	li r5, 0
/* 8077CFC0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077CFC4  4B FF DC 35 */	bl anm_init__FP10e_s1_classifUcf
/* 8077CFC8  48 00 00 4C */	b lbl_8077D014
lbl_8077CFCC:
/* 8077CFCC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077CFD0  4B AE A9 84 */	b cM_rndF__Ff
/* 8077CFD4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8077CFD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077CFDC  40 80 00 20 */	bge lbl_8077CFFC
/* 8077CFE0  7F A3 EB 78 */	mr r3, r29
/* 8077CFE4  38 80 00 0B */	li r4, 0xb
/* 8077CFE8  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8077CFEC  38 A0 00 00 */	li r5, 0
/* 8077CFF0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077CFF4  4B FF DC 05 */	bl anm_init__FP10e_s1_classifUcf
/* 8077CFF8  48 00 00 1C */	b lbl_8077D014
lbl_8077CFFC:
/* 8077CFFC  7F A3 EB 78 */	mr r3, r29
/* 8077D000  38 80 00 0C */	li r4, 0xc
/* 8077D004  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8077D008  38 A0 00 00 */	li r5, 0
/* 8077D00C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077D010  4B FF DB E9 */	bl anm_init__FP10e_s1_classifUcf
lbl_8077D014:
/* 8077D014  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8077D018  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 8077D01C  40 82 00 4C */	bne lbl_8077D068
/* 8077D020  38 00 00 01 */	li r0, 1
/* 8077D024  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D028  7F A3 EB 78 */	mr r3, r29
/* 8077D02C  4B FF F9 AD */	bl all_fail_check__FP10e_s1_class
/* 8077D030  2C 03 00 00 */	cmpwi r3, 0
/* 8077D034  41 82 03 FC */	beq lbl_8077D430
/* 8077D038  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8077D03C  28 00 00 00 */	cmplwi r0, 0
/* 8077D040  40 82 03 F0 */	bne lbl_8077D430
/* 8077D044  38 00 00 01 */	li r0, 1
/* 8077D048  B0 1D 30 38 */	sth r0, 0x3038(r29)
/* 8077D04C  7F A3 EB 78 */	mr r3, r29
/* 8077D050  38 80 00 0A */	li r4, 0xa
/* 8077D054  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8077D058  38 A0 00 00 */	li r5, 0
/* 8077D05C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077D060  4B FF DB 99 */	bl anm_init__FP10e_s1_classifUcf
/* 8077D064  48 00 03 CC */	b lbl_8077D430
lbl_8077D068:
/* 8077D068  38 00 00 1E */	li r0, 0x1e
/* 8077D06C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D070  48 00 03 C0 */	b lbl_8077D430
lbl_8077D074:
/* 8077D074  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077D078  38 63 00 0C */	addi r3, r3, 0xc
/* 8077D07C  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8077D080  4B BA B3 AC */	b checkPass__12J3DFrameCtrlFf
/* 8077D084  2C 03 00 00 */	cmpwi r3, 0
/* 8077D088  41 82 00 30 */	beq lbl_8077D0B8
/* 8077D08C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000F@ha */
/* 8077D090  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0007000F@l */
/* 8077D094  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077D098  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 8077D09C  38 81 00 10 */	addi r4, r1, 0x10
/* 8077D0A0  38 A0 00 00 */	li r5, 0
/* 8077D0A4  38 C0 FF FF */	li r6, -1
/* 8077D0A8  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 8077D0AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077D0B0  7D 89 03 A6 */	mtctr r12
/* 8077D0B4  4E 80 04 21 */	bctrl 
lbl_8077D0B8:
/* 8077D0B8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077D0BC  38 80 00 01 */	li r4, 1
/* 8077D0C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077D0C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077D0C8  40 82 00 18 */	bne lbl_8077D0E0
/* 8077D0CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8077D0D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077D0D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077D0D8  41 82 00 08 */	beq lbl_8077D0E0
/* 8077D0DC  38 80 00 00 */	li r4, 0
lbl_8077D0E0:
/* 8077D0E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077D0E4  41 82 03 4C */	beq lbl_8077D430
/* 8077D0E8  38 00 00 0A */	li r0, 0xa
/* 8077D0EC  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D0F0  38 00 00 00 */	li r0, 0
/* 8077D0F4  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 8077D0F8  48 00 03 38 */	b lbl_8077D430
lbl_8077D0FC:
/* 8077D0FC  7F A3 EB 78 */	mr r3, r29
/* 8077D100  4B FF F8 D9 */	bl all_fail_check__FP10e_s1_class
/* 8077D104  2C 03 00 00 */	cmpwi r3, 0
/* 8077D108  41 82 03 28 */	beq lbl_8077D430
/* 8077D10C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8077D110  4B AE A8 44 */	b cM_rndF__Ff
/* 8077D114  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8077D118  EC 00 08 2A */	fadds f0, f0, f1
/* 8077D11C  FC 00 00 1E */	fctiwz f0, f0
/* 8077D120  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8077D124  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077D128  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 8077D12C  38 00 00 0B */	li r0, 0xb
/* 8077D130  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D134  7F A3 EB 78 */	mr r3, r29
/* 8077D138  4B FF F9 6D */	bl all_fail__FP10e_s1_class
/* 8077D13C  48 00 02 F4 */	b lbl_8077D430
lbl_8077D140:
/* 8077D140  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 8077D144  2C 00 00 00 */	cmpwi r0, 0
/* 8077D148  40 82 02 E8 */	bne lbl_8077D430
/* 8077D14C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077D150  80 63 00 04 */	lwz r3, 4(r3)
/* 8077D154  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077D158  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077D15C  38 63 00 60 */	addi r3, r3, 0x60
/* 8077D160  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8077D164  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8077D168  80 84 00 00 */	lwz r4, 0(r4)
/* 8077D16C  4B BC 93 44 */	b PSMTXCopy
/* 8077D170  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077D174  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8077D178  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8077D17C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8077D180  38 61 00 20 */	addi r3, r1, 0x20
/* 8077D184  38 81 00 14 */	addi r4, r1, 0x14
/* 8077D188  4B AF 3D 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 8077D18C  A8 1D 30 38 */	lha r0, 0x3038(r29)
/* 8077D190  2C 00 00 00 */	cmpwi r0, 0
/* 8077D194  41 82 00 10 */	beq lbl_8077D1A4
/* 8077D198  38 00 00 14 */	li r0, 0x14
/* 8077D19C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D1A0  48 00 00 24 */	b lbl_8077D1C4
lbl_8077D1A4:
/* 8077D1A4  7F A3 EB 78 */	mr r3, r29
/* 8077D1A8  4B 89 CA D4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8077D1AC  7F A3 EB 78 */	mr r3, r29
/* 8077D1B0  38 81 00 14 */	addi r4, r1, 0x14
/* 8077D1B4  38 A0 00 0C */	li r5, 0xc
/* 8077D1B8  38 C0 00 01 */	li r6, 1
/* 8077D1BC  38 E0 00 31 */	li r7, 0x31
/* 8077D1C0  4B 89 F9 18 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_8077D1C4:
/* 8077D1C4  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 8077D1C8  3C 80 80 78 */	lis r4, stringBase0@ha
/* 8077D1CC  38 84 0F 74 */	addi r4, r4, stringBase0@l
/* 8077D1D0  38 84 00 05 */	addi r4, r4, 5
/* 8077D1D4  4B BE B7 C0 */	b strcmp
/* 8077D1D8  2C 03 00 00 */	cmpwi r3, 0
/* 8077D1DC  40 82 02 54 */	bne lbl_8077D430
/* 8077D1E0  88 9D 05 B7 */	lbz r4, 0x5b7(r29)
/* 8077D1E4  28 04 00 FF */	cmplwi r4, 0xff
/* 8077D1E8  41 82 02 48 */	beq lbl_8077D430
/* 8077D1EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077D1F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077D1F4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8077D1F8  7C 05 07 74 */	extsb r5, r0
/* 8077D1FC  4B 8B 80 04 */	b onSwitch__10dSv_info_cFii
/* 8077D200  48 00 02 30 */	b lbl_8077D430
lbl_8077D204:
/* 8077D204  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 8077D208  2C 00 00 00 */	cmpwi r0, 0
/* 8077D20C  40 82 02 24 */	bne lbl_8077D430
/* 8077D210  80 1D 05 D8 */	lwz r0, 0x5d8(r29)
/* 8077D214  2C 00 00 0A */	cmpwi r0, 0xa
/* 8077D218  40 82 00 20 */	bne lbl_8077D238
/* 8077D21C  7F A3 EB 78 */	mr r3, r29
/* 8077D220  38 80 00 10 */	li r4, 0x10
/* 8077D224  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8077D228  38 A0 00 00 */	li r5, 0
/* 8077D22C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077D230  4B FF D9 C9 */	bl anm_init__FP10e_s1_classifUcf
/* 8077D234  48 00 00 40 */	b lbl_8077D274
lbl_8077D238:
/* 8077D238  2C 00 00 0B */	cmpwi r0, 0xb
/* 8077D23C  40 82 00 20 */	bne lbl_8077D25C
/* 8077D240  7F A3 EB 78 */	mr r3, r29
/* 8077D244  38 80 00 11 */	li r4, 0x11
/* 8077D248  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8077D24C  38 A0 00 00 */	li r5, 0
/* 8077D250  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077D254  4B FF D9 A5 */	bl anm_init__FP10e_s1_classifUcf
/* 8077D258  48 00 00 1C */	b lbl_8077D274
lbl_8077D25C:
/* 8077D25C  7F A3 EB 78 */	mr r3, r29
/* 8077D260  38 80 00 12 */	li r4, 0x12
/* 8077D264  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8077D268  38 A0 00 00 */	li r5, 0
/* 8077D26C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077D270  4B FF D9 89 */	bl anm_init__FP10e_s1_classifUcf
lbl_8077D274:
/* 8077D274  38 00 00 32 */	li r0, 0x32
/* 8077D278  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8077D27C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D3@ha */
/* 8077D280  38 03 00 D3 */	addi r0, r3, 0x00D3 /* 0x000700D3@l */
/* 8077D284  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077D288  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 8077D28C  38 81 00 0C */	addi r4, r1, 0xc
/* 8077D290  38 A0 FF FF */	li r5, -1
/* 8077D294  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 8077D298  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077D29C  7D 89 03 A6 */	mtctr r12
/* 8077D2A0  4E 80 04 21 */	bctrl 
/* 8077D2A4  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8077D2A8  28 00 00 00 */	cmplwi r0, 0
/* 8077D2AC  41 82 00 10 */	beq lbl_8077D2BC
/* 8077D2B0  38 00 00 0D */	li r0, 0xd
/* 8077D2B4  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D2B8  48 00 01 78 */	b lbl_8077D430
lbl_8077D2BC:
/* 8077D2BC  38 00 00 0F */	li r0, 0xf
/* 8077D2C0  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D2C4  48 00 01 6C */	b lbl_8077D430
lbl_8077D2C8:
/* 8077D2C8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077D2CC  38 80 00 01 */	li r4, 1
/* 8077D2D0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077D2D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077D2D8  40 82 00 18 */	bne lbl_8077D2F0
/* 8077D2DC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8077D2E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077D2E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077D2E8  41 82 00 08 */	beq lbl_8077D2F0
/* 8077D2EC  38 80 00 00 */	li r4, 0
lbl_8077D2F0:
/* 8077D2F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077D2F4  41 82 01 3C */	beq lbl_8077D430
/* 8077D2F8  38 60 00 00 */	li r3, 0
/* 8077D2FC  B0 7D 06 96 */	sth r3, 0x696(r29)
/* 8077D300  38 00 00 01 */	li r0, 1
/* 8077D304  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D308  B0 7D 06 A0 */	sth r3, 0x6a0(r29)
/* 8077D30C  38 00 00 28 */	li r0, 0x28
/* 8077D310  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 8077D314  48 00 01 1C */	b lbl_8077D430
lbl_8077D318:
/* 8077D318  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077D31C  38 80 00 01 */	li r4, 1
/* 8077D320  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077D324  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077D328  40 82 00 18 */	bne lbl_8077D340
/* 8077D32C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8077D330  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077D334  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077D338  41 82 00 08 */	beq lbl_8077D340
/* 8077D33C  38 80 00 00 */	li r4, 0
lbl_8077D340:
/* 8077D340  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077D344  41 82 00 EC */	beq lbl_8077D430
/* 8077D348  38 00 00 00 */	li r0, 0
/* 8077D34C  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 8077D350  38 00 00 02 */	li r0, 2
/* 8077D354  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D358  48 00 00 D8 */	b lbl_8077D430
lbl_8077D35C:
/* 8077D35C  A8 1D 30 3A */	lha r0, 0x303a(r29)
/* 8077D360  2C 00 00 50 */	cmpwi r0, 0x50
/* 8077D364  40 82 00 CC */	bne lbl_8077D430
/* 8077D368  38 00 00 15 */	li r0, 0x15
/* 8077D36C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D370  38 00 00 01 */	li r0, 1
/* 8077D374  98 1D 30 6C */	stb r0, 0x306c(r29)
/* 8077D378  7F A3 EB 78 */	mr r3, r29
/* 8077D37C  38 9D 05 38 */	addi r4, r29, 0x538
/* 8077D380  38 A0 00 0C */	li r5, 0xc
/* 8077D384  38 C0 00 02 */	li r6, 2
/* 8077D388  38 E0 00 31 */	li r7, 0x31
/* 8077D38C  4B 89 F7 4C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8077D390  48 00 00 A0 */	b lbl_8077D430
lbl_8077D394:
/* 8077D394  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077D398  38 63 00 0C */	addi r3, r3, 0xc
/* 8077D39C  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8077D3A0  4B BA B0 8C */	b checkPass__12J3DFrameCtrlFf
/* 8077D3A4  2C 03 00 00 */	cmpwi r3, 0
/* 8077D3A8  41 82 00 30 */	beq lbl_8077D3D8
/* 8077D3AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000F@ha */
/* 8077D3B0  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0007000F@l */
/* 8077D3B4  90 01 00 08 */	stw r0, 8(r1)
/* 8077D3B8  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 8077D3BC  38 81 00 08 */	addi r4, r1, 8
/* 8077D3C0  38 A0 00 00 */	li r5, 0
/* 8077D3C4  38 C0 FF FF */	li r6, -1
/* 8077D3C8  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 8077D3CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077D3D0  7D 89 03 A6 */	mtctr r12
/* 8077D3D4  4E 80 04 21 */	bctrl 
lbl_8077D3D8:
/* 8077D3D8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077D3DC  38 80 00 01 */	li r4, 1
/* 8077D3E0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077D3E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077D3E8  40 82 00 18 */	bne lbl_8077D400
/* 8077D3EC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8077D3F0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077D3F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077D3F8  41 82 00 08 */	beq lbl_8077D400
/* 8077D3FC  38 80 00 00 */	li r4, 0
lbl_8077D400:
/* 8077D400  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077D404  41 82 00 2C */	beq lbl_8077D430
/* 8077D408  38 00 00 0B */	li r0, 0xb
/* 8077D40C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077D410  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8077D414  4B AE A5 40 */	b cM_rndF__Ff
/* 8077D418  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8077D41C  EC 00 08 2A */	fadds f0, f0, f1
/* 8077D420  FC 00 00 1E */	fctiwz f0, f0
/* 8077D424  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8077D428  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077D42C  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
lbl_8077D430:
/* 8077D430  39 61 00 50 */	addi r11, r1, 0x50
/* 8077D434  4B BE 4D F0 */	b _restgpr_28
/* 8077D438  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8077D43C  7C 08 03 A6 */	mtlr r0
/* 8077D440  38 21 00 50 */	addi r1, r1, 0x50
/* 8077D444  4E 80 00 20 */	blr 
