lbl_8017ADC0:
/* 8017ADC0  94 21 F9 A0 */	stwu r1, -0x660(r1)
/* 8017ADC4  7C 08 02 A6 */	mflr r0
/* 8017ADC8  90 01 06 64 */	stw r0, 0x664(r1)
/* 8017ADCC  DB E1 06 50 */	stfd f31, 0x650(r1)
/* 8017ADD0  F3 E1 06 58 */	psq_st f31, 1624(r1), 0, 0 /* qr0 */
/* 8017ADD4  DB C1 06 40 */	stfd f30, 0x640(r1)
/* 8017ADD8  F3 C1 06 48 */	psq_st f30, 1608(r1), 0, 0 /* qr0 */
/* 8017ADDC  DB A1 06 30 */	stfd f29, 0x630(r1)
/* 8017ADE0  F3 A1 06 38 */	psq_st f29, 1592(r1), 0, 0 /* qr0 */
/* 8017ADE4  DB 81 06 20 */	stfd f28, 0x620(r1)
/* 8017ADE8  F3 81 06 28 */	psq_st f28, 1576(r1), 0, 0 /* qr0 */
/* 8017ADEC  DB 61 06 10 */	stfd f27, 0x610(r1)
/* 8017ADF0  F3 61 06 18 */	psq_st f27, 1560(r1), 0, 0 /* qr0 */
/* 8017ADF4  DB 41 06 00 */	stfd f26, 0x600(r1)
/* 8017ADF8  F3 41 06 08 */	psq_st f26, 1544(r1), 0, 0 /* qr0 */
/* 8017ADFC  DB 21 05 F0 */	stfd f25, 0x5f0(r1)
/* 8017AE00  F3 21 05 F8 */	psq_st f25, 1528(r1), 0, 0 /* qr0 */
/* 8017AE04  DB 01 05 E0 */	stfd f24, 0x5e0(r1)
/* 8017AE08  F3 01 05 E8 */	psq_st f24, 1512(r1), 0, 0 /* qr0 */
/* 8017AE0C  DA E1 05 D0 */	stfd f23, 0x5d0(r1)
/* 8017AE10  F2 E1 05 D8 */	psq_st f23, 1496(r1), 0, 0 /* qr0 */
/* 8017AE14  DA C1 05 C0 */	stfd f22, 0x5c0(r1)
/* 8017AE18  F2 C1 05 C8 */	psq_st f22, 1480(r1), 0, 0 /* qr0 */
/* 8017AE1C  DA A1 05 B0 */	stfd f21, 0x5b0(r1)
/* 8017AE20  F2 A1 05 B8 */	psq_st f21, 1464(r1), 0, 0 /* qr0 */
/* 8017AE24  DA 81 05 A0 */	stfd f20, 0x5a0(r1)
/* 8017AE28  F2 81 05 A8 */	psq_st f20, 1448(r1), 0, 0 /* qr0 */
/* 8017AE2C  DA 61 05 90 */	stfd f19, 0x590(r1)
/* 8017AE30  F2 61 05 98 */	psq_st f19, 1432(r1), 0, 0 /* qr0 */
/* 8017AE34  DA 41 05 80 */	stfd f18, 0x580(r1)
/* 8017AE38  F2 41 05 88 */	psq_st f18, 1416(r1), 0, 0 /* qr0 */
/* 8017AE3C  DA 21 05 70 */	stfd f17, 0x570(r1)
/* 8017AE40  F2 21 05 78 */	psq_st f17, 1400(r1), 0, 0 /* qr0 */
/* 8017AE44  DA 01 05 60 */	stfd f16, 0x560(r1)
/* 8017AE48  F2 01 05 68 */	psq_st f16, 1384(r1), 0, 0 /* qr0 */
/* 8017AE4C  D9 E1 05 50 */	stfd f15, 0x550(r1)
/* 8017AE50  F1 E1 05 58 */	psq_st f15, 1368(r1), 0, 0 /* qr0 */
/* 8017AE54  D9 C1 05 40 */	stfd f14, 0x540(r1)
/* 8017AE58  F1 C1 05 48 */	psq_st f14, 1352(r1), 0, 0 /* qr0 */
/* 8017AE5C  39 61 05 40 */	addi r11, r1, 0x540
/* 8017AE60  48 1E 73 71 */	bl _savegpr_26
/* 8017AE64  7C 7F 1B 78 */	mr r31, r3
/* 8017AE68  7C 9E 23 78 */	mr r30, r4
/* 8017AE6C  3C 60 80 43 */	lis r3, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 8017AE70  3B 83 C8 F8 */	addi r28, r3, data_8042C8F8@l /* 0x8042C8F8@l */
/* 8017AE74  88 0D 8A C6 */	lbz r0, struct_80451044+0x2(r13)
/* 8017AE78  7C 00 07 75 */	extsb. r0, r0
/* 8017AE7C  40 82 00 28 */	bne lbl_8017AEA4
/* 8017AE80  38 6D 8A C8 */	la r3, struct_80451048+0x0(r13) /* 80451048-_SDA_BASE_ */
/* 8017AE84  C0 22 9D 90 */	lfs f1, lit_10559(r2)
/* 8017AE88  48 0F 61 41 */	bl __ct__7cSAngleFf
/* 8017AE8C  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha /* 0x80030510@ha */
/* 8017AE90  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l /* 0x80030510@l */
/* 8017AE94  38 BC 00 CC */	addi r5, r28, 0xcc
/* 8017AE98  48 1E 6D 8D */	bl __register_global_object
/* 8017AE9C  38 00 00 01 */	li r0, 1
/* 8017AEA0  98 0D 8A C6 */	stb r0, struct_80451044+0x2(r13)
lbl_8017AEA4:
/* 8017AEA4  88 0D 8A CA */	lbz r0, struct_80451048+0x2(r13)
/* 8017AEA8  7C 00 07 75 */	extsb. r0, r0
/* 8017AEAC  40 82 00 28 */	bne lbl_8017AED4
/* 8017AEB0  38 6D 8A CC */	la r3, LatMax(r13) /* 8045104C-_SDA_BASE_ */
/* 8017AEB4  C0 22 9D 54 */	lfs f1, lit_9406(r2)
/* 8017AEB8  48 0F 61 11 */	bl __ct__7cSAngleFf
/* 8017AEBC  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha /* 0x80030510@ha */
/* 8017AEC0  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l /* 0x80030510@l */
/* 8017AEC4  38 BC 00 D8 */	addi r5, r28, 0xd8
/* 8017AEC8  48 1E 6D 5D */	bl __register_global_object
/* 8017AECC  38 00 00 01 */	li r0, 1
/* 8017AED0  98 0D 8A CA */	stb r0, struct_80451048+0x2(r13)
lbl_8017AED4:
/* 8017AED4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AED8  7F C4 F3 78 */	mr r4, r30
/* 8017AEDC  38 A0 00 02 */	li r5, 2
/* 8017AEE0  48 00 7D F1 */	bl Val__11dCamParam_cFli
/* 8017AEE4  FF 80 08 90 */	fmr f28, f1
/* 8017AEE8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AEEC  7F C4 F3 78 */	mr r4, r30
/* 8017AEF0  38 A0 00 01 */	li r5, 1
/* 8017AEF4  48 00 7D DD */	bl Val__11dCamParam_cFli
/* 8017AEF8  D0 21 05 18 */	stfs f1, 0x518(r1)
/* 8017AEFC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF00  7F C4 F3 78 */	mr r4, r30
/* 8017AF04  38 A0 00 00 */	li r5, 0
/* 8017AF08  48 00 7D C9 */	bl Val__11dCamParam_cFli
/* 8017AF0C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF10  7F C4 F3 78 */	mr r4, r30
/* 8017AF14  38 A0 00 19 */	li r5, 0x19
/* 8017AF18  48 00 7D B9 */	bl Val__11dCamParam_cFli
/* 8017AF1C  FF 60 08 90 */	fmr f27, f1
/* 8017AF20  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF24  7F C4 F3 78 */	mr r4, r30
/* 8017AF28  38 A0 00 06 */	li r5, 6
/* 8017AF2C  48 00 7D A5 */	bl Val__11dCamParam_cFli
/* 8017AF30  D0 21 05 14 */	stfs f1, 0x514(r1)
/* 8017AF34  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF38  7F C4 F3 78 */	mr r4, r30
/* 8017AF3C  38 A0 00 05 */	li r5, 5
/* 8017AF40  48 00 7D 91 */	bl Val__11dCamParam_cFli
/* 8017AF44  FF 40 08 90 */	fmr f26, f1
/* 8017AF48  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF4C  7F C4 F3 78 */	mr r4, r30
/* 8017AF50  38 A0 00 07 */	li r5, 7
/* 8017AF54  48 00 7D 7D */	bl Val__11dCamParam_cFli
/* 8017AF58  FF 20 08 90 */	fmr f25, f1
/* 8017AF5C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF60  7F C4 F3 78 */	mr r4, r30
/* 8017AF64  38 A0 00 0A */	li r5, 0xa
/* 8017AF68  48 00 7D 69 */	bl Val__11dCamParam_cFli
/* 8017AF6C  FF 00 08 90 */	fmr f24, f1
/* 8017AF70  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF74  7F C4 F3 78 */	mr r4, r30
/* 8017AF78  38 A0 00 0B */	li r5, 0xb
/* 8017AF7C  48 00 7D 55 */	bl Val__11dCamParam_cFli
/* 8017AF80  FF A0 08 90 */	fmr f29, f1
/* 8017AF84  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF88  7F C4 F3 78 */	mr r4, r30
/* 8017AF8C  38 A0 00 0C */	li r5, 0xc
/* 8017AF90  48 00 7D 41 */	bl Val__11dCamParam_cFli
/* 8017AF94  FE E0 08 90 */	fmr f23, f1
/* 8017AF98  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AF9C  7F C4 F3 78 */	mr r4, r30
/* 8017AFA0  38 A0 00 0F */	li r5, 0xf
/* 8017AFA4  48 00 7D 2D */	bl Val__11dCamParam_cFli
/* 8017AFA8  FE C0 08 90 */	fmr f22, f1
/* 8017AFAC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AFB0  7F C4 F3 78 */	mr r4, r30
/* 8017AFB4  38 A0 00 16 */	li r5, 0x16
/* 8017AFB8  48 00 7D 19 */	bl Val__11dCamParam_cFli
/* 8017AFBC  FE A0 08 90 */	fmr f21, f1
/* 8017AFC0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AFC4  7F C4 F3 78 */	mr r4, r30
/* 8017AFC8  38 A0 00 1B */	li r5, 0x1b
/* 8017AFCC  48 00 7D 05 */	bl Val__11dCamParam_cFli
/* 8017AFD0  FF E0 08 90 */	fmr f31, f1
/* 8017AFD4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AFD8  7F C4 F3 78 */	mr r4, r30
/* 8017AFDC  38 A0 00 17 */	li r5, 0x17
/* 8017AFE0  48 00 7C F1 */	bl Val__11dCamParam_cFli
/* 8017AFE4  38 61 01 74 */	addi r3, r1, 0x174
/* 8017AFE8  48 0F 5F E1 */	bl __ct__7cSAngleFf
/* 8017AFEC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017AFF0  7F C4 F3 78 */	mr r4, r30
/* 8017AFF4  38 A0 00 11 */	li r5, 0x11
/* 8017AFF8  48 00 7C D9 */	bl Val__11dCamParam_cFli
/* 8017AFFC  FE 80 08 90 */	fmr f20, f1
/* 8017B000  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B004  7F C4 F3 78 */	mr r4, r30
/* 8017B008  38 A0 00 14 */	li r5, 0x14
/* 8017B00C  48 00 7C C5 */	bl Val__11dCamParam_cFli
/* 8017B010  FE 60 08 90 */	fmr f19, f1
/* 8017B014  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B018  7F C4 F3 78 */	mr r4, r30
/* 8017B01C  38 A0 00 15 */	li r5, 0x15
/* 8017B020  48 00 7C B1 */	bl Val__11dCamParam_cFli
/* 8017B024  FF C0 08 90 */	fmr f30, f1
/* 8017B028  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B02C  7F C4 F3 78 */	mr r4, r30
/* 8017B030  38 A0 00 04 */	li r5, 4
/* 8017B034  48 00 7C 9D */	bl Val__11dCamParam_cFli
/* 8017B038  D0 21 05 10 */	stfs f1, 0x510(r1)
/* 8017B03C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B040  7F C4 F3 78 */	mr r4, r30
/* 8017B044  38 A0 00 09 */	li r5, 9
/* 8017B048  48 00 7C 89 */	bl Val__11dCamParam_cFli
/* 8017B04C  D0 21 05 0C */	stfs f1, 0x50c(r1)
/* 8017B050  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B054  7F C4 F3 78 */	mr r4, r30
/* 8017B058  38 A0 00 0E */	li r5, 0xe
/* 8017B05C  48 00 7C 75 */	bl Val__11dCamParam_cFli
/* 8017B060  D0 21 05 08 */	stfs f1, 0x508(r1)
/* 8017B064  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B068  7F C4 F3 78 */	mr r4, r30
/* 8017B06C  38 A0 00 13 */	li r5, 0x13
/* 8017B070  48 00 7C 61 */	bl Val__11dCamParam_cFli
/* 8017B074  FE 40 08 90 */	fmr f18, f1
/* 8017B078  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B07C  7F C4 F3 78 */	mr r4, r30
/* 8017B080  38 A0 00 18 */	li r5, 0x18
/* 8017B084  48 00 7C 4D */	bl Val__11dCamParam_cFli
/* 8017B088  D8 21 05 20 */	stfd f1, 0x520(r1)
/* 8017B08C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B090  7F C4 F3 78 */	mr r4, r30
/* 8017B094  38 A0 00 1A */	li r5, 0x1a
/* 8017B098  48 00 7C 39 */	bl Val__11dCamParam_cFli
/* 8017B09C  FE 20 08 90 */	fmr f17, f1
/* 8017B0A0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017B0A4  FC 11 00 40 */	fcmpo cr0, f17, f0
/* 8017B0A8  4C 41 13 82 */	cror 2, 1, 2
/* 8017B0AC  40 82 00 14 */	bne lbl_8017B0C0
/* 8017B0B0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017B0B4  FC 11 00 40 */	fcmpo cr0, f17, f0
/* 8017B0B8  4C 40 13 82 */	cror 2, 0, 2
/* 8017B0BC  41 82 00 08 */	beq lbl_8017B0C4
lbl_8017B0C0:
/* 8017B0C0  C2 22 9C 90 */	lfs f17, lit_4445(r2)
lbl_8017B0C4:
/* 8017B0C4  38 61 01 70 */	addi r3, r1, 0x170
/* 8017B0C8  C0 22 9E 08 */	lfs f1, lit_11173(r2)
/* 8017B0CC  48 0F 5E FD */	bl __ct__7cSAngleFf
/* 8017B0D0  C2 02 9D 0C */	lfs f16, lit_8021(r2)
/* 8017B0D4  38 61 01 6C */	addi r3, r1, 0x16c
/* 8017B0D8  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8017B0DC  48 0F 5E 8D */	bl __ct__7cSAngleFRC7cSAngle
/* 8017B0E0  C1 E2 9C A8 */	lfs f15, lit_5658(r2)
/* 8017B0E4  48 00 77 95 */	bl daAlink_getAlinkActorClass__Fv
/* 8017B0E8  7C 7D 1B 78 */	mr r29, r3
/* 8017B0EC  48 00 78 B1 */	bl dComIfGp_getAttention__Fv
/* 8017B0F0  7C 7B 1B 78 */	mr r27, r3
/* 8017B0F4  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017B0F8  28 00 00 00 */	cmplwi r0, 0
/* 8017B0FC  40 82 01 50 */	bne lbl_8017B24C
/* 8017B100  A8 1F 01 36 */	lha r0, 0x136(r31)
/* 8017B104  2C 00 00 00 */	cmpwi r0, 0
/* 8017B108  41 81 00 28 */	bgt lbl_8017B130
/* 8017B10C  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017B110  38 9F 00 30 */	addi r4, r31, 0x30
/* 8017B114  4B F1 C6 C5 */	bl __as__4cXyzFRC4cXyz
/* 8017B118  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017B11C  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8017B120  4B F1 C6 B9 */	bl __as__4cXyzFRC4cXyz
/* 8017B124  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017B128  38 9F 00 28 */	addi r4, r31, 0x28
/* 8017B12C  4B F1 36 49 */	bl __as__7cSGlobeFRC7cSGlobe
lbl_8017B130:
/* 8017B130  38 60 00 00 */	li r3, 0
/* 8017B134  90 7F 04 80 */	stw r3, 0x480(r31)
/* 8017B138  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8017B13C  90 1F 04 84 */	stw r0, 0x484(r31)
/* 8017B140  90 7F 04 88 */	stw r3, 0x488(r31)
/* 8017B144  7F A3 EB 78 */	mr r3, r29
/* 8017B148  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017B14C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8017B150  7D 89 03 A6 */	mtctr r12
/* 8017B154  4E 80 04 21 */	bctrl 
/* 8017B158  28 03 00 00 */	cmplwi r3, 0
/* 8017B15C  41 82 00 20 */	beq lbl_8017B17C
/* 8017B160  4B FC 63 79 */	bl dComIfGp_getHorseActor__Fv
/* 8017B164  90 7F 04 88 */	stw r3, 0x488(r31)
/* 8017B168  80 1F 04 88 */	lwz r0, 0x488(r31)
/* 8017B16C  90 1F 04 80 */	stw r0, 0x480(r31)
/* 8017B170  38 00 00 00 */	li r0, 0
/* 8017B174  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 8017B178  48 00 00 BC */	b lbl_8017B234
lbl_8017B17C:
/* 8017B17C  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 8017B180  28 00 00 2C */	cmplwi r0, 0x2c
/* 8017B184  40 82 00 B0 */	bne lbl_8017B234
/* 8017B188  38 00 00 F4 */	li r0, 0xf4
/* 8017B18C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8017B190  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8017B194  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8017B198  38 81 00 0C */	addi r4, r1, 0xc
/* 8017B19C  4B E9 E6 5D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8017B1A0  28 03 00 00 */	cmplwi r3, 0
/* 8017B1A4  41 82 00 78 */	beq lbl_8017B21C
/* 8017B1A8  90 7F 04 84 */	stw r3, 0x484(r31)
/* 8017B1AC  90 7F 04 88 */	stw r3, 0x488(r31)
/* 8017B1B0  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017B1B4  28 00 00 00 */	cmplwi r0, 0
/* 8017B1B8  41 82 00 64 */	beq lbl_8017B21C
/* 8017B1BC  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8017B1C0  7F E4 FB 78 */	mr r4, r31
/* 8017B1C4  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017B1C8  4B F1 C5 95 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017B1CC  38 61 03 BC */	addi r3, r1, 0x3bc
/* 8017B1D0  38 81 03 C8 */	addi r4, r1, 0x3c8
/* 8017B1D4  38 BF 04 6C */	addi r5, r31, 0x46c
/* 8017B1D8  48 0E B9 5D */	bl __mi__4cXyzCFRC3Vec
/* 8017B1DC  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 8017B1E0  38 81 03 BC */	addi r4, r1, 0x3bc
/* 8017B1E4  4B F1 C6 11 */	bl __ct__4cXyzFRC4cXyz
/* 8017B1E8  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 8017B1EC  4B F1 35 A5 */	bl abs__4cXyzCFv
/* 8017B1F0  FD C0 08 90 */	fmr f14, f1
/* 8017B1F4  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 8017B1F8  38 80 FF FF */	li r4, -1
/* 8017B1FC  4B E8 DF 89 */	bl __dt__4cXyzFv
/* 8017B200  38 61 03 BC */	addi r3, r1, 0x3bc
/* 8017B204  38 80 FF FF */	li r4, -1
/* 8017B208  4B E8 DF 7D */	bl __dt__4cXyzFv
/* 8017B20C  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8017B210  38 80 FF FF */	li r4, -1
/* 8017B214  4B E8 DF 71 */	bl __dt__4cXyzFv
/* 8017B218  D1 DF 02 B0 */	stfs f14, 0x2b0(r31)
lbl_8017B21C:
/* 8017B21C  7F E3 FB 78 */	mr r3, r31
/* 8017B220  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 8017B224  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 8017B228  4B F1 C5 51 */	bl setFlag__9dCamera_cFUl
/* 8017B22C  38 00 00 03 */	li r0, 3
/* 8017B230  90 1F 03 E8 */	stw r0, 0x3e8(r31)
lbl_8017B234:
/* 8017B234  38 00 00 00 */	li r0, 0
/* 8017B238  98 1F 04 04 */	stb r0, 0x404(r31)
/* 8017B23C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017B240  D0 1F 04 50 */	stfs f0, 0x450(r31)
/* 8017B244  D0 1F 04 54 */	stfs f0, 0x454(r31)
/* 8017B248  D0 1F 04 58 */	stfs f0, 0x458(r31)
lbl_8017B24C:
/* 8017B24C  38 00 00 01 */	li r0, 1
/* 8017B250  98 1F 09 44 */	stb r0, 0x944(r31)
/* 8017B254  38 61 01 30 */	addi r3, r1, 0x130
/* 8017B258  7F E4 FB 78 */	mr r4, r31
/* 8017B25C  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017B260  4B F1 C4 D9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017B264  38 7F 04 30 */	addi r3, r31, 0x430
/* 8017B268  38 81 01 30 */	addi r4, r1, 0x130
/* 8017B26C  48 0F 5D 8D */	bl Val__7cSAngleFRC7cSAngle
/* 8017B270  38 61 01 30 */	addi r3, r1, 0x130
/* 8017B274  38 80 FF FF */	li r4, -1
/* 8017B278  4B EB 52 99 */	bl __dt__7cSAngleFv
/* 8017B27C  38 00 00 00 */	li r0, 0
/* 8017B280  90 1F 03 F0 */	stw r0, 0x3f0(r31)
/* 8017B284  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 8017B288  7F E4 FB 78 */	mr r4, r31
/* 8017B28C  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017B290  4B F1 C4 CD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017B294  38 7F 04 6C */	addi r3, r31, 0x46c
/* 8017B298  38 81 03 A4 */	addi r4, r1, 0x3a4
/* 8017B29C  4B F1 C5 3D */	bl __as__4cXyzFRC4cXyz
/* 8017B2A0  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 8017B2A4  38 80 FF FF */	li r4, -1
/* 8017B2A8  4B E8 DE DD */	bl __dt__4cXyzFv
/* 8017B2AC  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017B2B0  28 00 00 00 */	cmplwi r0, 0
/* 8017B2B4  40 82 02 FC */	bne lbl_8017B5B0
/* 8017B2B8  3C 60 52 49 */	lis r3, 0x5249 /* 0x52494445@ha */
/* 8017B2BC  38 03 44 45 */	addi r0, r3, 0x4445 /* 0x52494445@l */
/* 8017B2C0  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 8017B2C4  38 7F 04 18 */	addi r3, r31, 0x418
/* 8017B2C8  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8017B2CC  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8017B2D0  4B F1 C5 09 */	bl __as__4cXyzFRC4cXyz
/* 8017B2D4  38 00 00 00 */	li r0, 0
/* 8017B2D8  90 1F 04 08 */	stw r0, 0x408(r31)
/* 8017B2DC  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 8017B2E0  90 1F 03 F4 */	stw r0, 0x3f4(r31)
/* 8017B2E4  38 00 00 01 */	li r0, 1
/* 8017B2E8  98 1F 04 05 */	stb r0, 0x405(r31)
/* 8017B2EC  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 8017B2F0  D0 3F 04 44 */	stfs f1, 0x444(r31)
/* 8017B2F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8017B2F8  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 8017B2FC  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 8017B300  38 7F 00 60 */	addi r3, r31, 0x60
/* 8017B304  48 0F 5D 2D */	bl Degree__7cSAngleCFv
/* 8017B308  D0 3F 04 3C */	stfs f1, 0x43c(r31)
/* 8017B30C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017B310  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8017B314  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017B318  D0 1F 04 48 */	stfs f0, 0x448(r31)
/* 8017B31C  38 00 00 00 */	li r0, 0
/* 8017B320  90 1F 03 F0 */	stw r0, 0x3f0(r31)
/* 8017B324  38 7F 04 24 */	addi r3, r31, 0x424
/* 8017B328  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017B32C  4B F1 C4 AD */	bl __as__4cXyzFRC4cXyz
/* 8017B330  38 7F 04 0C */	addi r3, r31, 0x40c
/* 8017B334  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017B338  4B F1 C4 A1 */	bl __as__4cXyzFRC4cXyz
/* 8017B33C  38 60 00 00 */	li r3, 0
/* 8017B340  98 7F 04 78 */	stb r3, 0x478(r31)
/* 8017B344  38 00 FF FF */	li r0, -1
/* 8017B348  90 1F 04 00 */	stw r0, 0x400(r31)
/* 8017B34C  90 7F 03 F8 */	stw r3, 0x3f8(r31)
/* 8017B350  90 7F 03 FC */	stw r3, 0x3fc(r31)
/* 8017B354  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017B358  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8017B35C  98 7F 04 79 */	stb r3, 0x479(r31)
/* 8017B360  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8017B364  D0 1F 04 4C */	stfs f0, 0x44c(r31)
/* 8017B368  D3 FF 04 64 */	stfs f31, 0x464(r31)
/* 8017B36C  90 7F 04 7C */	stw r3, 0x47c(r31)
/* 8017B370  98 7F 04 7A */	stb r3, 0x47a(r31)
/* 8017B374  80 9F 06 84 */	lwz r4, 0x684(r31)
/* 8017B378  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8017B37C  1C 60 00 44 */	mulli r3, r0, 0x44
/* 8017B380  38 63 00 10 */	addi r3, r3, 0x10
/* 8017B384  7C 64 1A 14 */	add r3, r4, r3
/* 8017B388  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8017B38C  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8017B390  38 84 02 17 */	addi r4, r4, 0x217
/* 8017B394  38 A0 00 04 */	li r5, 4
/* 8017B398  48 1E D5 BD */	bl strncmp
/* 8017B39C  7C 60 00 34 */	cntlzw r0, r3
/* 8017B3A0  54 00 D9 7E */	srwi r0, r0, 5
/* 8017B3A4  98 1F 04 7B */	stb r0, 0x47b(r31)
/* 8017B3A8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B3AC  7F C4 F3 78 */	mr r4, r30
/* 8017B3B0  38 A0 20 00 */	li r5, 0x2000
/* 8017B3B4  48 00 78 D9 */	bl Flag__11dCamParam_cFlUs
/* 8017B3B8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017B3BC  41 82 00 14 */	beq lbl_8017B3D0
/* 8017B3C0  7F E3 FB 78 */	mr r3, r31
/* 8017B3C4  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 8017B3C8  4B FE 94 B1 */	bl getParamTargetActor__9dCamera_cFl
/* 8017B3CC  90 7F 04 7C */	stw r3, 0x47c(r31)
lbl_8017B3D0:
/* 8017B3D0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B3D4  7F C4 F3 78 */	mr r4, r30
/* 8017B3D8  38 A0 10 00 */	li r5, 0x1000
/* 8017B3DC  48 00 78 B1 */	bl Flag__11dCamParam_cFlUs
/* 8017B3E0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017B3E4  41 82 00 30 */	beq lbl_8017B414
/* 8017B3E8  7F A3 EB 78 */	mr r3, r29
/* 8017B3EC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017B3F0  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8017B3F4  7D 89 03 A6 */	mtctr r12
/* 8017B3F8  4E 80 04 21 */	bctrl 
/* 8017B3FC  2C 03 00 00 */	cmpwi r3, 0
/* 8017B400  41 82 00 14 */	beq lbl_8017B414
/* 8017B404  80 0D 80 98 */	lwz r0, g_dComIfGoat_gameInfo(r13)
/* 8017B408  90 1F 04 7C */	stw r0, 0x47c(r31)
/* 8017B40C  38 00 00 01 */	li r0, 1
/* 8017B410  98 1F 04 7A */	stb r0, 0x47a(r31)
lbl_8017B414:
/* 8017B414  7F A3 EB 78 */	mr r3, r29
/* 8017B418  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017B41C  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8017B420  7D 89 03 A6 */	mtctr r12
/* 8017B424  4E 80 04 21 */	bctrl 
/* 8017B428  28 03 00 00 */	cmplwi r3, 0
/* 8017B42C  41 82 00 78 */	beq lbl_8017B4A4
/* 8017B430  38 00 00 00 */	li r0, 0
/* 8017B434  90 1F 04 7C */	stw r0, 0x47c(r31)
/* 8017B438  3C 60 80 38 */	lis r3, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 8017B43C  38 63 90 C0 */	addi r3, r3, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 8017B440  A0 63 00 A8 */	lhz r3, 0xa8(r3)
/* 8017B444  48 00 74 61 */	bl dComIfGs_isTmpBit__FUs
/* 8017B448  2C 03 00 00 */	cmpwi r3, 0
/* 8017B44C  41 82 00 24 */	beq lbl_8017B470
/* 8017B450  38 00 02 7B */	li r0, 0x27b
/* 8017B454  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8017B458  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8017B45C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8017B460  38 81 00 0A */	addi r4, r1, 0xa
/* 8017B464  4B E9 E3 95 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8017B468  90 7F 04 7C */	stw r3, 0x47c(r31)
/* 8017B46C  48 00 00 38 */	b lbl_8017B4A4
lbl_8017B470:
/* 8017B470  3C 60 80 38 */	lis r3, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 8017B474  38 63 90 C0 */	addi r3, r3, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 8017B478  A0 63 00 AA */	lhz r3, 0xaa(r3)
/* 8017B47C  48 00 74 29 */	bl dComIfGs_isTmpBit__FUs
/* 8017B480  2C 03 00 00 */	cmpwi r3, 0
/* 8017B484  41 82 00 20 */	beq lbl_8017B4A4
/* 8017B488  38 00 02 7C */	li r0, 0x27c
/* 8017B48C  B0 01 00 08 */	sth r0, 8(r1)
/* 8017B490  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8017B494  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8017B498  38 81 00 08 */	addi r4, r1, 8
/* 8017B49C  4B E9 E3 5D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8017B4A0  90 7F 04 7C */	stw r3, 0x47c(r31)
lbl_8017B4A4:
/* 8017B4A4  38 61 03 98 */	addi r3, r1, 0x398
/* 8017B4A8  38 9F 00 70 */	addi r4, r31, 0x70
/* 8017B4AC  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017B4B0  48 0E B6 85 */	bl __mi__4cXyzCFRC3Vec
/* 8017B4B4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017B4B8  38 81 03 98 */	addi r4, r1, 0x398
/* 8017B4BC  48 0F 65 B5 */	bl Val__7cSGlobeFRC4cXyz
/* 8017B4C0  38 61 03 98 */	addi r3, r1, 0x398
/* 8017B4C4  38 80 FF FF */	li r4, -1
/* 8017B4C8  4B E8 DC BD */	bl __dt__4cXyzFv
/* 8017B4CC  7F E3 FB 78 */	mr r3, r31
/* 8017B4D0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 8017B4D4  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 8017B4D8  48 00 74 A9 */	bl chkFlag__9dCamera_cFUl
/* 8017B4DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017B4E0  41 82 00 40 */	beq lbl_8017B520
/* 8017B4E4  80 1F 04 80 */	lwz r0, 0x480(r31)
/* 8017B4E8  28 00 00 00 */	cmplwi r0, 0
/* 8017B4EC  40 82 00 C4 */	bne lbl_8017B5B0
/* 8017B4F0  7F A3 EB 78 */	mr r3, r29
/* 8017B4F4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017B4F8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8017B4FC  7D 89 03 A6 */	mtctr r12
/* 8017B500  4E 80 04 21 */	bctrl 
/* 8017B504  28 03 00 00 */	cmplwi r3, 0
/* 8017B508  40 82 00 A8 */	bne lbl_8017B5B0
/* 8017B50C  38 00 00 02 */	li r0, 2
/* 8017B510  90 1F 04 08 */	stw r0, 0x408(r31)
/* 8017B514  38 00 00 01 */	li r0, 1
/* 8017B518  98 1F 01 58 */	stb r0, 0x158(r31)
/* 8017B51C  48 00 00 94 */	b lbl_8017B5B0
lbl_8017B520:
/* 8017B520  7F E3 FB 78 */	mr r3, r31
/* 8017B524  38 80 00 20 */	li r4, 0x20
/* 8017B528  48 00 74 59 */	bl chkFlag__9dCamera_cFUl
/* 8017B52C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017B530  41 82 00 24 */	beq lbl_8017B554
/* 8017B534  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 8017B538  38 7C 00 00 */	addi r3, r28, 0
/* 8017B53C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8017B540  7C 04 00 00 */	cmpw r4, r0
/* 8017B544  40 82 00 10 */	bne lbl_8017B554
/* 8017B548  38 00 00 03 */	li r0, 3
/* 8017B54C  90 1F 04 08 */	stw r0, 0x408(r31)
/* 8017B550  48 00 00 60 */	b lbl_8017B5B0
lbl_8017B554:
/* 8017B554  7F E3 FB 78 */	mr r3, r31
/* 8017B558  3C 80 00 01 */	lis r4, 1
/* 8017B55C  48 00 74 25 */	bl chkFlag__9dCamera_cFUl
/* 8017B560  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017B564  40 82 00 20 */	bne lbl_8017B584
/* 8017B568  7F A3 EB 78 */	mr r3, r29
/* 8017B56C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017B570  81 8C 02 54 */	lwz r12, 0x254(r12)
/* 8017B574  7D 89 03 A6 */	mtctr r12
/* 8017B578  4E 80 04 21 */	bctrl 
/* 8017B57C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017B580  41 82 00 10 */	beq lbl_8017B590
lbl_8017B584:
/* 8017B584  38 00 00 04 */	li r0, 4
/* 8017B588  90 1F 04 08 */	stw r0, 0x408(r31)
/* 8017B58C  48 00 00 24 */	b lbl_8017B5B0
lbl_8017B590:
/* 8017B590  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017B594  7F C4 F3 78 */	mr r4, r30
/* 8017B598  38 A0 04 00 */	li r5, 0x400
/* 8017B59C  48 00 76 F1 */	bl Flag__11dCamParam_cFlUs
/* 8017B5A0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017B5A4  41 82 00 0C */	beq lbl_8017B5B0
/* 8017B5A8  38 00 00 05 */	li r0, 5
/* 8017B5AC  90 1F 04 08 */	stw r0, 0x408(r31)
lbl_8017B5B0:
/* 8017B5B0  C0 1F 02 B0 */	lfs f0, 0x2b0(r31)
/* 8017B5B4  EF A0 E8 24 */	fdivs f29, f0, f29
/* 8017B5B8  80 7F 04 80 */	lwz r3, 0x480(r31)
/* 8017B5BC  28 03 00 00 */	cmplwi r3, 0
/* 8017B5C0  41 82 00 6C */	beq lbl_8017B62C
/* 8017B5C4  48 00 77 41 */	bl getLashDashStart__9daHorse_cCFv
/* 8017B5C8  28 03 00 00 */	cmplwi r3, 0
/* 8017B5CC  41 82 00 24 */	beq lbl_8017B5F0
/* 8017B5D0  7F E3 FB 78 */	mr r3, r31
/* 8017B5D4  48 00 5E BD */	bl onHorseDush__9dCamera_cFv
/* 8017B5D8  38 00 00 0D */	li r0, 0xd
/* 8017B5DC  90 1F 04 00 */	stw r0, 0x400(r31)
/* 8017B5E0  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 8017B5E4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017B5E8  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 8017B5EC  48 00 00 68 */	b lbl_8017B654
lbl_8017B5F0:
/* 8017B5F0  80 7F 03 F8 */	lwz r3, 0x3f8(r31)
/* 8017B5F4  2C 03 00 00 */	cmpwi r3, 0
/* 8017B5F8  41 82 00 10 */	beq lbl_8017B608
/* 8017B5FC  38 03 FF FF */	addi r0, r3, -1
/* 8017B600  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 8017B604  48 00 00 50 */	b lbl_8017B654
lbl_8017B608:
/* 8017B608  C0 5F 04 64 */	lfs f2, 0x464(r31)
/* 8017B60C  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8017B610  EC 1F 10 28 */	fsubs f0, f31, f2
/* 8017B614  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017B618  EC 02 00 2A */	fadds f0, f2, f0
/* 8017B61C  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 8017B620  38 00 FF FF */	li r0, -1
/* 8017B624  90 1F 04 00 */	stw r0, 0x400(r31)
/* 8017B628  48 00 00 2C */	b lbl_8017B654
lbl_8017B62C:
/* 8017B62C  38 00 00 00 */	li r0, 0
/* 8017B630  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 8017B634  38 00 FF FF */	li r0, -1
/* 8017B638  90 1F 04 00 */	stw r0, 0x400(r31)
/* 8017B63C  C0 5F 04 64 */	lfs f2, 0x464(r31)
/* 8017B640  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8017B644  EC 1F 10 28 */	fsubs f0, f31, f2
/* 8017B648  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017B64C  EC 02 00 2A */	fadds f0, f2, f0
/* 8017B650  D0 1F 04 64 */	stfs f0, 0x464(r31)
lbl_8017B654:
/* 8017B654  C0 02 9E 9C */	lfs f0, lit_12868(r2)
/* 8017B658  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8017B65C  40 80 00 0C */	bge lbl_8017B668
/* 8017B660  FF A0 00 90 */	fmr f29, f0
/* 8017B664  48 00 00 14 */	b lbl_8017B678
lbl_8017B668:
/* 8017B668  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017B66C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8017B670  40 81 00 08 */	ble lbl_8017B678
/* 8017B674  FF A0 00 90 */	fmr f29, f0
lbl_8017B678:
/* 8017B678  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017B67C  2C 00 00 01 */	cmpwi r0, 1
/* 8017B680  40 82 00 14 */	bne lbl_8017B694
/* 8017B684  C3 81 05 10 */	lfs f28, 0x510(r1)
/* 8017B688  C2 E1 05 08 */	lfs f23, 0x508(r1)
/* 8017B68C  C3 21 05 0C */	lfs f25, 0x50c(r1)
/* 8017B690  FE 80 90 90 */	fmr f20, f18
lbl_8017B694:
/* 8017B694  C2 42 9C A0 */	lfs f18, lit_5656(r2)
/* 8017B698  FD C0 90 90 */	fmr f14, f18
/* 8017B69C  88 1F 04 7A */	lbz r0, 0x47a(r31)
/* 8017B6A0  28 00 00 00 */	cmplwi r0, 0
/* 8017B6A4  41 82 02 44 */	beq lbl_8017B8E8
/* 8017B6A8  80 BF 04 7C */	lwz r5, 0x47c(r31)
/* 8017B6AC  28 05 00 00 */	cmplwi r5, 0
/* 8017B6B0  41 82 02 38 */	beq lbl_8017B8E8
/* 8017B6B4  38 61 03 8C */	addi r3, r1, 0x38c
/* 8017B6B8  7F E4 FB 78 */	mr r4, r31
/* 8017B6BC  4B F1 C0 A1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017B6C0  38 61 03 80 */	addi r3, r1, 0x380
/* 8017B6C4  7F E4 FB 78 */	mr r4, r31
/* 8017B6C8  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017B6CC  4B F1 C0 91 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017B6D0  38 61 03 74 */	addi r3, r1, 0x374
/* 8017B6D4  38 81 03 8C */	addi r4, r1, 0x38c
/* 8017B6D8  38 A1 03 80 */	addi r5, r1, 0x380
/* 8017B6DC  48 0E B4 59 */	bl __mi__4cXyzCFRC3Vec
/* 8017B6E0  38 61 04 70 */	addi r3, r1, 0x470
/* 8017B6E4  38 81 03 74 */	addi r4, r1, 0x374
/* 8017B6E8  4B F1 C1 0D */	bl __ct__4cXyzFRC4cXyz
/* 8017B6EC  38 61 03 74 */	addi r3, r1, 0x374
/* 8017B6F0  38 80 FF FF */	li r4, -1
/* 8017B6F4  4B E8 DA 91 */	bl __dt__4cXyzFv
/* 8017B6F8  38 61 03 80 */	addi r3, r1, 0x380
/* 8017B6FC  38 80 FF FF */	li r4, -1
/* 8017B700  4B E8 DA 85 */	bl __dt__4cXyzFv
/* 8017B704  38 61 03 8C */	addi r3, r1, 0x38c
/* 8017B708  38 80 FF FF */	li r4, -1
/* 8017B70C  4B E8 DA 79 */	bl __dt__4cXyzFv
/* 8017B710  38 61 04 70 */	addi r3, r1, 0x470
/* 8017B714  4B F1 30 7D */	bl abs__4cXyzCFv
/* 8017B718  FF E0 08 90 */	fmr f31, f1
/* 8017B71C  38 61 01 2C */	addi r3, r1, 0x12c
/* 8017B720  3B 5F 00 62 */	addi r26, r31, 0x62
/* 8017B724  7F 44 D3 78 */	mr r4, r26
/* 8017B728  48 0F 5A 21 */	bl __mi__7cSAngleCFv
/* 8017B72C  38 61 01 68 */	addi r3, r1, 0x168
/* 8017B730  38 81 01 2C */	addi r4, r1, 0x12c
/* 8017B734  48 0F 58 35 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017B738  38 61 01 2C */	addi r3, r1, 0x12c
/* 8017B73C  38 80 FF FF */	li r4, -1
/* 8017B740  4B EB 4D D1 */	bl __dt__7cSAngleFv
/* 8017B744  38 61 01 28 */	addi r3, r1, 0x128
/* 8017B748  38 81 01 68 */	addi r4, r1, 0x168
/* 8017B74C  48 0F 58 1D */	bl __ct__7cSAngleFRC7cSAngle
/* 8017B750  38 61 03 68 */	addi r3, r1, 0x368
/* 8017B754  38 81 04 70 */	addi r4, r1, 0x470
/* 8017B758  38 A1 01 28 */	addi r5, r1, 0x128
/* 8017B75C  4B F0 CC 29 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8017B760  38 61 04 70 */	addi r3, r1, 0x470
/* 8017B764  38 81 03 68 */	addi r4, r1, 0x368
/* 8017B768  4B F1 C0 71 */	bl __as__4cXyzFRC4cXyz
/* 8017B76C  38 61 03 68 */	addi r3, r1, 0x368
/* 8017B770  38 80 FF FF */	li r4, -1
/* 8017B774  4B E8 DA 11 */	bl __dt__4cXyzFv
/* 8017B778  38 61 01 28 */	addi r3, r1, 0x128
/* 8017B77C  38 80 FF FF */	li r4, -1
/* 8017B780  4B EB 4D 91 */	bl __dt__7cSAngleFv
/* 8017B784  38 61 04 64 */	addi r3, r1, 0x464
/* 8017B788  38 81 04 70 */	addi r4, r1, 0x470
/* 8017B78C  4B F1 C0 69 */	bl __ct__4cXyzFRC4cXyz
/* 8017B790  C0 21 04 68 */	lfs f1, 0x468(r1)
/* 8017B794  48 00 72 A9 */	bl fabsf__3stdFf
/* 8017B798  C0 02 9D 10 */	lfs f0, lit_8022(r2)
/* 8017B79C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017B7A0  40 80 00 50 */	bge lbl_8017B7F0
/* 8017B7A4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017B7A8  D0 01 04 68 */	stfs f0, 0x468(r1)
/* 8017B7AC  C0 21 04 64 */	lfs f1, 0x464(r1)
/* 8017B7B0  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8017B7B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017B7B8  D0 01 04 64 */	stfs f0, 0x464(r1)
/* 8017B7BC  38 61 04 64 */	addi r3, r1, 0x464
/* 8017B7C0  4B F1 2F D1 */	bl abs__4cXyzCFv
/* 8017B7C4  C0 02 9E C8 */	lfs f0, lit_15474(r2)
/* 8017B7C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017B7CC  40 80 00 24 */	bge lbl_8017B7F0
/* 8017B7D0  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017B7D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8017B7D8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8017B7DC  C0 22 9E CC */	lfs f1, lit_15475(r2)
/* 8017B7E0  C0 01 04 70 */	lfs f0, 0x470(r1)
/* 8017B7E4  FC 00 00 50 */	fneg f0, f0
/* 8017B7E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017B7EC  EE 40 00 B2 */	fmuls f18, f0, f2
lbl_8017B7F0:
/* 8017B7F0  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017B7F4  2C 00 00 01 */	cmpwi r0, 1
/* 8017B7F8  41 82 00 C8 */	beq lbl_8017B8C0
/* 8017B7FC  C0 22 9E 6C */	lfs f1, lit_12290(r2)
/* 8017B800  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8017B804  40 80 00 0C */	bge lbl_8017B810
/* 8017B808  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8017B80C  48 00 00 2C */	b lbl_8017B838
lbl_8017B810:
/* 8017B810  C0 02 9E C8 */	lfs f0, lit_15474(r2)
/* 8017B814  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8017B818  40 81 00 0C */	ble lbl_8017B824
/* 8017B81C  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 8017B820  48 00 00 18 */	b lbl_8017B838
lbl_8017B824:
/* 8017B824  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017B828  EC 3F 08 28 */	fsubs f1, f31, f1
/* 8017B82C  C0 02 9E D0 */	lfs f0, lit_15476(r2)
/* 8017B830  EC 01 00 24 */	fdivs f0, f1, f0
/* 8017B834  EC 22 00 28 */	fsubs f1, f2, f0
lbl_8017B838:
/* 8017B838  C0 02 9D 90 */	lfs f0, lit_10559(r2)
/* 8017B83C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8017B840  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017B844  EF 9C 00 2A */	fadds f28, f28, f0
/* 8017B848  C0 02 9E D4 */	lfs f0, lit_15477(r2)
/* 8017B84C  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8017B850  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017B854  EE F7 00 2A */	fadds f23, f23, f0
/* 8017B858  C0 02 9E D8 */	lfs f0, lit_15478(r2)
/* 8017B85C  EC 00 C8 28 */	fsubs f0, f0, f25
/* 8017B860  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017B864  EF 39 00 2A */	fadds f25, f25, f0
/* 8017B868  C0 02 9D 28 */	lfs f0, lit_9395(r2)
/* 8017B86C  EC 00 A8 28 */	fsubs f0, f0, f21
/* 8017B870  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017B874  EE B5 00 2A */	fadds f21, f21, f0
/* 8017B878  38 61 01 24 */	addi r3, r1, 0x124
/* 8017B87C  7F E4 FB 78 */	mr r4, r31
/* 8017B880  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017B884  4B F1 BE B5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017B888  38 61 01 20 */	addi r3, r1, 0x120
/* 8017B88C  7F 44 D3 78 */	mr r4, r26
/* 8017B890  38 A1 01 24 */	addi r5, r1, 0x124
/* 8017B894  48 0F 59 11 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017B898  38 61 01 68 */	addi r3, r1, 0x168
/* 8017B89C  38 81 01 20 */	addi r4, r1, 0x120
/* 8017B8A0  48 00 74 09 */	bl __as__7cSAngleFRC7cSAngle
/* 8017B8A4  38 61 01 20 */	addi r3, r1, 0x120
/* 8017B8A8  38 80 FF FF */	li r4, -1
/* 8017B8AC  4B EB 4C 65 */	bl __dt__7cSAngleFv
/* 8017B8B0  38 61 01 24 */	addi r3, r1, 0x124
/* 8017B8B4  38 80 FF FF */	li r4, -1
/* 8017B8B8  4B EB 4C 59 */	bl __dt__7cSAngleFv
/* 8017B8BC  C2 02 9C EC */	lfs f16, lit_6766(r2)
lbl_8017B8C0:
/* 8017B8C0  38 61 04 64 */	addi r3, r1, 0x464
/* 8017B8C4  38 80 FF FF */	li r4, -1
/* 8017B8C8  4B E8 D8 BD */	bl __dt__4cXyzFv
/* 8017B8CC  38 61 01 68 */	addi r3, r1, 0x168
/* 8017B8D0  38 80 FF FF */	li r4, -1
/* 8017B8D4  4B EB 4C 3D */	bl __dt__7cSAngleFv
/* 8017B8D8  38 61 04 70 */	addi r3, r1, 0x470
/* 8017B8DC  38 80 FF FF */	li r4, -1
/* 8017B8E0  4B E8 D8 A5 */	bl __dt__4cXyzFv
/* 8017B8E4  48 00 09 34 */	b lbl_8017C218
lbl_8017B8E8:
/* 8017B8E8  80 1F 04 80 */	lwz r0, 0x480(r31)
/* 8017B8EC  28 00 00 00 */	cmplwi r0, 0
/* 8017B8F0  41 82 06 04 */	beq lbl_8017BEF4
/* 8017B8F4  7F 63 DB 78 */	mr r3, r27
/* 8017B8F8  38 80 00 00 */	li r4, 0
/* 8017B8FC  4B EF 7C 41 */	bl LockonTarget__12dAttention_cFl
/* 8017B900  7C 7C 1B 78 */	mr r28, r3
/* 8017B904  7F 63 DB 78 */	mr r3, r27
/* 8017B908  38 80 00 01 */	li r4, 1
/* 8017B90C  4B EF 7C 31 */	bl LockonTarget__12dAttention_cFl
/* 8017B910  7C 7A 1B 78 */	mr r26, r3
/* 8017B914  7F 63 DB 78 */	mr r3, r27
/* 8017B918  38 80 00 00 */	li r4, 0
/* 8017B91C  4B EF 7E 71 */	bl CheckObjectTarget__12dAttention_cFl
/* 8017B920  7C 7B 1B 78 */	mr r27, r3
/* 8017B924  80 1F 04 7C */	lwz r0, 0x47c(r31)
/* 8017B928  28 00 00 00 */	cmplwi r0, 0
/* 8017B92C  41 82 00 8C */	beq lbl_8017B9B8
/* 8017B930  38 61 03 5C */	addi r3, r1, 0x35c
/* 8017B934  7F E4 FB 78 */	mr r4, r31
/* 8017B938  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017B93C  4B F1 BD E1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017B940  38 61 04 58 */	addi r3, r1, 0x458
/* 8017B944  38 81 03 5C */	addi r4, r1, 0x35c
/* 8017B948  4B F1 BE AD */	bl __ct__4cXyzFRC4cXyz
/* 8017B94C  38 61 03 5C */	addi r3, r1, 0x35c
/* 8017B950  38 80 FF FF */	li r4, -1
/* 8017B954  4B E8 D8 31 */	bl __dt__4cXyzFv
/* 8017B958  38 61 03 50 */	addi r3, r1, 0x350
/* 8017B95C  7F E4 FB 78 */	mr r4, r31
/* 8017B960  80 BF 04 7C */	lwz r5, 0x47c(r31)
/* 8017B964  4B F1 BD B9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017B968  38 61 04 4C */	addi r3, r1, 0x44c
/* 8017B96C  38 81 03 50 */	addi r4, r1, 0x350
/* 8017B970  4B F1 BE 85 */	bl __ct__4cXyzFRC4cXyz
/* 8017B974  38 61 03 50 */	addi r3, r1, 0x350
/* 8017B978  38 80 FF FF */	li r4, -1
/* 8017B97C  4B E8 D8 09 */	bl __dt__4cXyzFv
/* 8017B980  38 61 04 58 */	addi r3, r1, 0x458
/* 8017B984  38 81 04 4C */	addi r4, r1, 0x44c
/* 8017B988  4B F0 CA 65 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8017B98C  C0 02 9E DC */	lfs f0, lit_15479(r2)
/* 8017B990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017B994  40 80 00 0C */	bge lbl_8017B9A0
/* 8017B998  83 9F 04 7C */	lwz r28, 0x47c(r31)
/* 8017B99C  3B 40 00 00 */	li r26, 0
lbl_8017B9A0:
/* 8017B9A0  38 61 04 4C */	addi r3, r1, 0x44c
/* 8017B9A4  38 80 FF FF */	li r4, -1
/* 8017B9A8  4B E8 D7 DD */	bl __dt__4cXyzFv
/* 8017B9AC  38 61 04 58 */	addi r3, r1, 0x458
/* 8017B9B0  38 80 FF FF */	li r4, -1
/* 8017B9B4  4B E8 D7 D1 */	bl __dt__4cXyzFv
lbl_8017B9B8:
/* 8017B9B8  28 1C 00 00 */	cmplwi r28, 0
/* 8017B9BC  41 82 01 AC */	beq lbl_8017BB68
/* 8017B9C0  7F 83 E3 78 */	mr r3, r28
/* 8017B9C4  4B FC 58 F9 */	bl fopAcM_GetName__FPv
/* 8017B9C8  7C 60 07 34 */	extsh r0, r3
/* 8017B9CC  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 8017B9D0  41 82 00 40 */	beq lbl_8017BA10
/* 8017B9D4  7F 83 E3 78 */	mr r3, r28
/* 8017B9D8  4B FC 58 E5 */	bl fopAcM_GetName__FPv
/* 8017B9DC  7C 60 07 34 */	extsh r0, r3
/* 8017B9E0  2C 00 01 E6 */	cmpwi r0, 0x1e6
/* 8017B9E4  41 82 00 2C */	beq lbl_8017BA10
/* 8017B9E8  7F 83 E3 78 */	mr r3, r28
/* 8017B9EC  4B FC 58 D1 */	bl fopAcM_GetName__FPv
/* 8017B9F0  7C 60 07 34 */	extsh r0, r3
/* 8017B9F4  2C 00 02 0E */	cmpwi r0, 0x20e
/* 8017B9F8  41 82 00 18 */	beq lbl_8017BA10
/* 8017B9FC  7F 83 E3 78 */	mr r3, r28
/* 8017BA00  4B FC 58 BD */	bl fopAcM_GetName__FPv
/* 8017BA04  7C 60 07 34 */	extsh r0, r3
/* 8017BA08  2C 00 01 F0 */	cmpwi r0, 0x1f0
/* 8017BA0C  40 82 01 5C */	bne lbl_8017BB68
lbl_8017BA10:
/* 8017BA10  38 61 03 44 */	addi r3, r1, 0x344
/* 8017BA14  7F E4 FB 78 */	mr r4, r31
/* 8017BA18  7F 85 E3 78 */	mr r5, r28
/* 8017BA1C  4B F1 BD 41 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017BA20  38 61 03 38 */	addi r3, r1, 0x338
/* 8017BA24  7F E4 FB 78 */	mr r4, r31
/* 8017BA28  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017BA2C  4B F1 BD 31 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017BA30  38 61 03 2C */	addi r3, r1, 0x32c
/* 8017BA34  38 81 03 44 */	addi r4, r1, 0x344
/* 8017BA38  38 A1 03 38 */	addi r5, r1, 0x338
/* 8017BA3C  48 0E B0 F9 */	bl __mi__4cXyzCFRC3Vec
/* 8017BA40  38 61 04 40 */	addi r3, r1, 0x440
/* 8017BA44  38 81 03 2C */	addi r4, r1, 0x32c
/* 8017BA48  4B F1 BD AD */	bl __ct__4cXyzFRC4cXyz
/* 8017BA4C  38 61 03 2C */	addi r3, r1, 0x32c
/* 8017BA50  38 80 FF FF */	li r4, -1
/* 8017BA54  4B E8 D7 31 */	bl __dt__4cXyzFv
/* 8017BA58  38 61 03 38 */	addi r3, r1, 0x338
/* 8017BA5C  38 80 FF FF */	li r4, -1
/* 8017BA60  4B E8 D7 25 */	bl __dt__4cXyzFv
/* 8017BA64  38 61 03 44 */	addi r3, r1, 0x344
/* 8017BA68  38 80 FF FF */	li r4, -1
/* 8017BA6C  4B E8 D7 19 */	bl __dt__4cXyzFv
/* 8017BA70  38 61 01 1C */	addi r3, r1, 0x11c
/* 8017BA74  38 9F 00 62 */	addi r4, r31, 0x62
/* 8017BA78  48 0F 56 D1 */	bl __mi__7cSAngleCFv
/* 8017BA7C  38 61 01 64 */	addi r3, r1, 0x164
/* 8017BA80  38 81 01 1C */	addi r4, r1, 0x11c
/* 8017BA84  48 0F 54 E5 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017BA88  38 61 01 1C */	addi r3, r1, 0x11c
/* 8017BA8C  38 80 FF FF */	li r4, -1
/* 8017BA90  4B EB 4A 81 */	bl __dt__7cSAngleFv
/* 8017BA94  38 61 01 18 */	addi r3, r1, 0x118
/* 8017BA98  38 81 01 64 */	addi r4, r1, 0x164
/* 8017BA9C  48 0F 54 CD */	bl __ct__7cSAngleFRC7cSAngle
/* 8017BAA0  38 61 03 20 */	addi r3, r1, 0x320
/* 8017BAA4  38 81 04 40 */	addi r4, r1, 0x440
/* 8017BAA8  38 A1 01 18 */	addi r5, r1, 0x118
/* 8017BAAC  4B F0 C8 D9 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8017BAB0  38 61 04 40 */	addi r3, r1, 0x440
/* 8017BAB4  38 81 03 20 */	addi r4, r1, 0x320
/* 8017BAB8  4B F1 BD 21 */	bl __as__4cXyzFRC4cXyz
/* 8017BABC  38 61 03 20 */	addi r3, r1, 0x320
/* 8017BAC0  38 80 FF FF */	li r4, -1
/* 8017BAC4  4B E8 D6 C1 */	bl __dt__4cXyzFv
/* 8017BAC8  38 61 01 18 */	addi r3, r1, 0x118
/* 8017BACC  38 80 FF FF */	li r4, -1
/* 8017BAD0  4B EB 4A 41 */	bl __dt__7cSAngleFv
/* 8017BAD4  38 61 04 34 */	addi r3, r1, 0x434
/* 8017BAD8  38 81 04 40 */	addi r4, r1, 0x440
/* 8017BADC  4B F1 BD 19 */	bl __ct__4cXyzFRC4cXyz
/* 8017BAE0  C0 21 04 38 */	lfs f1, 0x438(r1)
/* 8017BAE4  48 00 6F 59 */	bl fabsf__3stdFf
/* 8017BAE8  C0 02 9D 10 */	lfs f0, lit_8022(r2)
/* 8017BAEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017BAF0  40 80 00 54 */	bge lbl_8017BB44
/* 8017BAF4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017BAF8  D0 01 04 38 */	stfs f0, 0x438(r1)
/* 8017BAFC  C0 21 04 34 */	lfs f1, 0x434(r1)
/* 8017BB00  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8017BB04  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017BB08  D0 01 04 34 */	stfs f0, 0x434(r1)
/* 8017BB0C  38 61 04 34 */	addi r3, r1, 0x434
/* 8017BB10  4B F1 2C 81 */	bl abs__4cXyzCFv
/* 8017BB14  C0 82 9E E0 */	lfs f4, lit_15480(r2)
/* 8017BB18  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8017BB1C  40 80 00 28 */	bge lbl_8017BB44
/* 8017BB20  C0 42 9E CC */	lfs f2, lit_15475(r2)
/* 8017BB24  C0 01 04 40 */	lfs f0, 0x440(r1)
/* 8017BB28  FC 00 00 50 */	fneg f0, f0
/* 8017BB2C  EC 62 00 32 */	fmuls f3, f2, f0
/* 8017BB30  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017BB34  EC 01 20 24 */	fdivs f0, f1, f4
/* 8017BB38  EC 02 00 28 */	fsubs f0, f2, f0
/* 8017BB3C  EE 43 00 32 */	fmuls f18, f3, f0
/* 8017BB40  EE 52 07 72 */	fmuls f18, f18, f29
lbl_8017BB44:
/* 8017BB44  38 61 04 34 */	addi r3, r1, 0x434
/* 8017BB48  38 80 FF FF */	li r4, -1
/* 8017BB4C  4B E8 D6 39 */	bl __dt__4cXyzFv
/* 8017BB50  38 61 01 64 */	addi r3, r1, 0x164
/* 8017BB54  38 80 FF FF */	li r4, -1
/* 8017BB58  4B EB 49 B9 */	bl __dt__7cSAngleFv
/* 8017BB5C  38 61 04 40 */	addi r3, r1, 0x440
/* 8017BB60  38 80 FF FF */	li r4, -1
/* 8017BB64  4B E8 D6 21 */	bl __dt__4cXyzFv
lbl_8017BB68:
/* 8017BB68  28 1B 00 00 */	cmplwi r27, 0
/* 8017BB6C  41 82 01 5C */	beq lbl_8017BCC8
/* 8017BB70  38 61 03 14 */	addi r3, r1, 0x314
/* 8017BB74  7F E4 FB 78 */	mr r4, r31
/* 8017BB78  7F 65 DB 78 */	mr r5, r27
/* 8017BB7C  4B F1 BB E1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017BB80  38 61 03 08 */	addi r3, r1, 0x308
/* 8017BB84  7F E4 FB 78 */	mr r4, r31
/* 8017BB88  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017BB8C  4B F1 BB D1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017BB90  38 61 02 FC */	addi r3, r1, 0x2fc
/* 8017BB94  38 81 03 14 */	addi r4, r1, 0x314
/* 8017BB98  38 A1 03 08 */	addi r5, r1, 0x308
/* 8017BB9C  48 0E AF 99 */	bl __mi__4cXyzCFRC3Vec
/* 8017BBA0  38 61 04 28 */	addi r3, r1, 0x428
/* 8017BBA4  38 81 02 FC */	addi r4, r1, 0x2fc
/* 8017BBA8  4B F1 BC 4D */	bl __ct__4cXyzFRC4cXyz
/* 8017BBAC  38 61 02 FC */	addi r3, r1, 0x2fc
/* 8017BBB0  38 80 FF FF */	li r4, -1
/* 8017BBB4  4B E8 D5 D1 */	bl __dt__4cXyzFv
/* 8017BBB8  38 61 03 08 */	addi r3, r1, 0x308
/* 8017BBBC  38 80 FF FF */	li r4, -1
/* 8017BBC0  4B E8 D5 C5 */	bl __dt__4cXyzFv
/* 8017BBC4  38 61 03 14 */	addi r3, r1, 0x314
/* 8017BBC8  38 80 FF FF */	li r4, -1
/* 8017BBCC  4B E8 D5 B9 */	bl __dt__4cXyzFv
/* 8017BBD0  38 61 01 14 */	addi r3, r1, 0x114
/* 8017BBD4  38 9F 00 62 */	addi r4, r31, 0x62
/* 8017BBD8  48 0F 55 71 */	bl __mi__7cSAngleCFv
/* 8017BBDC  38 61 01 60 */	addi r3, r1, 0x160
/* 8017BBE0  38 81 01 14 */	addi r4, r1, 0x114
/* 8017BBE4  48 0F 53 85 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017BBE8  38 61 01 14 */	addi r3, r1, 0x114
/* 8017BBEC  38 80 FF FF */	li r4, -1
/* 8017BBF0  4B EB 49 21 */	bl __dt__7cSAngleFv
/* 8017BBF4  38 61 01 10 */	addi r3, r1, 0x110
/* 8017BBF8  38 81 01 60 */	addi r4, r1, 0x160
/* 8017BBFC  48 0F 53 6D */	bl __ct__7cSAngleFRC7cSAngle
/* 8017BC00  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 8017BC04  38 81 04 28 */	addi r4, r1, 0x428
/* 8017BC08  38 A1 01 10 */	addi r5, r1, 0x110
/* 8017BC0C  4B F0 C7 79 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8017BC10  38 61 04 28 */	addi r3, r1, 0x428
/* 8017BC14  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 8017BC18  4B F1 BB C1 */	bl __as__4cXyzFRC4cXyz
/* 8017BC1C  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 8017BC20  38 80 FF FF */	li r4, -1
/* 8017BC24  4B E8 D5 61 */	bl __dt__4cXyzFv
/* 8017BC28  38 61 01 10 */	addi r3, r1, 0x110
/* 8017BC2C  38 80 FF FF */	li r4, -1
/* 8017BC30  4B EB 48 E1 */	bl __dt__7cSAngleFv
/* 8017BC34  38 61 04 1C */	addi r3, r1, 0x41c
/* 8017BC38  38 81 04 28 */	addi r4, r1, 0x428
/* 8017BC3C  4B F1 BB B9 */	bl __ct__4cXyzFRC4cXyz
/* 8017BC40  C0 21 04 20 */	lfs f1, 0x420(r1)
/* 8017BC44  48 00 6D F9 */	bl fabsf__3stdFf
/* 8017BC48  C0 02 9D 10 */	lfs f0, lit_8022(r2)
/* 8017BC4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017BC50  40 80 00 54 */	bge lbl_8017BCA4
/* 8017BC54  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017BC58  D0 01 04 20 */	stfs f0, 0x420(r1)
/* 8017BC5C  C0 21 04 1C */	lfs f1, 0x41c(r1)
/* 8017BC60  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8017BC64  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017BC68  D0 01 04 1C */	stfs f0, 0x41c(r1)
/* 8017BC6C  38 61 04 1C */	addi r3, r1, 0x41c
/* 8017BC70  4B F1 2B 21 */	bl abs__4cXyzCFv
/* 8017BC74  C0 82 9E D0 */	lfs f4, lit_15476(r2)
/* 8017BC78  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8017BC7C  40 80 00 28 */	bge lbl_8017BCA4
/* 8017BC80  C0 42 9D F4 */	lfs f2, lit_11168(r2)
/* 8017BC84  C0 01 04 28 */	lfs f0, 0x428(r1)
/* 8017BC88  FC 00 00 50 */	fneg f0, f0
/* 8017BC8C  EC 62 00 32 */	fmuls f3, f2, f0
/* 8017BC90  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017BC94  EC 01 20 24 */	fdivs f0, f1, f4
/* 8017BC98  EC 02 00 28 */	fsubs f0, f2, f0
/* 8017BC9C  EE 43 00 32 */	fmuls f18, f3, f0
/* 8017BCA0  EE 52 07 72 */	fmuls f18, f18, f29
lbl_8017BCA4:
/* 8017BCA4  38 61 04 1C */	addi r3, r1, 0x41c
/* 8017BCA8  38 80 FF FF */	li r4, -1
/* 8017BCAC  4B E8 D4 D9 */	bl __dt__4cXyzFv
/* 8017BCB0  38 61 01 60 */	addi r3, r1, 0x160
/* 8017BCB4  38 80 FF FF */	li r4, -1
/* 8017BCB8  4B EB 48 59 */	bl __dt__7cSAngleFv
/* 8017BCBC  38 61 04 28 */	addi r3, r1, 0x428
/* 8017BCC0  38 80 FF FF */	li r4, -1
/* 8017BCC4  4B E8 D4 C1 */	bl __dt__4cXyzFv
lbl_8017BCC8:
/* 8017BCC8  28 1C 00 00 */	cmplwi r28, 0
/* 8017BCCC  41 82 00 30 */	beq lbl_8017BCFC
/* 8017BCD0  7F 83 E3 78 */	mr r3, r28
/* 8017BCD4  4B FC 55 E9 */	bl fopAcM_GetName__FPv
/* 8017BCD8  7C 60 07 34 */	extsh r0, r3
/* 8017BCDC  2C 00 01 F0 */	cmpwi r0, 0x1f0
/* 8017BCE0  40 82 00 1C */	bne lbl_8017BCFC
/* 8017BCE4  C2 E2 9E 5C */	lfs f23, lit_12286(r2)
/* 8017BCE8  C2 C2 9C E4 */	lfs f22, lit_6629(r2)
/* 8017BCEC  C3 22 9E D0 */	lfs f25, lit_15476(r2)
/* 8017BCF0  C3 02 9E C4 */	lfs f24, lit_14064(r2)
/* 8017BCF4  C3 82 9C B0 */	lfs f28, lit_5660(r2)
/* 8017BCF8  48 00 01 34 */	b lbl_8017BE2C
lbl_8017BCFC:
/* 8017BCFC  28 1C 00 00 */	cmplwi r28, 0
/* 8017BD00  41 82 00 80 */	beq lbl_8017BD80
/* 8017BD04  7F 83 E3 78 */	mr r3, r28
/* 8017BD08  4B FC 55 B5 */	bl fopAcM_GetName__FPv
/* 8017BD0C  7C 60 07 34 */	extsh r0, r3
/* 8017BD10  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 8017BD14  40 82 00 14 */	bne lbl_8017BD28
/* 8017BD18  7F 83 E3 78 */	mr r3, r28
/* 8017BD1C  48 00 70 41 */	bl fopAcM_GetParam__FPCv
/* 8017BD20  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8017BD24  40 82 00 18 */	bne lbl_8017BD3C
lbl_8017BD28:
/* 8017BD28  7F 83 E3 78 */	mr r3, r28
/* 8017BD2C  4B FC 55 91 */	bl fopAcM_GetName__FPv
/* 8017BD30  7C 60 07 34 */	extsh r0, r3
/* 8017BD34  2C 00 02 0E */	cmpwi r0, 0x20e
/* 8017BD38  40 82 00 48 */	bne lbl_8017BD80
lbl_8017BD3C:
/* 8017BD3C  28 1A 00 00 */	cmplwi r26, 0
/* 8017BD40  40 82 00 40 */	bne lbl_8017BD80
/* 8017BD44  88 1F 04 7B */	lbz r0, 0x47b(r31)
/* 8017BD48  28 00 00 00 */	cmplwi r0, 0
/* 8017BD4C  41 82 00 18 */	beq lbl_8017BD64
/* 8017BD50  C3 22 9D 7C */	lfs f25, lit_10554(r2)
/* 8017BD54  C3 82 9E B8 */	lfs f28, lit_14061(r2)
/* 8017BD58  C2 E2 9E E4 */	lfs f23, lit_15481(r2)
/* 8017BD5C  C2 82 9C B8 */	lfs f20, lit_5662(r2)
/* 8017BD60  48 00 00 CC */	b lbl_8017BE2C
lbl_8017BD64:
/* 8017BD64  C3 22 9E E8 */	lfs f25, lit_15482(r2)
/* 8017BD68  C3 02 9E 84 */	lfs f24, lit_12296(r2)
/* 8017BD6C  C2 E2 9E 00 */	lfs f23, lit_11171(r2)
/* 8017BD70  C2 C2 9D F0 */	lfs f22, lit_11167(r2)
/* 8017BD74  C2 82 9E 38 */	lfs f20, lit_12277(r2)
/* 8017BD78  C2 62 9D CC */	lfs f19, lit_10574(r2)
/* 8017BD7C  48 00 00 B0 */	b lbl_8017BE2C
lbl_8017BD80:
/* 8017BD80  28 1C 00 00 */	cmplwi r28, 0
/* 8017BD84  41 82 00 2C */	beq lbl_8017BDB0
/* 8017BD88  7F 83 E3 78 */	mr r3, r28
/* 8017BD8C  4B FC 55 31 */	bl fopAcM_GetName__FPv
/* 8017BD90  7C 60 07 34 */	extsh r0, r3
/* 8017BD94  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 8017BD98  41 82 00 50 */	beq lbl_8017BDE8
/* 8017BD9C  7F 83 E3 78 */	mr r3, r28
/* 8017BDA0  4B FC 55 1D */	bl fopAcM_GetName__FPv
/* 8017BDA4  7C 60 07 34 */	extsh r0, r3
/* 8017BDA8  2C 00 01 E6 */	cmpwi r0, 0x1e6
/* 8017BDAC  41 82 00 3C */	beq lbl_8017BDE8
lbl_8017BDB0:
/* 8017BDB0  28 1A 00 00 */	cmplwi r26, 0
/* 8017BDB4  41 82 00 2C */	beq lbl_8017BDE0
/* 8017BDB8  7F 43 D3 78 */	mr r3, r26
/* 8017BDBC  4B FC 55 01 */	bl fopAcM_GetName__FPv
/* 8017BDC0  7C 60 07 34 */	extsh r0, r3
/* 8017BDC4  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 8017BDC8  41 82 00 20 */	beq lbl_8017BDE8
/* 8017BDCC  7F 43 D3 78 */	mr r3, r26
/* 8017BDD0  4B FC 54 ED */	bl fopAcM_GetName__FPv
/* 8017BDD4  7C 60 07 34 */	extsh r0, r3
/* 8017BDD8  2C 00 01 E6 */	cmpwi r0, 0x1e6
/* 8017BDDC  41 82 00 0C */	beq lbl_8017BDE8
lbl_8017BDE0:
/* 8017BDE0  28 1B 00 00 */	cmplwi r27, 0
/* 8017BDE4  41 82 00 48 */	beq lbl_8017BE2C
lbl_8017BDE8:
/* 8017BDE8  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017BDEC  2C 00 00 01 */	cmpwi r0, 1
/* 8017BDF0  40 82 00 18 */	bne lbl_8017BE08
/* 8017BDF4  C0 02 9E E0 */	lfs f0, lit_15480(r2)
/* 8017BDF8  EF 39 00 28 */	fsubs f25, f25, f0
/* 8017BDFC  C0 02 9D 50 */	lfs f0, lit_9405(r2)
/* 8017BE00  EE F7 00 2A */	fadds f23, f23, f0
/* 8017BE04  48 00 00 28 */	b lbl_8017BE2C
lbl_8017BE08:
/* 8017BE08  C3 82 9D 90 */	lfs f28, lit_10559(r2)
/* 8017BE0C  C3 62 9E C4 */	lfs f27, lit_14064(r2)
/* 8017BE10  C0 02 9C B4 */	lfs f0, lit_5661(r2)
/* 8017BE14  D0 01 05 18 */	stfs f0, 0x518(r1)
/* 8017BE18  C2 E2 9D 68 */	lfs f23, lit_9788(r2)
/* 8017BE1C  C2 C2 9D 50 */	lfs f22, lit_9405(r2)
/* 8017BE20  C3 22 9E EC */	lfs f25, lit_15483(r2)
/* 8017BE24  C3 02 9E 40 */	lfs f24, lit_12279(r2)
/* 8017BE28  C2 62 9C E4 */	lfs f19, lit_6629(r2)
lbl_8017BE2C:
/* 8017BE2C  80 7F 04 80 */	lwz r3, 0x480(r31)
/* 8017BE30  48 00 6F 19 */	bl checkJump__9daHorse_cCFv
/* 8017BE34  2C 03 00 00 */	cmpwi r3, 0
/* 8017BE38  41 82 00 B0 */	beq lbl_8017BEE8
/* 8017BE3C  88 1F 04 79 */	lbz r0, 0x479(r31)
/* 8017BE40  28 00 00 00 */	cmplwi r0, 0
/* 8017BE44  40 82 00 14 */	bne lbl_8017BE58
/* 8017BE48  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 8017BE4C  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8017BE50  38 00 00 01 */	li r0, 1
/* 8017BE54  98 1F 04 79 */	stb r0, 0x479(r31)
lbl_8017BE58:
/* 8017BE58  C3 42 9C 90 */	lfs f26, lit_4445(r2)
/* 8017BE5C  C0 02 9D D8 */	lfs f0, lit_10577(r2)
/* 8017BE60  D0 01 05 14 */	stfs f0, 0x514(r1)
/* 8017BE64  38 61 01 0C */	addi r3, r1, 0x10c
/* 8017BE68  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 8017BE6C  48 0F 51 5D */	bl __ct__7cSAngleFf
/* 8017BE70  A8 1F 00 60 */	lha r0, 0x60(r31)
/* 8017BE74  A8 81 01 0C */	lha r4, 0x10c(r1)
/* 8017BE78  7C 80 02 78 */	xor r0, r4, r0
/* 8017BE7C  7C 03 0E 70 */	srawi r3, r0, 1
/* 8017BE80  7C 00 20 38 */	and r0, r0, r4
/* 8017BE84  7C 00 18 50 */	subf r0, r0, r3
/* 8017BE88  54 1A 0F FE */	srwi r26, r0, 0x1f
/* 8017BE8C  38 61 01 0C */	addi r3, r1, 0x10c
/* 8017BE90  38 80 FF FF */	li r4, -1
/* 8017BE94  4B EB 46 7D */	bl __dt__7cSAngleFv
/* 8017BE98  28 1A 00 00 */	cmplwi r26, 0
/* 8017BE9C  41 82 00 14 */	beq lbl_8017BEB0
/* 8017BEA0  C3 62 9C B0 */	lfs f27, lit_5660(r2)
/* 8017BEA4  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 8017BEA8  EE F7 00 2A */	fadds f23, f23, f0
/* 8017BEAC  48 00 00 10 */	b lbl_8017BEBC
lbl_8017BEB0:
/* 8017BEB0  C3 62 9E C4 */	lfs f27, lit_14064(r2)
/* 8017BEB4  C0 02 9D CC */	lfs f0, lit_10574(r2)
/* 8017BEB8  EE F7 00 28 */	fsubs f23, f23, f0
lbl_8017BEBC:
/* 8017BEBC  C0 22 9D 24 */	lfs f1, lit_8530(r2)
/* 8017BEC0  EF 21 06 72 */	fmuls f25, f1, f25
/* 8017BEC4  C0 02 9D 50 */	lfs f0, lit_9405(r2)
/* 8017BEC8  EE 94 00 2A */	fadds f20, f20, f0
/* 8017BECC  FE 00 08 90 */	fmr f16, f1
/* 8017BED0  88 1F 04 7B */	lbz r0, 0x47b(r31)
/* 8017BED4  28 00 00 00 */	cmplwi r0, 0
/* 8017BED8  41 82 00 08 */	beq lbl_8017BEE0
/* 8017BEDC  C3 82 9C A0 */	lfs f28, lit_5656(r2)
lbl_8017BEE0:
/* 8017BEE0  C2 42 9C A0 */	lfs f18, lit_5656(r2)
/* 8017BEE4  48 00 03 34 */	b lbl_8017C218
lbl_8017BEE8:
/* 8017BEE8  38 00 00 00 */	li r0, 0
/* 8017BEEC  98 1F 04 79 */	stb r0, 0x479(r31)
/* 8017BEF0  48 00 03 28 */	b lbl_8017C218
lbl_8017BEF4:
/* 8017BEF4  7F A3 EB 78 */	mr r3, r29
/* 8017BEF8  4B F7 7E 01 */	bl checkCanoeRideTandem__9daAlink_cFv
/* 8017BEFC  2C 03 00 00 */	cmpwi r3, 0
/* 8017BF00  41 82 00 14 */	beq lbl_8017BF14
/* 8017BF04  38 00 00 00 */	li r0, 0
/* 8017BF08  98 1F 04 79 */	stb r0, 0x479(r31)
/* 8017BF0C  C1 C2 9E C4 */	lfs f14, lit_14064(r2)
/* 8017BF10  48 00 03 08 */	b lbl_8017C218
lbl_8017BF14:
/* 8017BF14  38 00 00 00 */	li r0, 0
/* 8017BF18  98 1F 04 79 */	stb r0, 0x479(r31)
/* 8017BF1C  7F A3 EB 78 */	mr r3, r29
/* 8017BF20  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017BF24  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8017BF28  7D 89 03 A6 */	mtctr r12
/* 8017BF2C  4E 80 04 21 */	bctrl 
/* 8017BF30  28 03 00 00 */	cmplwi r3, 0
/* 8017BF34  41 82 01 F8 */	beq lbl_8017C12C
/* 8017BF38  38 00 00 00 */	li r0, 0
/* 8017BF3C  98 1F 04 79 */	stb r0, 0x479(r31)
/* 8017BF40  80 BF 04 7C */	lwz r5, 0x47c(r31)
/* 8017BF44  28 05 00 00 */	cmplwi r5, 0
/* 8017BF48  41 82 01 E4 */	beq lbl_8017C12C
/* 8017BF4C  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8017BF50  7F E4 FB 78 */	mr r4, r31
/* 8017BF54  4B F1 B8 09 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017BF58  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 8017BF5C  7F E4 FB 78 */	mr r4, r31
/* 8017BF60  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017BF64  4B F1 B7 F9 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8017BF68  38 61 02 CC */	addi r3, r1, 0x2cc
/* 8017BF6C  38 81 02 E4 */	addi r4, r1, 0x2e4
/* 8017BF70  38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 8017BF74  48 0E AB C1 */	bl __mi__4cXyzCFRC3Vec
/* 8017BF78  38 61 04 10 */	addi r3, r1, 0x410
/* 8017BF7C  38 81 02 CC */	addi r4, r1, 0x2cc
/* 8017BF80  4B F1 B8 75 */	bl __ct__4cXyzFRC4cXyz
/* 8017BF84  38 61 02 CC */	addi r3, r1, 0x2cc
/* 8017BF88  38 80 FF FF */	li r4, -1
/* 8017BF8C  4B E8 D1 F9 */	bl __dt__4cXyzFv
/* 8017BF90  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 8017BF94  38 80 FF FF */	li r4, -1
/* 8017BF98  4B E8 D1 ED */	bl __dt__4cXyzFv
/* 8017BF9C  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8017BFA0  38 80 FF FF */	li r4, -1
/* 8017BFA4  4B E8 D1 E1 */	bl __dt__4cXyzFv
/* 8017BFA8  38 61 04 10 */	addi r3, r1, 0x410
/* 8017BFAC  4B F1 27 E5 */	bl abs__4cXyzCFv
/* 8017BFB0  C0 02 9E C8 */	lfs f0, lit_15474(r2)
/* 8017BFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017BFB8  40 80 01 68 */	bge lbl_8017C120
/* 8017BFBC  C3 82 9D 8C */	lfs f28, lit_10558(r2)
/* 8017BFC0  C3 62 9C E4 */	lfs f27, lit_6629(r2)
/* 8017BFC4  C0 02 9D 88 */	lfs f0, lit_10557(r2)
/* 8017BFC8  D0 01 05 18 */	stfs f0, 0x518(r1)
/* 8017BFCC  C2 E2 9E F0 */	lfs f23, lit_15484(r2)
/* 8017BFD0  C2 C2 9C F8 */	lfs f22, lit_8016(r2)
/* 8017BFD4  C3 22 9E F4 */	lfs f25, lit_15485(r2)
/* 8017BFD8  C3 02 9D EC */	lfs f24, lit_10582(r2)
/* 8017BFDC  FE 60 D8 90 */	fmr f19, f27
/* 8017BFE0  38 61 01 08 */	addi r3, r1, 0x108
/* 8017BFE4  38 9F 00 62 */	addi r4, r31, 0x62
/* 8017BFE8  48 0F 51 61 */	bl __mi__7cSAngleCFv
/* 8017BFEC  38 61 01 5C */	addi r3, r1, 0x15c
/* 8017BFF0  38 81 01 08 */	addi r4, r1, 0x108
/* 8017BFF4  48 0F 4F 75 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017BFF8  38 61 01 08 */	addi r3, r1, 0x108
/* 8017BFFC  38 80 FF FF */	li r4, -1
/* 8017C000  4B EB 45 11 */	bl __dt__7cSAngleFv
/* 8017C004  38 61 01 04 */	addi r3, r1, 0x104
/* 8017C008  38 81 01 5C */	addi r4, r1, 0x15c
/* 8017C00C  48 0F 4F 5D */	bl __ct__7cSAngleFRC7cSAngle
/* 8017C010  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8017C014  38 81 04 10 */	addi r4, r1, 0x410
/* 8017C018  38 A1 01 04 */	addi r5, r1, 0x104
/* 8017C01C  4B F0 C3 69 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8017C020  38 61 04 10 */	addi r3, r1, 0x410
/* 8017C024  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 8017C028  4B F1 B7 B1 */	bl __as__4cXyzFRC4cXyz
/* 8017C02C  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8017C030  38 80 FF FF */	li r4, -1
/* 8017C034  4B E8 D1 51 */	bl __dt__4cXyzFv
/* 8017C038  38 61 01 04 */	addi r3, r1, 0x104
/* 8017C03C  38 80 FF FF */	li r4, -1
/* 8017C040  4B EB 44 D1 */	bl __dt__7cSAngleFv
/* 8017C044  38 61 04 04 */	addi r3, r1, 0x404
/* 8017C048  38 81 04 10 */	addi r4, r1, 0x410
/* 8017C04C  4B F1 B7 A9 */	bl __ct__4cXyzFRC4cXyz
/* 8017C050  38 61 01 00 */	addi r3, r1, 0x100
/* 8017C054  38 81 04 10 */	addi r4, r1, 0x410
/* 8017C058  48 00 18 DD */	bl func_8017D934
/* 8017C05C  38 61 01 58 */	addi r3, r1, 0x158
/* 8017C060  38 81 01 00 */	addi r4, r1, 0x100
/* 8017C064  48 0F 4F 05 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017C068  38 61 01 00 */	addi r3, r1, 0x100
/* 8017C06C  38 80 FF FF */	li r4, -1
/* 8017C070  4B EB 44 A1 */	bl __dt__7cSAngleFv
/* 8017C074  38 61 01 58 */	addi r3, r1, 0x158
/* 8017C078  48 0F 50 A9 */	bl Cos__7cSAngleCFv
/* 8017C07C  C0 02 9C B4 */	lfs f0, lit_5661(r2)
/* 8017C080  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017C084  EF 39 00 2A */	fadds f25, f25, f0
/* 8017C088  C0 02 9E A4 */	lfs f0, lit_13132(r2)
/* 8017C08C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017C090  EE F7 00 2A */	fadds f23, f23, f0
/* 8017C094  C0 21 04 08 */	lfs f1, 0x408(r1)
/* 8017C098  48 00 69 A5 */	bl fabsf__3stdFf
/* 8017C09C  C0 02 9D 10 */	lfs f0, lit_8022(r2)
/* 8017C0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017C0A4  40 80 00 58 */	bge lbl_8017C0FC
/* 8017C0A8  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017C0AC  D0 01 04 08 */	stfs f0, 0x408(r1)
/* 8017C0B0  C0 21 04 04 */	lfs f1, 0x404(r1)
/* 8017C0B4  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8017C0B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C0BC  D0 01 04 04 */	stfs f0, 0x404(r1)
/* 8017C0C0  38 61 04 04 */	addi r3, r1, 0x404
/* 8017C0C4  4B F1 26 CD */	bl abs__4cXyzCFv
/* 8017C0C8  C0 02 9E E0 */	lfs f0, lit_15480(r2)
/* 8017C0CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017C0D0  40 80 00 2C */	bge lbl_8017C0FC
/* 8017C0D4  C0 42 9E CC */	lfs f2, lit_15475(r2)
/* 8017C0D8  C0 01 04 10 */	lfs f0, 0x410(r1)
/* 8017C0DC  FC 00 00 50 */	fneg f0, f0
/* 8017C0E0  EC 62 00 32 */	fmuls f3, f2, f0
/* 8017C0E4  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017C0E8  C0 02 9E C8 */	lfs f0, lit_15474(r2)
/* 8017C0EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8017C0F0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8017C0F4  EE 43 00 32 */	fmuls f18, f3, f0
/* 8017C0F8  EE 52 07 72 */	fmuls f18, f18, f29
lbl_8017C0FC:
/* 8017C0FC  38 61 01 58 */	addi r3, r1, 0x158
/* 8017C100  38 80 FF FF */	li r4, -1
/* 8017C104  4B EB 44 0D */	bl __dt__7cSAngleFv
/* 8017C108  38 61 04 04 */	addi r3, r1, 0x404
/* 8017C10C  38 80 FF FF */	li r4, -1
/* 8017C110  4B E8 D0 75 */	bl __dt__4cXyzFv
/* 8017C114  38 61 01 5C */	addi r3, r1, 0x15c
/* 8017C118  38 80 FF FF */	li r4, -1
/* 8017C11C  4B EB 43 F5 */	bl __dt__7cSAngleFv
lbl_8017C120:
/* 8017C120  38 61 04 10 */	addi r3, r1, 0x410
/* 8017C124  38 80 FF FF */	li r4, -1
/* 8017C128  4B E8 D0 5D */	bl __dt__4cXyzFv
lbl_8017C12C:
/* 8017C12C  7F A3 EB 78 */	mr r3, r29
/* 8017C130  4B FF 01 2D */	bl func_8016C25C
/* 8017C134  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017C138  41 82 00 3C */	beq lbl_8017C174
/* 8017C13C  7F A3 EB 78 */	mr r3, r29
/* 8017C140  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017C144  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 8017C148  7D 89 03 A6 */	mtctr r12
/* 8017C14C  4E 80 04 21 */	bctrl 
/* 8017C150  28 03 00 00 */	cmplwi r3, 0
/* 8017C154  40 82 00 34 */	bne lbl_8017C188
/* 8017C158  7F A3 EB 78 */	mr r3, r29
/* 8017C15C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017C160  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8017C164  7D 89 03 A6 */	mtctr r12
/* 8017C168  4E 80 04 21 */	bctrl 
/* 8017C16C  28 03 00 00 */	cmplwi r3, 0
/* 8017C170  40 82 00 18 */	bne lbl_8017C188
lbl_8017C174:
/* 8017C174  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017C178  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8017C17C  38 00 00 00 */	li r0, 0
/* 8017C180  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 8017C184  48 00 00 94 */	b lbl_8017C218
lbl_8017C188:
/* 8017C188  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 8017C18C  2C 00 00 28 */	cmpwi r0, 0x28
/* 8017C190  40 80 00 64 */	bge lbl_8017C1F4
/* 8017C194  38 00 00 01 */	li r0, 1
/* 8017C198  98 1F 04 79 */	stb r0, 0x479(r31)
/* 8017C19C  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 8017C1A0  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017C1A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017C1A8  90 01 05 04 */	stw r0, 0x504(r1)
/* 8017C1AC  3C 00 43 30 */	lis r0, 0x4330
/* 8017C1B0  90 01 05 00 */	stw r0, 0x500(r1)
/* 8017C1B4  C8 01 05 00 */	lfd f0, 0x500(r1)
/* 8017C1B8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8017C1BC  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 8017C1C0  EC 21 00 24 */	fdivs f1, f1, f0
/* 8017C1C4  C0 42 9D D0 */	lfs f2, lit_10575(r2)
/* 8017C1C8  4B F0 BF 75 */	bl rationalBezierRatio__8dCamMathFff
/* 8017C1CC  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8017C1D0  C0 5F 04 60 */	lfs f2, 0x460(r31)
/* 8017C1D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017C1D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017C1DC  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C1E0  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8017C1E4  80 7F 03 FC */	lwz r3, 0x3fc(r31)
/* 8017C1E8  38 03 00 01 */	addi r0, r3, 1
/* 8017C1EC  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 8017C1F0  48 00 00 28 */	b lbl_8017C218
lbl_8017C1F4:
/* 8017C1F4  38 00 00 01 */	li r0, 1
/* 8017C1F8  98 1F 04 79 */	stb r0, 0x479(r31)
/* 8017C1FC  C0 5F 04 60 */	lfs f2, 0x460(r31)
/* 8017C200  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8017C204  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017C208  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017C20C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C210  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C214  D0 1F 04 60 */	stfs f0, 0x460(r31)
lbl_8017C218:
/* 8017C218  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 8017C21C  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 8017C220  EC 1A 10 28 */	fsubs f0, f26, f2
/* 8017C224  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C228  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C22C  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8017C230  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 8017C234  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017C238  EC 20 10 28 */	fsubs f1, f0, f2
/* 8017C23C  C0 1F 04 60 */	lfs f0, 0x460(r31)
/* 8017C240  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C244  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C248  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8017C24C  38 7F 09 70 */	addi r3, r31, 0x970
/* 8017C250  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 8017C254  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 8017C258  48 00 69 79 */	bl CheckFlag__11dCamSetup_cFUs
/* 8017C25C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017C260  41 82 00 08 */	beq lbl_8017C268
/* 8017C264  48 00 67 F1 */	bl dComIfGp_evmng_cameraPlay__Fv
lbl_8017C268:
/* 8017C268  C0 5F 04 4C */	lfs f2, 0x44c(r31)
/* 8017C26C  C0 22 9C EC */	lfs f1, lit_6766(r2)
/* 8017C270  EC 10 10 28 */	fsubs f0, f16, f2
/* 8017C274  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C278  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C27C  D0 1F 04 4C */	stfs f0, 0x44c(r31)
/* 8017C280  C0 5F 04 34 */	lfs f2, 0x434(r31)
/* 8017C284  C0 3F 04 4C */	lfs f1, 0x44c(r31)
/* 8017C288  EC 19 10 28 */	fsubs f0, f25, f2
/* 8017C28C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C290  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C294  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 8017C298  C0 5F 04 38 */	lfs f2, 0x438(r31)
/* 8017C29C  C0 3F 04 4C */	lfs f1, 0x44c(r31)
/* 8017C2A0  EC 18 10 28 */	fsubs f0, f24, f2
/* 8017C2A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C2A8  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C2AC  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8017C2B0  C0 5F 04 3C */	lfs f2, 0x43c(r31)
/* 8017C2B4  C0 3F 04 4C */	lfs f1, 0x44c(r31)
/* 8017C2B8  EC 17 10 28 */	fsubs f0, f23, f2
/* 8017C2BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C2C0  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C2C4  D0 1F 04 3C */	stfs f0, 0x43c(r31)
/* 8017C2C8  C0 5F 04 40 */	lfs f2, 0x440(r31)
/* 8017C2CC  C0 3F 04 4C */	lfs f1, 0x44c(r31)
/* 8017C2D0  EC 16 10 28 */	fsubs f0, f22, f2
/* 8017C2D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C2D8  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C2DC  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8017C2E0  C2 02 9C A0 */	lfs f16, lit_5656(r2)
/* 8017C2E4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8017C2E8  3C 80 02 00 */	lis r4, 0x200
/* 8017C2EC  4B FF 00 45 */	bl func_8016C330
/* 8017C2F0  28 03 00 00 */	cmplwi r3, 0
/* 8017C2F4  41 82 00 20 */	beq lbl_8017C314
/* 8017C2F8  A8 1D 30 20 */	lha r0, 0x3020(r29)
/* 8017C2FC  2C 00 00 00 */	cmpwi r0, 0
/* 8017C300  40 82 00 0C */	bne lbl_8017C30C
/* 8017C304  C2 42 9E 08 */	lfs f18, lit_11173(r2)
/* 8017C308  48 00 00 40 */	b lbl_8017C348
lbl_8017C30C:
/* 8017C30C  C2 42 9D CC */	lfs f18, lit_10574(r2)
/* 8017C310  48 00 00 38 */	b lbl_8017C348
lbl_8017C314:
/* 8017C314  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 8017C318  40 81 00 30 */	ble lbl_8017C348
/* 8017C31C  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017C320  2C 00 00 01 */	cmpwi r0, 1
/* 8017C324  41 82 00 24 */	beq lbl_8017C348
/* 8017C328  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8017C32C  EC 01 F0 28 */	fsubs f0, f1, f30
/* 8017C330  EC 21 00 24 */	fdivs f1, f1, f0
/* 8017C334  EC 1D F0 28 */	fsubs f0, f29, f30
/* 8017C338  EC 21 00 32 */	fmuls f1, f1, f0
/* 8017C33C  C0 42 9D 0C */	lfs f2, lit_8021(r2)
/* 8017C340  4B F0 BD FD */	bl rationalBezierRatio__8dCamMathFff
/* 8017C344  FE 00 08 90 */	fmr f16, f1
lbl_8017C348:
/* 8017C348  C0 3F 04 34 */	lfs f1, 0x434(r31)
/* 8017C34C  C0 1F 04 38 */	lfs f0, 0x438(r31)
/* 8017C350  EC 00 04 32 */	fmuls f0, f0, f16
/* 8017C354  EE C1 00 2A */	fadds f22, f1, f0
/* 8017C358  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 8017C35C  C0 1F 04 40 */	lfs f0, 0x440(r31)
/* 8017C360  EC 00 04 32 */	fmuls f0, f0, f16
/* 8017C364  EE E1 00 2A */	fadds f23, f1, f0
/* 8017C368  EC 13 04 32 */	fmuls f0, f19, f16
/* 8017C36C  EE 74 00 2A */	fadds f19, f20, f0
/* 8017C370  38 61 01 80 */	addi r3, r1, 0x180
/* 8017C374  4B FF 20 AD */	bl __ct__7cSGlobeFv
/* 8017C378  EC 1B 04 32 */	fmuls f0, f27, f16
/* 8017C37C  EC 1C 00 2A */	fadds f0, f28, f0
/* 8017C380  D0 1F 04 54 */	stfs f0, 0x454(r31)
/* 8017C384  C0 5F 04 58 */	lfs f2, 0x458(r31)
/* 8017C388  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8017C38C  C0 01 05 18 */	lfs f0, 0x518(r1)
/* 8017C390  EC 00 04 32 */	fmuls f0, f0, f16
/* 8017C394  EC 0E 00 2A */	fadds f0, f14, f0
/* 8017C398  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017C39C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C3A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C3A4  D0 1F 04 58 */	stfs f0, 0x458(r31)
/* 8017C3A8  C0 5F 04 50 */	lfs f2, 0x450(r31)
/* 8017C3AC  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 8017C3B0  EC 12 10 28 */	fsubs f0, f18, f2
/* 8017C3B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C3B8  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C3BC  D0 1F 04 50 */	stfs f0, 0x450(r31)
/* 8017C3C0  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 8017C3C4  C0 3F 04 50 */	lfs f1, 0x450(r31)
/* 8017C3C8  C0 5F 04 54 */	lfs f2, 0x454(r31)
/* 8017C3CC  C0 7F 04 58 */	lfs f3, 0x458(r31)
/* 8017C3D0  4B FC 55 8D */	bl __ct__4cXyzFfff
/* 8017C3D4  38 7F 04 30 */	addi r3, r31, 0x430
/* 8017C3D8  48 0F 4D 11 */	bl Inv__7cSAngleCFv
/* 8017C3DC  7C 7A 1B 78 */	mr r26, r3
/* 8017C3E0  FC 20 B8 90 */	fmr f1, f23
/* 8017C3E4  48 00 69 45 */	bl d2s__6cAngleFf
/* 8017C3E8  7C 64 1B 78 */	mr r4, r3
/* 8017C3EC  38 61 01 80 */	addi r3, r1, 0x180
/* 8017C3F0  FC 20 B0 90 */	fmr f1, f22
/* 8017C3F4  7F 45 D3 78 */	mr r5, r26
/* 8017C3F8  48 0F 55 AD */	bl Val__7cSGlobeFfss
/* 8017C3FC  7F A3 EB 78 */	mr r3, r29
/* 8017C400  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017C404  81 8C 02 54 */	lwz r12, 0x254(r12)
/* 8017C408  7D 89 03 A6 */	mtctr r12
/* 8017C40C  4E 80 04 21 */	bctrl 
/* 8017C410  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017C414  41 82 00 78 */	beq lbl_8017C48C
/* 8017C418  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017C41C  2C 00 00 01 */	cmpwi r0, 1
/* 8017C420  41 82 00 6C */	beq lbl_8017C48C
/* 8017C424  38 61 00 FC */	addi r3, r1, 0xfc
/* 8017C428  38 81 01 70 */	addi r4, r1, 0x170
/* 8017C42C  48 0F 4B 3D */	bl __ct__7cSAngleFRC7cSAngle
/* 8017C430  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8017C434  7F E4 FB 78 */	mr r4, r31
/* 8017C438  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017C43C  4B F1 B2 FD */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017C440  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8017C444  48 0F 4C A5 */	bl Inv__7cSAngleCFv
/* 8017C448  7C 60 1B 78 */	mr r0, r3
/* 8017C44C  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8017C450  38 81 00 FC */	addi r4, r1, 0xfc
/* 8017C454  7C 05 07 34 */	extsh r5, r0
/* 8017C458  48 0F 4D A5 */	bl __pl__7cSAngleCFs
/* 8017C45C  38 61 01 80 */	addi r3, r1, 0x180
/* 8017C460  38 81 00 F4 */	addi r4, r1, 0xf4
/* 8017C464  4B F1 24 31 */	bl U__7cSGlobeFRC7cSAngle
/* 8017C468  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8017C46C  38 80 FF FF */	li r4, -1
/* 8017C470  4B EB 40 A1 */	bl __dt__7cSAngleFv
/* 8017C474  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8017C478  38 80 FF FF */	li r4, -1
/* 8017C47C  4B EB 40 95 */	bl __dt__7cSAngleFv
/* 8017C480  38 61 00 FC */	addi r3, r1, 0xfc
/* 8017C484  38 80 FF FF */	li r4, -1
/* 8017C488  4B EB 40 89 */	bl __dt__7cSAngleFv
lbl_8017C48C:
/* 8017C48C  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017C490  28 00 00 00 */	cmplwi r0, 0
/* 8017C494  40 82 00 14 */	bne lbl_8017C4A8
/* 8017C498  D3 5F 04 5C */	stfs f26, 0x45c(r31)
/* 8017C49C  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017C4A0  D0 1F 04 68 */	stfs f0, 0x468(r31)
/* 8017C4A4  48 00 00 20 */	b lbl_8017C4C4
lbl_8017C4A8:
/* 8017C4A8  C0 5F 04 68 */	lfs f2, 0x468(r31)
/* 8017C4AC  C0 22 9E AC */	lfs f1, lit_13673(r2)
/* 8017C4B0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017C4B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017C4B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C4BC  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C4C0  D0 1F 04 68 */	stfs f0, 0x468(r31)
lbl_8017C4C4:
/* 8017C4C4  38 61 04 90 */	addi r3, r1, 0x490
/* 8017C4C8  4B EF B8 DD */	bl __ct__14dBgS_CamLinChkFv
/* 8017C4CC  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8017C4D0  7F E4 FB 78 */	mr r4, r31
/* 8017C4D4  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017C4D8  4B F1 B2 45 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017C4DC  38 61 03 EC */	addi r3, r1, 0x3ec
/* 8017C4E0  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8017C4E4  4B F1 B3 11 */	bl __ct__4cXyzFRC4cXyz
/* 8017C4E8  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8017C4EC  38 80 FF FF */	li r4, -1
/* 8017C4F0  4B E8 CC 95 */	bl __dt__4cXyzFv
/* 8017C4F4  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8017C4F8  7F E4 FB 78 */	mr r4, r31
/* 8017C4FC  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017C500  38 C1 03 F8 */	addi r6, r1, 0x3f8
/* 8017C504  4B FE 88 69 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8017C508  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 8017C50C  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 8017C510  4B F1 B2 E5 */	bl __ct__4cXyzFRC4cXyz
/* 8017C514  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8017C518  38 80 FF FF */	li r4, -1
/* 8017C51C  4B E8 CC 69 */	bl __dt__4cXyzFv
/* 8017C520  7F E3 FB 78 */	mr r3, r31
/* 8017C524  38 81 03 EC */	addi r4, r1, 0x3ec
/* 8017C528  38 A1 03 E0 */	addi r5, r1, 0x3e0
/* 8017C52C  38 C1 04 90 */	addi r6, r1, 0x490
/* 8017C530  38 E0 40 B7 */	li r7, 0x40b7
/* 8017C534  4B FE 93 8D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 8017C538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017C53C  41 82 00 50 */	beq lbl_8017C58C
/* 8017C540  38 61 04 7C */	addi r3, r1, 0x47c
/* 8017C544  4B FC 4C AD */	bl __ct__8cM3dGPlaFv
/* 8017C548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8017C54C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8017C550  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8017C554  38 81 04 A4 */	addi r4, r1, 0x4a4
/* 8017C558  38 A1 04 7C */	addi r5, r1, 0x47c
/* 8017C55C  4B EF 81 E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8017C560  38 61 04 90 */	addi r3, r1, 0x490
/* 8017C564  48 00 64 8D */	bl GetCross__11cBgS_LinChkFv
/* 8017C568  7C 64 1B 78 */	mr r4, r3
/* 8017C56C  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 8017C570  4B F1 B2 69 */	bl __as__4cXyzFRC4cXyz
/* 8017C574  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 8017C578  38 81 04 7C */	addi r4, r1, 0x47c
/* 8017C57C  4B F1 23 89 */	bl __apl__4cXyzFRC3Vec
/* 8017C580  38 61 04 7C */	addi r3, r1, 0x47c
/* 8017C584  38 80 FF FF */	li r4, -1
/* 8017C588  4B EA 16 09 */	bl __dt__8cM3dGPlaFv
lbl_8017C58C:
/* 8017C58C  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 8017C590  C0 21 05 14 */	lfs f1, 0x514(r1)
/* 8017C594  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 8017C598  FC 60 08 90 */	fmr f3, f1
/* 8017C59C  4B FC 53 C1 */	bl __ct__4cXyzFfff
/* 8017C5A0  C0 5F 04 48 */	lfs f2, 0x448(r31)
/* 8017C5A4  C0 22 9D 14 */	lfs f1, lit_8023(r2)
/* 8017C5A8  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017C5AC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017C5B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017C5B4  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C5B8  D0 1F 04 48 */	stfs f0, 0x448(r31)
/* 8017C5BC  38 61 02 9C */	addi r3, r1, 0x29c
/* 8017C5C0  38 81 03 E0 */	addi r4, r1, 0x3e0
/* 8017C5C4  38 BF 04 24 */	addi r5, r31, 0x424
/* 8017C5C8  48 0E A5 6D */	bl __mi__4cXyzCFRC3Vec
/* 8017C5CC  38 61 02 90 */	addi r3, r1, 0x290
/* 8017C5D0  38 81 02 9C */	addi r4, r1, 0x29c
/* 8017C5D4  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 8017C5D8  48 0E A5 AD */	bl __ml__4cXyzCFf
/* 8017C5DC  38 7F 04 24 */	addi r3, r31, 0x424
/* 8017C5E0  38 81 02 90 */	addi r4, r1, 0x290
/* 8017C5E4  4B F1 23 21 */	bl __apl__4cXyzFRC3Vec
/* 8017C5E8  38 61 02 90 */	addi r3, r1, 0x290
/* 8017C5EC  38 80 FF FF */	li r4, -1
/* 8017C5F0  4B E8 CB 95 */	bl __dt__4cXyzFv
/* 8017C5F4  38 61 02 9C */	addi r3, r1, 0x29c
/* 8017C5F8  38 80 FF FF */	li r4, -1
/* 8017C5FC  4B E8 CB 89 */	bl __dt__4cXyzFv
/* 8017C600  7F E3 FB 78 */	mr r3, r31
/* 8017C604  38 9F 04 24 */	addi r4, r31, 0x424
/* 8017C608  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 8017C60C  4B FE B6 CD */	bl jutOutCheck__9dCamera_cFP4cXyzf
/* 8017C610  88 1F 01 58 */	lbz r0, 0x158(r31)
/* 8017C614  28 00 00 00 */	cmplwi r0, 0
/* 8017C618  40 82 07 94 */	bne lbl_8017CDAC
/* 8017C61C  80 1F 04 08 */	lwz r0, 0x408(r31)
/* 8017C620  2C 00 00 03 */	cmpwi r0, 3
/* 8017C624  41 82 00 DC */	beq lbl_8017C700
/* 8017C628  40 80 00 14 */	bge lbl_8017C63C
/* 8017C62C  2C 00 00 01 */	cmpwi r0, 1
/* 8017C630  41 82 00 1C */	beq lbl_8017C64C
/* 8017C634  40 80 00 C4 */	bge lbl_8017C6F8
/* 8017C638  48 00 04 C8 */	b lbl_8017CB00
lbl_8017C63C:
/* 8017C63C  2C 00 00 05 */	cmpwi r0, 5
/* 8017C640  41 82 02 D0 */	beq lbl_8017C910
/* 8017C644  40 80 04 BC */	bge lbl_8017CB00
/* 8017C648  48 00 01 30 */	b lbl_8017C778
lbl_8017C64C:
/* 8017C64C  3B 80 00 28 */	li r28, 0x28
/* 8017C650  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017C654  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017C658  20 00 00 28 */	subfic r0, r0, 0x28
/* 8017C65C  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017C660  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017C664  90 01 05 04 */	stw r0, 0x504(r1)
/* 8017C668  3C 00 43 30 */	lis r0, 0x4330
/* 8017C66C  90 01 05 00 */	stw r0, 0x500(r1)
/* 8017C670  C8 01 05 00 */	lfd f0, 0x500(r1)
/* 8017C674  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C678  ED E2 00 24 */	fdivs f15, f2, f0
/* 8017C67C  38 61 02 84 */	addi r3, r1, 0x284
/* 8017C680  38 9F 04 24 */	addi r4, r31, 0x424
/* 8017C684  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017C688  48 0E A4 AD */	bl __mi__4cXyzCFRC3Vec
/* 8017C68C  38 61 02 78 */	addi r3, r1, 0x278
/* 8017C690  38 81 02 84 */	addi r4, r1, 0x284
/* 8017C694  FC 20 78 90 */	fmr f1, f15
/* 8017C698  48 0E A4 ED */	bl __ml__4cXyzCFf
/* 8017C69C  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017C6A0  38 81 02 78 */	addi r4, r1, 0x278
/* 8017C6A4  4B F1 22 61 */	bl __apl__4cXyzFRC3Vec
/* 8017C6A8  38 61 02 78 */	addi r3, r1, 0x278
/* 8017C6AC  38 80 FF FF */	li r4, -1
/* 8017C6B0  4B E8 CA D5 */	bl __dt__4cXyzFv
/* 8017C6B4  38 61 02 84 */	addi r3, r1, 0x284
/* 8017C6B8  38 80 FF FF */	li r4, -1
/* 8017C6BC  4B E8 CA C9 */	bl __dt__4cXyzFv
/* 8017C6C0  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017C6C4  38 9F 04 0C */	addi r4, r31, 0x40c
/* 8017C6C8  4B F1 B1 11 */	bl __as__4cXyzFRC4cXyz
/* 8017C6CC  38 61 02 6C */	addi r3, r1, 0x26c
/* 8017C6D0  38 9F 00 70 */	addi r4, r31, 0x70
/* 8017C6D4  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017C6D8  48 0E A4 5D */	bl __mi__4cXyzCFRC3Vec
/* 8017C6DC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017C6E0  38 81 02 6C */	addi r4, r1, 0x26c
/* 8017C6E4  48 0F 53 8D */	bl Val__7cSGlobeFRC4cXyz
/* 8017C6E8  38 61 02 6C */	addi r3, r1, 0x26c
/* 8017C6EC  38 80 FF FF */	li r4, -1
/* 8017C6F0  4B E8 CA 95 */	bl __dt__4cXyzFv
/* 8017C6F4  48 00 06 00 */	b lbl_8017CCF4
lbl_8017C6F8:
/* 8017C6F8  3B 80 00 01 */	li r28, 1
/* 8017C6FC  48 00 05 F8 */	b lbl_8017CCF4
lbl_8017C700:
/* 8017C700  3B 80 00 01 */	li r28, 1
/* 8017C704  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017C708  38 9F 04 24 */	addi r4, r31, 0x424
/* 8017C70C  4B F1 B0 CD */	bl __as__4cXyzFRC4cXyz
/* 8017C710  C1 E2 9C A8 */	lfs f15, lit_5658(r2)
/* 8017C714  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8017C718  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8017C71C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017C720  38 81 01 84 */	addi r4, r1, 0x184
/* 8017C724  4B F1 33 35 */	bl V__7cSGlobeFRC7cSAngle
/* 8017C728  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017C72C  38 81 01 86 */	addi r4, r1, 0x186
/* 8017C730  4B F1 21 65 */	bl U__7cSGlobeFRC7cSAngle
/* 8017C734  38 61 02 60 */	addi r3, r1, 0x260
/* 8017C738  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017C73C  48 0F 53 79 */	bl Xyz__7cSGlobeCFv
/* 8017C740  38 61 02 54 */	addi r3, r1, 0x254
/* 8017C744  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017C748  38 A1 02 60 */	addi r5, r1, 0x260
/* 8017C74C  48 0E A3 99 */	bl __pl__4cXyzCFRC3Vec
/* 8017C750  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017C754  38 81 02 54 */	addi r4, r1, 0x254
/* 8017C758  4B F1 B0 81 */	bl __as__4cXyzFRC4cXyz
/* 8017C75C  38 61 02 54 */	addi r3, r1, 0x254
/* 8017C760  38 80 FF FF */	li r4, -1
/* 8017C764  4B E8 CA 21 */	bl __dt__4cXyzFv
/* 8017C768  38 61 02 60 */	addi r3, r1, 0x260
/* 8017C76C  38 80 FF FF */	li r4, -1
/* 8017C770  4B E8 CA 15 */	bl __dt__4cXyzFv
/* 8017C774  48 00 05 80 */	b lbl_8017CCF4
lbl_8017C778:
/* 8017C778  3B 80 00 08 */	li r28, 8
/* 8017C77C  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017C780  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017C784  20 00 00 08 */	subfic r0, r0, 8
/* 8017C788  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017C78C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017C790  90 01 05 04 */	stw r0, 0x504(r1)
/* 8017C794  3C 00 43 30 */	lis r0, 0x4330
/* 8017C798  90 01 05 00 */	stw r0, 0x500(r1)
/* 8017C79C  C8 01 05 00 */	lfd f0, 0x500(r1)
/* 8017C7A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C7A4  ED E2 00 24 */	fdivs f15, f2, f0
/* 8017C7A8  38 61 02 48 */	addi r3, r1, 0x248
/* 8017C7AC  38 9F 04 24 */	addi r4, r31, 0x424
/* 8017C7B0  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017C7B4  48 0E A3 81 */	bl __mi__4cXyzCFRC3Vec
/* 8017C7B8  38 61 02 3C */	addi r3, r1, 0x23c
/* 8017C7BC  38 81 02 48 */	addi r4, r1, 0x248
/* 8017C7C0  38 A1 03 D4 */	addi r5, r1, 0x3d4
/* 8017C7C4  48 0E A4 0D */	bl __ml__4cXyzCFRC3Vec
/* 8017C7C8  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017C7CC  38 81 02 3C */	addi r4, r1, 0x23c
/* 8017C7D0  4B F1 21 35 */	bl __apl__4cXyzFRC3Vec
/* 8017C7D4  38 61 02 3C */	addi r3, r1, 0x23c
/* 8017C7D8  38 80 FF FF */	li r4, -1
/* 8017C7DC  4B E8 C9 A9 */	bl __dt__4cXyzFv
/* 8017C7E0  38 61 02 48 */	addi r3, r1, 0x248
/* 8017C7E4  38 80 FF FF */	li r4, -1
/* 8017C7E8  4B E8 C9 9D */	bl __dt__4cXyzFv
/* 8017C7EC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8017C7F0  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8017C7F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C7F8  EC 0F 00 32 */	fmuls f0, f15, f0
/* 8017C7FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C800  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8017C804  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8017C808  38 81 01 84 */	addi r4, r1, 0x184
/* 8017C80C  3B 5F 00 60 */	addi r26, r31, 0x60
/* 8017C810  7F 45 D3 78 */	mr r5, r26
/* 8017C814  48 0F 49 91 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017C818  38 61 00 EC */	addi r3, r1, 0xec
/* 8017C81C  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8017C820  FC 20 78 90 */	fmr f1, f15
/* 8017C824  48 0F 4A 41 */	bl __ml__7cSAngleCFf
/* 8017C828  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8017C82C  7F 44 D3 78 */	mr r4, r26
/* 8017C830  38 A1 00 EC */	addi r5, r1, 0xec
/* 8017C834  48 0F 49 41 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017C838  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017C83C  38 81 00 E8 */	addi r4, r1, 0xe8
/* 8017C840  4B F1 32 19 */	bl V__7cSGlobeFRC7cSAngle
/* 8017C844  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8017C848  38 80 FF FF */	li r4, -1
/* 8017C84C  4B EB 3C C5 */	bl __dt__7cSAngleFv
/* 8017C850  38 61 00 EC */	addi r3, r1, 0xec
/* 8017C854  38 80 FF FF */	li r4, -1
/* 8017C858  4B EB 3C B9 */	bl __dt__7cSAngleFv
/* 8017C85C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8017C860  38 80 FF FF */	li r4, -1
/* 8017C864  4B EB 3C AD */	bl __dt__7cSAngleFv
/* 8017C868  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8017C86C  38 81 01 86 */	addi r4, r1, 0x186
/* 8017C870  3B 5F 00 62 */	addi r26, r31, 0x62
/* 8017C874  7F 45 D3 78 */	mr r5, r26
/* 8017C878  48 0F 49 2D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017C87C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8017C880  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8017C884  FC 20 78 90 */	fmr f1, f15
/* 8017C888  48 0F 49 DD */	bl __ml__7cSAngleCFf
/* 8017C88C  38 61 00 DC */	addi r3, r1, 0xdc
/* 8017C890  7F 44 D3 78 */	mr r4, r26
/* 8017C894  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 8017C898  48 0F 48 DD */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017C89C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017C8A0  38 81 00 DC */	addi r4, r1, 0xdc
/* 8017C8A4  4B F1 1F F1 */	bl U__7cSGlobeFRC7cSAngle
/* 8017C8A8  38 61 00 DC */	addi r3, r1, 0xdc
/* 8017C8AC  38 80 FF FF */	li r4, -1
/* 8017C8B0  4B EB 3C 61 */	bl __dt__7cSAngleFv
/* 8017C8B4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8017C8B8  38 80 FF FF */	li r4, -1
/* 8017C8BC  4B EB 3C 55 */	bl __dt__7cSAngleFv
/* 8017C8C0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8017C8C4  38 80 FF FF */	li r4, -1
/* 8017C8C8  4B EB 3C 49 */	bl __dt__7cSAngleFv
/* 8017C8CC  38 61 02 30 */	addi r3, r1, 0x230
/* 8017C8D0  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017C8D4  48 0F 51 E1 */	bl Xyz__7cSGlobeCFv
/* 8017C8D8  38 61 02 24 */	addi r3, r1, 0x224
/* 8017C8DC  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017C8E0  38 A1 02 30 */	addi r5, r1, 0x230
/* 8017C8E4  48 0E A2 01 */	bl __pl__4cXyzCFRC3Vec
/* 8017C8E8  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017C8EC  38 81 02 24 */	addi r4, r1, 0x224
/* 8017C8F0  4B F1 AE E9 */	bl __as__4cXyzFRC4cXyz
/* 8017C8F4  38 61 02 24 */	addi r3, r1, 0x224
/* 8017C8F8  38 80 FF FF */	li r4, -1
/* 8017C8FC  4B E8 C8 89 */	bl __dt__4cXyzFv
/* 8017C900  38 61 02 30 */	addi r3, r1, 0x230
/* 8017C904  38 80 FF FF */	li r4, -1
/* 8017C908  4B E8 C8 7D */	bl __dt__4cXyzFv
/* 8017C90C  48 00 03 E8 */	b lbl_8017CCF4
lbl_8017C910:
/* 8017C910  3B 80 00 08 */	li r28, 8
/* 8017C914  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017C918  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017C91C  20 00 00 08 */	subfic r0, r0, 8
/* 8017C920  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017C924  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017C928  90 01 05 04 */	stw r0, 0x504(r1)
/* 8017C92C  3C 00 43 30 */	lis r0, 0x4330
/* 8017C930  90 01 05 00 */	stw r0, 0x500(r1)
/* 8017C934  C8 01 05 00 */	lfd f0, 0x500(r1)
/* 8017C938  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C93C  ED E2 00 24 */	fdivs f15, f2, f0
/* 8017C940  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017C944  38 9F 02 B4 */	addi r4, r31, 0x2b4
/* 8017C948  4B F1 1F BD */	bl __apl__4cXyzFRC3Vec
/* 8017C94C  38 61 02 18 */	addi r3, r1, 0x218
/* 8017C950  38 9F 04 24 */	addi r4, r31, 0x424
/* 8017C954  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017C958  48 0E A1 DD */	bl __mi__4cXyzCFRC3Vec
/* 8017C95C  38 61 02 0C */	addi r3, r1, 0x20c
/* 8017C960  38 81 02 18 */	addi r4, r1, 0x218
/* 8017C964  FC 20 78 90 */	fmr f1, f15
/* 8017C968  48 0E A2 1D */	bl __ml__4cXyzCFf
/* 8017C96C  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017C970  38 81 02 0C */	addi r4, r1, 0x20c
/* 8017C974  4B F1 1F 91 */	bl __apl__4cXyzFRC3Vec
/* 8017C978  38 61 02 0C */	addi r3, r1, 0x20c
/* 8017C97C  38 80 FF FF */	li r4, -1
/* 8017C980  4B E8 C8 05 */	bl __dt__4cXyzFv
/* 8017C984  38 61 02 18 */	addi r3, r1, 0x218
/* 8017C988  38 80 FF FF */	li r4, -1
/* 8017C98C  4B E8 C7 F9 */	bl __dt__4cXyzFv
/* 8017C990  38 61 01 50 */	addi r3, r1, 0x150
/* 8017C994  38 81 01 84 */	addi r4, r1, 0x184
/* 8017C998  48 00 63 11 */	bl __as__7cSAngleFRC7cSAngle
/* 8017C99C  80 1F 04 84 */	lwz r0, 0x484(r31)
/* 8017C9A0  28 00 00 00 */	cmplwi r0, 0
/* 8017C9A4  41 82 00 38 */	beq lbl_8017C9DC
/* 8017C9A8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017C9AC  7F C4 F3 78 */	mr r4, r30
/* 8017C9B0  38 A0 01 00 */	li r5, 0x100
/* 8017C9B4  48 00 62 D9 */	bl Flag__11dCamParam_cFlUs
/* 8017C9B8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017C9BC  41 82 00 20 */	beq lbl_8017C9DC
/* 8017C9C0  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017C9C4  2C 00 00 01 */	cmpwi r0, 1
/* 8017C9C8  41 82 00 14 */	beq lbl_8017C9DC
/* 8017C9CC  38 61 01 50 */	addi r3, r1, 0x150
/* 8017C9D0  80 9F 04 84 */	lwz r4, 0x484(r31)
/* 8017C9D4  A8 84 04 E4 */	lha r4, 0x4e4(r4)
/* 8017C9D8  48 0F 48 7D */	bl __apl__7cSAngleFs
lbl_8017C9DC:
/* 8017C9DC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8017C9E0  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8017C9E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C9E8  EC 0F 00 32 */	fmuls f0, f15, f0
/* 8017C9EC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C9F0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8017C9F4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8017C9F8  38 81 01 50 */	addi r4, r1, 0x150
/* 8017C9FC  3B 5F 00 60 */	addi r26, r31, 0x60
/* 8017CA00  7F 45 D3 78 */	mr r5, r26
/* 8017CA04  48 0F 47 A1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017CA08  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8017CA0C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8017CA10  FC 20 78 90 */	fmr f1, f15
/* 8017CA14  48 0F 48 51 */	bl __ml__7cSAngleCFf
/* 8017CA18  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8017CA1C  7F 44 D3 78 */	mr r4, r26
/* 8017CA20  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 8017CA24  48 0F 47 51 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017CA28  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017CA2C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8017CA30  4B F1 30 29 */	bl V__7cSGlobeFRC7cSAngle
/* 8017CA34  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8017CA38  38 80 FF FF */	li r4, -1
/* 8017CA3C  4B EB 3A D5 */	bl __dt__7cSAngleFv
/* 8017CA40  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8017CA44  38 80 FF FF */	li r4, -1
/* 8017CA48  4B EB 3A C9 */	bl __dt__7cSAngleFv
/* 8017CA4C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8017CA50  38 80 FF FF */	li r4, -1
/* 8017CA54  4B EB 3A BD */	bl __dt__7cSAngleFv
/* 8017CA58  38 61 00 CC */	addi r3, r1, 0xcc
/* 8017CA5C  38 81 01 86 */	addi r4, r1, 0x186
/* 8017CA60  3B 5F 00 62 */	addi r26, r31, 0x62
/* 8017CA64  7F 45 D3 78 */	mr r5, r26
/* 8017CA68  48 0F 47 3D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017CA6C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8017CA70  38 81 00 CC */	addi r4, r1, 0xcc
/* 8017CA74  FC 20 78 90 */	fmr f1, f15
/* 8017CA78  48 0F 47 ED */	bl __ml__7cSAngleCFf
/* 8017CA7C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8017CA80  7F 44 D3 78 */	mr r4, r26
/* 8017CA84  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 8017CA88  48 0F 46 ED */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017CA8C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017CA90  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8017CA94  4B F1 1E 01 */	bl U__7cSGlobeFRC7cSAngle
/* 8017CA98  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8017CA9C  38 80 FF FF */	li r4, -1
/* 8017CAA0  4B EB 3A 71 */	bl __dt__7cSAngleFv
/* 8017CAA4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8017CAA8  38 80 FF FF */	li r4, -1
/* 8017CAAC  4B EB 3A 65 */	bl __dt__7cSAngleFv
/* 8017CAB0  38 61 00 CC */	addi r3, r1, 0xcc
/* 8017CAB4  38 80 FF FF */	li r4, -1
/* 8017CAB8  4B EB 3A 59 */	bl __dt__7cSAngleFv
/* 8017CABC  38 61 02 00 */	addi r3, r1, 0x200
/* 8017CAC0  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017CAC4  48 0F 4F F1 */	bl Xyz__7cSGlobeCFv
/* 8017CAC8  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 8017CACC  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017CAD0  38 A1 02 00 */	addi r5, r1, 0x200
/* 8017CAD4  48 0E A0 11 */	bl __pl__4cXyzCFRC3Vec
/* 8017CAD8  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017CADC  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 8017CAE0  4B F1 AC F9 */	bl __as__4cXyzFRC4cXyz
/* 8017CAE4  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 8017CAE8  38 80 FF FF */	li r4, -1
/* 8017CAEC  4B E8 C6 99 */	bl __dt__4cXyzFv
/* 8017CAF0  38 61 02 00 */	addi r3, r1, 0x200
/* 8017CAF4  38 80 FF FF */	li r4, -1
/* 8017CAF8  4B E8 C6 8D */	bl __dt__4cXyzFv
/* 8017CAFC  48 00 01 F8 */	b lbl_8017CCF4
lbl_8017CB00:
/* 8017CB00  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8017CB04  2C 00 00 01 */	cmpwi r0, 1
/* 8017CB08  38 60 00 14 */	li r3, 0x14
/* 8017CB0C  40 82 00 08 */	bne lbl_8017CB14
/* 8017CB10  38 60 00 08 */	li r3, 8
lbl_8017CB14:
/* 8017CB14  7C 7C 1B 78 */	mr r28, r3
/* 8017CB18  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017CB1C  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017CB20  7C 00 18 50 */	subf r0, r0, r3
/* 8017CB24  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017CB28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017CB2C  90 01 05 04 */	stw r0, 0x504(r1)
/* 8017CB30  3C 00 43 30 */	lis r0, 0x4330
/* 8017CB34  90 01 05 00 */	stw r0, 0x500(r1)
/* 8017CB38  C8 01 05 00 */	lfd f0, 0x500(r1)
/* 8017CB3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017CB40  ED E2 00 24 */	fdivs f15, f2, f0
/* 8017CB44  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 8017CB48  38 9F 04 24 */	addi r4, r31, 0x424
/* 8017CB4C  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017CB50  48 0E 9F E5 */	bl __mi__4cXyzCFRC3Vec
/* 8017CB54  38 61 01 DC */	addi r3, r1, 0x1dc
/* 8017CB58  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 8017CB5C  FC 20 78 90 */	fmr f1, f15
/* 8017CB60  48 0E A0 25 */	bl __ml__4cXyzCFf
/* 8017CB64  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017CB68  38 81 01 DC */	addi r4, r1, 0x1dc
/* 8017CB6C  4B F1 1D 99 */	bl __apl__4cXyzFRC3Vec
/* 8017CB70  38 61 01 DC */	addi r3, r1, 0x1dc
/* 8017CB74  38 80 FF FF */	li r4, -1
/* 8017CB78  4B E8 C6 0D */	bl __dt__4cXyzFv
/* 8017CB7C  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 8017CB80  38 80 FF FF */	li r4, -1
/* 8017CB84  4B E8 C6 01 */	bl __dt__4cXyzFv
/* 8017CB88  38 61 01 50 */	addi r3, r1, 0x150
/* 8017CB8C  38 81 01 84 */	addi r4, r1, 0x184
/* 8017CB90  48 00 61 19 */	bl __as__7cSAngleFRC7cSAngle
/* 8017CB94  80 1F 04 84 */	lwz r0, 0x484(r31)
/* 8017CB98  28 00 00 00 */	cmplwi r0, 0
/* 8017CB9C  41 82 00 38 */	beq lbl_8017CBD4
/* 8017CBA0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017CBA4  7F C4 F3 78 */	mr r4, r30
/* 8017CBA8  38 A0 01 00 */	li r5, 0x100
/* 8017CBAC  48 00 60 E1 */	bl Flag__11dCamParam_cFlUs
/* 8017CBB0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017CBB4  41 82 00 20 */	beq lbl_8017CBD4
/* 8017CBB8  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017CBBC  2C 00 00 01 */	cmpwi r0, 1
/* 8017CBC0  41 82 00 14 */	beq lbl_8017CBD4
/* 8017CBC4  38 61 01 50 */	addi r3, r1, 0x150
/* 8017CBC8  80 9F 04 84 */	lwz r4, 0x484(r31)
/* 8017CBCC  A8 84 04 E4 */	lha r4, 0x4e4(r4)
/* 8017CBD0  48 0F 46 85 */	bl __apl__7cSAngleFs
lbl_8017CBD4:
/* 8017CBD4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8017CBD8  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8017CBDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017CBE0  EC 0F 00 32 */	fmuls f0, f15, f0
/* 8017CBE4  EC 01 00 2A */	fadds f0, f1, f0
/* 8017CBE8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8017CBEC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8017CBF0  38 81 01 50 */	addi r4, r1, 0x150
/* 8017CBF4  3B 5F 00 60 */	addi r26, r31, 0x60
/* 8017CBF8  7F 45 D3 78 */	mr r5, r26
/* 8017CBFC  48 0F 45 A9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017CC00  38 61 00 BC */	addi r3, r1, 0xbc
/* 8017CC04  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8017CC08  FC 20 78 90 */	fmr f1, f15
/* 8017CC0C  48 0F 46 59 */	bl __ml__7cSAngleCFf
/* 8017CC10  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8017CC14  7F 44 D3 78 */	mr r4, r26
/* 8017CC18  38 A1 00 BC */	addi r5, r1, 0xbc
/* 8017CC1C  48 0F 45 59 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017CC20  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017CC24  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8017CC28  4B F1 2E 31 */	bl V__7cSGlobeFRC7cSAngle
/* 8017CC2C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8017CC30  38 80 FF FF */	li r4, -1
/* 8017CC34  4B EB 38 DD */	bl __dt__7cSAngleFv
/* 8017CC38  38 61 00 BC */	addi r3, r1, 0xbc
/* 8017CC3C  38 80 FF FF */	li r4, -1
/* 8017CC40  4B EB 38 D1 */	bl __dt__7cSAngleFv
/* 8017CC44  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8017CC48  38 80 FF FF */	li r4, -1
/* 8017CC4C  4B EB 38 C5 */	bl __dt__7cSAngleFv
/* 8017CC50  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8017CC54  38 81 01 86 */	addi r4, r1, 0x186
/* 8017CC58  3B 5F 00 62 */	addi r26, r31, 0x62
/* 8017CC5C  7F 45 D3 78 */	mr r5, r26
/* 8017CC60  48 0F 45 45 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017CC64  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8017CC68  38 81 00 B4 */	addi r4, r1, 0xb4
/* 8017CC6C  FC 20 78 90 */	fmr f1, f15
/* 8017CC70  48 0F 45 F5 */	bl __ml__7cSAngleCFf
/* 8017CC74  38 61 00 AC */	addi r3, r1, 0xac
/* 8017CC78  7F 44 D3 78 */	mr r4, r26
/* 8017CC7C  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8017CC80  48 0F 44 F5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017CC84  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017CC88  38 81 00 AC */	addi r4, r1, 0xac
/* 8017CC8C  4B F1 1C 09 */	bl U__7cSGlobeFRC7cSAngle
/* 8017CC90  38 61 00 AC */	addi r3, r1, 0xac
/* 8017CC94  38 80 FF FF */	li r4, -1
/* 8017CC98  4B EB 38 79 */	bl __dt__7cSAngleFv
/* 8017CC9C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8017CCA0  38 80 FF FF */	li r4, -1
/* 8017CCA4  4B EB 38 6D */	bl __dt__7cSAngleFv
/* 8017CCA8  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8017CCAC  38 80 FF FF */	li r4, -1
/* 8017CCB0  4B EB 38 61 */	bl __dt__7cSAngleFv
/* 8017CCB4  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8017CCB8  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017CCBC  48 0F 4D F9 */	bl Xyz__7cSGlobeCFv
/* 8017CCC0  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8017CCC4  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017CCC8  38 A1 01 D0 */	addi r5, r1, 0x1d0
/* 8017CCCC  48 0E 9E 19 */	bl __pl__4cXyzCFRC3Vec
/* 8017CCD0  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017CCD4  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 8017CCD8  4B F1 AB 01 */	bl __as__4cXyzFRC4cXyz
/* 8017CCDC  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8017CCE0  38 80 FF FF */	li r4, -1
/* 8017CCE4  4B E8 C4 A1 */	bl __dt__4cXyzFv
/* 8017CCE8  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8017CCEC  38 80 FF FF */	li r4, -1
/* 8017CCF0  4B E8 C4 95 */	bl __dt__4cXyzFv
lbl_8017CCF4:
/* 8017CCF4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8017CCF8  EC 13 08 28 */	fsubs f0, f19, f1
/* 8017CCFC  EC 0F 00 32 */	fmuls f0, f15, f0
/* 8017CD00  EC 01 00 2A */	fadds f0, f1, f0
/* 8017CD04  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8017CD08  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 8017CD0C  38 1C FF FF */	addi r0, r28, -1
/* 8017CD10  7C 03 00 40 */	cmplw r3, r0
/* 8017CD14  40 82 00 0C */	bne lbl_8017CD20
/* 8017CD18  38 00 00 01 */	li r0, 1
/* 8017CD1C  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8017CD20:
/* 8017CD20  38 61 01 50 */	addi r3, r1, 0x150
/* 8017CD24  38 80 FF FF */	li r4, -1
/* 8017CD28  4B EB 37 E9 */	bl __dt__7cSAngleFv
/* 8017CD2C  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 8017CD30  38 80 FF FF */	li r4, -1
/* 8017CD34  4B E8 C4 51 */	bl __dt__4cXyzFv
/* 8017CD38  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 8017CD3C  38 80 FF FF */	li r4, -1
/* 8017CD40  4B E8 C4 45 */	bl __dt__4cXyzFv
/* 8017CD44  38 61 03 EC */	addi r3, r1, 0x3ec
/* 8017CD48  38 80 FF FF */	li r4, -1
/* 8017CD4C  4B E8 C4 39 */	bl __dt__4cXyzFv
/* 8017CD50  38 61 04 90 */	addi r3, r1, 0x490
/* 8017CD54  38 80 FF FF */	li r4, -1
/* 8017CD58  4B EF B0 A9 */	bl __dt__14dBgS_CamLinChkFv
/* 8017CD5C  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 8017CD60  38 80 FF FF */	li r4, -1
/* 8017CD64  4B E8 C4 21 */	bl __dt__4cXyzFv
/* 8017CD68  38 61 01 54 */	addi r3, r1, 0x154
/* 8017CD6C  38 80 FF FF */	li r4, -1
/* 8017CD70  4B EB 37 A1 */	bl __dt__7cSAngleFv
/* 8017CD74  38 61 01 80 */	addi r3, r1, 0x180
/* 8017CD78  38 80 FF FF */	li r4, -1
/* 8017CD7C  4B EF 49 01 */	bl __dt__7cSGlobeFv
/* 8017CD80  38 61 01 6C */	addi r3, r1, 0x16c
/* 8017CD84  38 80 FF FF */	li r4, -1
/* 8017CD88  4B EB 37 89 */	bl __dt__7cSAngleFv
/* 8017CD8C  38 61 01 70 */	addi r3, r1, 0x170
/* 8017CD90  38 80 FF FF */	li r4, -1
/* 8017CD94  4B EB 37 7D */	bl __dt__7cSAngleFv
/* 8017CD98  38 61 01 74 */	addi r3, r1, 0x174
/* 8017CD9C  38 80 FF FF */	li r4, -1
/* 8017CDA0  4B EB 37 71 */	bl __dt__7cSAngleFv
/* 8017CDA4  38 60 00 01 */	li r3, 1
/* 8017CDA8  48 00 0A E4 */	b lbl_8017D88C
lbl_8017CDAC:
/* 8017CDAC  3B 40 00 01 */	li r26, 1
/* 8017CDB0  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017CDB4  2C 00 00 01 */	cmpwi r0, 1
/* 8017CDB8  40 82 00 24 */	bne lbl_8017CDDC
/* 8017CDBC  7F A3 EB 78 */	mr r3, r29
/* 8017CDC0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017CDC4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8017CDC8  7D 89 03 A6 */	mtctr r12
/* 8017CDCC  4E 80 04 21 */	bctrl 
/* 8017CDD0  28 03 00 00 */	cmplwi r3, 0
/* 8017CDD4  40 82 00 08 */	bne lbl_8017CDDC
/* 8017CDD8  3B 40 00 00 */	li r26, 0
lbl_8017CDDC:
/* 8017CDDC  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8017CDE0  38 9F 04 24 */	addi r4, r31, 0x424
/* 8017CDE4  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017CDE8  48 0E 9D 4D */	bl __mi__4cXyzCFRC3Vec
/* 8017CDEC  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8017CDF0  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 8017CDF4  38 A1 03 D4 */	addi r5, r1, 0x3d4
/* 8017CDF8  48 0E 9D D9 */	bl __ml__4cXyzCFRC3Vec
/* 8017CDFC  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017CE00  38 81 01 AC */	addi r4, r1, 0x1ac
/* 8017CE04  4B F1 1B 01 */	bl __apl__4cXyzFRC3Vec
/* 8017CE08  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8017CE0C  38 80 FF FF */	li r4, -1
/* 8017CE10  4B E8 C3 75 */	bl __dt__4cXyzFv
/* 8017CE14  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8017CE18  38 80 FF FF */	li r4, -1
/* 8017CE1C  4B E8 C3 69 */	bl __dt__4cXyzFv
/* 8017CE20  C1 DF 01 D8 */	lfs f14, 0x1d8(r31)
/* 8017CE24  80 7F 03 F8 */	lwz r3, 0x3f8(r31)
/* 8017CE28  2C 03 00 00 */	cmpwi r3, 0
/* 8017CE2C  41 82 00 64 */	beq lbl_8017CE90
/* 8017CE30  80 1F 04 00 */	lwz r0, 0x400(r31)
/* 8017CE34  7C 03 00 50 */	subf r0, r3, r0
/* 8017CE38  2C 00 00 02 */	cmpwi r0, 2
/* 8017CE3C  40 81 00 54 */	ble lbl_8017CE90
/* 8017CE40  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017CE44  2C 00 00 00 */	cmpwi r0, 0
/* 8017CE48  40 82 00 48 */	bne lbl_8017CE90
/* 8017CE4C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 8017CE50  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017CE54  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017CE58  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8017CE5C  90 01 05 04 */	stw r0, 0x504(r1)
/* 8017CE60  3C 00 43 30 */	lis r0, 0x4330
/* 8017CE64  90 01 05 00 */	stw r0, 0x500(r1)
/* 8017CE68  C8 01 05 00 */	lfd f0, 0x500(r1)
/* 8017CE6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017CE70  EC 42 00 24 */	fdivs f2, f2, f0
/* 8017CE74  C0 22 9E F8 */	lfs f1, lit_15486(r2)
/* 8017CE78  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8017CE7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017CE80  EC 00 18 28 */	fsubs f0, f0, f3
/* 8017CE84  EC 02 00 32 */	fmuls f0, f2, f0
/* 8017CE88  ED E3 00 2A */	fadds f15, f3, f0
/* 8017CE8C  48 00 00 1C */	b lbl_8017CEA8
lbl_8017CE90:
/* 8017CE90  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8017CE94  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 8017CE98  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 8017CE9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017CEA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017CEA4  ED E2 00 2A */	fadds f15, f2, f0
lbl_8017CEA8:
/* 8017CEA8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8017CEAC  41 82 00 20 */	beq lbl_8017CECC
/* 8017CEB0  EE 15 04 72 */	fmuls f16, f21, f17
/* 8017CEB4  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017CEB8  EC 00 88 28 */	fsubs f0, f0, f17
/* 8017CEBC  EC 15 00 32 */	fmuls f0, f21, f0
/* 8017CEC0  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8017CEC4  EE 10 00 2A */	fadds f16, f16, f0
/* 8017CEC8  48 00 01 10 */	b lbl_8017CFD8
lbl_8017CECC:
/* 8017CECC  88 1F 04 7B */	lbz r0, 0x47b(r31)
/* 8017CED0  28 00 00 00 */	cmplwi r0, 0
/* 8017CED4  41 82 00 74 */	beq lbl_8017CF48
/* 8017CED8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8017CEDC  7F E4 FB 78 */	mr r4, r31
/* 8017CEE0  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017CEE4  4B F1 A8 55 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017CEE8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8017CEEC  48 0F 41 FD */	bl Inv__7cSAngleCFv
/* 8017CEF0  7C 64 1B 78 */	mr r4, r3
/* 8017CEF4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8017CEF8  38 BF 00 62 */	addi r5, r31, 0x62
/* 8017CEFC  48 0F 44 25 */	bl __mi__FsRC7cSAngle
/* 8017CF00  38 61 01 4C */	addi r3, r1, 0x14c
/* 8017CF04  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8017CF08  48 0F 40 61 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017CF0C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8017CF10  38 80 FF FF */	li r4, -1
/* 8017CF14  4B EB 35 FD */	bl __dt__7cSAngleFv
/* 8017CF18  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8017CF1C  38 80 FF FF */	li r4, -1
/* 8017CF20  4B EB 35 F1 */	bl __dt__7cSAngleFv
/* 8017CF24  38 61 01 4C */	addi r3, r1, 0x14c
/* 8017CF28  48 0F 41 D1 */	bl Sin__7cSAngleCFv
/* 8017CF2C  48 00 5B 11 */	bl fabsf__3stdFf
/* 8017CF30  C8 01 05 20 */	lfd f0, 0x520(r1)
/* 8017CF34  EE 00 00 72 */	fmuls f16, f0, f1
/* 8017CF38  38 61 01 4C */	addi r3, r1, 0x14c
/* 8017CF3C  38 80 FF FF */	li r4, -1
/* 8017CF40  4B EB 35 D1 */	bl __dt__7cSAngleFv
/* 8017CF44  48 00 00 94 */	b lbl_8017CFD8
lbl_8017CF48:
/* 8017CF48  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017CF4C  7F C4 F3 78 */	mr r4, r30
/* 8017CF50  38 A0 10 00 */	li r5, 0x1000
/* 8017CF54  48 00 5D 39 */	bl Flag__11dCamParam_cFlUs
/* 8017CF58  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017CF5C  41 82 00 0C */	beq lbl_8017CF68
/* 8017CF60  FE 00 A8 90 */	fmr f16, f21
/* 8017CF64  48 00 00 74 */	b lbl_8017CFD8
lbl_8017CF68:
/* 8017CF68  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8017CF6C  7F E4 FB 78 */	mr r4, r31
/* 8017CF70  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017CF74  4B F1 A7 C5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017CF78  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8017CF7C  48 0F 41 6D */	bl Inv__7cSAngleCFv
/* 8017CF80  7C 64 1B 78 */	mr r4, r3
/* 8017CF84  38 61 00 9C */	addi r3, r1, 0x9c
/* 8017CF88  38 BF 00 62 */	addi r5, r31, 0x62
/* 8017CF8C  48 0F 43 95 */	bl __mi__FsRC7cSAngle
/* 8017CF90  38 61 01 48 */	addi r3, r1, 0x148
/* 8017CF94  38 81 00 9C */	addi r4, r1, 0x9c
/* 8017CF98  48 0F 3F D1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017CF9C  38 61 00 9C */	addi r3, r1, 0x9c
/* 8017CFA0  38 80 FF FF */	li r4, -1
/* 8017CFA4  4B EB 35 6D */	bl __dt__7cSAngleFv
/* 8017CFA8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8017CFAC  38 80 FF FF */	li r4, -1
/* 8017CFB0  4B EB 35 61 */	bl __dt__7cSAngleFv
/* 8017CFB4  38 61 01 48 */	addi r3, r1, 0x148
/* 8017CFB8  48 0F 41 41 */	bl Sin__7cSAngleCFv
/* 8017CFBC  48 00 5A 81 */	bl fabsf__3stdFf
/* 8017CFC0  EC 3D 00 72 */	fmuls f1, f29, f1
/* 8017CFC4  C8 01 05 20 */	lfd f0, 0x520(r1)
/* 8017CFC8  EE 00 00 72 */	fmuls f16, f0, f1
/* 8017CFCC  38 61 01 48 */	addi r3, r1, 0x148
/* 8017CFD0  38 80 FF FF */	li r4, -1
/* 8017CFD4  4B EB 35 3D */	bl __dt__7cSAngleFv
lbl_8017CFD8:
/* 8017CFD8  88 1F 02 24 */	lbz r0, 0x224(r31)
/* 8017CFDC  28 00 00 00 */	cmplwi r0, 0
/* 8017CFE0  41 82 00 0C */	beq lbl_8017CFEC
/* 8017CFE4  38 00 00 00 */	li r0, 0
/* 8017CFE8  98 1F 04 78 */	stb r0, 0x478(r31)
lbl_8017CFEC:
/* 8017CFEC  3B 80 00 00 */	li r28, 0
/* 8017CFF0  C0 1F 04 68 */	lfs f0, 0x468(r31)
/* 8017CFF4  EE 10 00 32 */	fmuls f16, f16, f0
/* 8017CFF8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017CFFC  7F C4 F3 78 */	mr r4, r30
/* 8017D000  38 A0 00 40 */	li r5, 0x40
/* 8017D004  48 00 5C 89 */	bl Flag__11dCamParam_cFlUs
/* 8017D008  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017D00C  40 82 01 0C */	bne lbl_8017D118
/* 8017D010  FC 20 70 90 */	fmr f1, f14
/* 8017D014  48 00 5A 29 */	bl fabsf__3stdFf
/* 8017D018  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8017D01C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017D020  41 81 00 10 */	bgt lbl_8017D030
/* 8017D024  88 1F 04 78 */	lbz r0, 0x478(r31)
/* 8017D028  28 00 00 00 */	cmplwi r0, 0
/* 8017D02C  41 82 00 EC */	beq lbl_8017D118
lbl_8017D030:
/* 8017D030  FC 20 70 90 */	fmr f1, f14
/* 8017D034  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 8017D038  4B F0 B1 05 */	bl rationalBezierRatio__8dCamMathFff
/* 8017D03C  C0 02 9D B8 */	lfs f0, lit_10569(r2)
/* 8017D040  EC 20 00 72 */	fmuls f1, f0, f1
/* 8017D044  38 61 00 98 */	addi r3, r1, 0x98
/* 8017D048  48 0F 3F 81 */	bl __ct__7cSAngleFf
/* 8017D04C  38 61 00 94 */	addi r3, r1, 0x94
/* 8017D050  3B 7F 00 62 */	addi r27, r31, 0x62
/* 8017D054  7F 64 DB 78 */	mr r4, r27
/* 8017D058  38 A1 00 98 */	addi r5, r1, 0x98
/* 8017D05C  48 0F 41 19 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D060  38 61 01 3C */	addi r3, r1, 0x13c
/* 8017D064  38 81 00 94 */	addi r4, r1, 0x94
/* 8017D068  48 0F 3F 01 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017D06C  38 61 00 94 */	addi r3, r1, 0x94
/* 8017D070  38 80 FF FF */	li r4, -1
/* 8017D074  4B EB 34 9D */	bl __dt__7cSAngleFv
/* 8017D078  38 61 00 98 */	addi r3, r1, 0x98
/* 8017D07C  38 80 FF FF */	li r4, -1
/* 8017D080  4B EB 34 91 */	bl __dt__7cSAngleFv
/* 8017D084  FC 20 70 90 */	fmr f1, f14
/* 8017D088  48 00 59 B5 */	bl fabsf__3stdFf
/* 8017D08C  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8017D090  ED C1 00 28 */	fsubs f14, f1, f0
/* 8017D094  38 61 00 90 */	addi r3, r1, 0x90
/* 8017D098  38 81 01 3C */	addi r4, r1, 0x13c
/* 8017D09C  7F 65 DB 78 */	mr r5, r27
/* 8017D0A0  48 0F 41 05 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D0A4  38 61 00 8C */	addi r3, r1, 0x8c
/* 8017D0A8  38 81 00 90 */	addi r4, r1, 0x90
/* 8017D0AC  FC 20 70 90 */	fmr f1, f14
/* 8017D0B0  48 0F 41 B5 */	bl __ml__7cSAngleCFf
/* 8017D0B4  38 61 00 88 */	addi r3, r1, 0x88
/* 8017D0B8  7F 64 DB 78 */	mr r4, r27
/* 8017D0BC  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8017D0C0  48 0F 40 B5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D0C4  38 61 01 44 */	addi r3, r1, 0x144
/* 8017D0C8  38 81 00 88 */	addi r4, r1, 0x88
/* 8017D0CC  48 0F 3F 2D */	bl Val__7cSAngleFRC7cSAngle
/* 8017D0D0  38 61 00 88 */	addi r3, r1, 0x88
/* 8017D0D4  38 80 FF FF */	li r4, -1
/* 8017D0D8  4B EB 34 39 */	bl __dt__7cSAngleFv
/* 8017D0DC  38 61 00 8C */	addi r3, r1, 0x8c
/* 8017D0E0  38 80 FF FF */	li r4, -1
/* 8017D0E4  4B EB 34 2D */	bl __dt__7cSAngleFv
/* 8017D0E8  38 61 00 90 */	addi r3, r1, 0x90
/* 8017D0EC  38 80 FF FF */	li r4, -1
/* 8017D0F0  4B EB 34 21 */	bl __dt__7cSAngleFv
/* 8017D0F4  38 00 00 01 */	li r0, 1
/* 8017D0F8  98 1F 04 78 */	stb r0, 0x478(r31)
/* 8017D0FC  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017D100  D0 1F 04 68 */	stfs f0, 0x468(r31)
/* 8017D104  3B 80 00 01 */	li r28, 1
/* 8017D108  38 61 01 3C */	addi r3, r1, 0x13c
/* 8017D10C  38 80 FF FF */	li r4, -1
/* 8017D110  4B EB 34 01 */	bl __dt__7cSAngleFv
/* 8017D114  48 00 01 D4 */	b lbl_8017D2E8
lbl_8017D118:
/* 8017D118  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017D11C  7F C4 F3 78 */	mr r4, r30
/* 8017D120  38 A0 10 00 */	li r5, 0x1000
/* 8017D124  48 00 5B 69 */	bl Flag__11dCamParam_cFlUs
/* 8017D128  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017D12C  41 82 00 C8 */	beq lbl_8017D1F4
/* 8017D130  38 61 00 84 */	addi r3, r1, 0x84
/* 8017D134  7F E4 FB 78 */	mr r4, r31
/* 8017D138  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017D13C  4B F1 A5 FD */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017D140  38 61 00 84 */	addi r3, r1, 0x84
/* 8017D144  48 0F 3F A5 */	bl Inv__7cSAngleCFv
/* 8017D148  7C 60 1B 78 */	mr r0, r3
/* 8017D14C  38 61 00 80 */	addi r3, r1, 0x80
/* 8017D150  38 81 01 6C */	addi r4, r1, 0x16c
/* 8017D154  7C 05 07 34 */	extsh r5, r0
/* 8017D158  48 0F 40 A5 */	bl __pl__7cSAngleCFs
/* 8017D15C  38 61 01 38 */	addi r3, r1, 0x138
/* 8017D160  38 81 00 80 */	addi r4, r1, 0x80
/* 8017D164  48 0F 3E 05 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017D168  38 61 00 80 */	addi r3, r1, 0x80
/* 8017D16C  38 80 FF FF */	li r4, -1
/* 8017D170  4B EB 33 A1 */	bl __dt__7cSAngleFv
/* 8017D174  38 61 00 84 */	addi r3, r1, 0x84
/* 8017D178  38 80 FF FF */	li r4, -1
/* 8017D17C  4B EB 33 95 */	bl __dt__7cSAngleFv
/* 8017D180  38 61 00 7C */	addi r3, r1, 0x7c
/* 8017D184  38 81 01 38 */	addi r4, r1, 0x138
/* 8017D188  3B 7F 00 62 */	addi r27, r31, 0x62
/* 8017D18C  7F 65 DB 78 */	mr r5, r27
/* 8017D190  48 0F 40 15 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D194  38 61 00 78 */	addi r3, r1, 0x78
/* 8017D198  38 81 00 7C */	addi r4, r1, 0x7c
/* 8017D19C  FC 20 80 90 */	fmr f1, f16
/* 8017D1A0  48 0F 40 C5 */	bl __ml__7cSAngleCFf
/* 8017D1A4  38 61 00 74 */	addi r3, r1, 0x74
/* 8017D1A8  7F 64 DB 78 */	mr r4, r27
/* 8017D1AC  38 A1 00 78 */	addi r5, r1, 0x78
/* 8017D1B0  48 0F 3F C5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D1B4  38 61 01 44 */	addi r3, r1, 0x144
/* 8017D1B8  38 81 00 74 */	addi r4, r1, 0x74
/* 8017D1BC  48 0F 3E 3D */	bl Val__7cSAngleFRC7cSAngle
/* 8017D1C0  38 61 00 74 */	addi r3, r1, 0x74
/* 8017D1C4  38 80 FF FF */	li r4, -1
/* 8017D1C8  4B EB 33 49 */	bl __dt__7cSAngleFv
/* 8017D1CC  38 61 00 78 */	addi r3, r1, 0x78
/* 8017D1D0  38 80 FF FF */	li r4, -1
/* 8017D1D4  4B EB 33 3D */	bl __dt__7cSAngleFv
/* 8017D1D8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8017D1DC  38 80 FF FF */	li r4, -1
/* 8017D1E0  4B EB 33 31 */	bl __dt__7cSAngleFv
/* 8017D1E4  38 61 01 38 */	addi r3, r1, 0x138
/* 8017D1E8  38 80 FF FF */	li r4, -1
/* 8017D1EC  4B EB 33 25 */	bl __dt__7cSAngleFv
/* 8017D1F0  48 00 00 F8 */	b lbl_8017D2E8
lbl_8017D1F4:
/* 8017D1F4  80 7F 04 80 */	lwz r3, 0x480(r31)
/* 8017D1F8  28 03 00 00 */	cmplwi r3, 0
/* 8017D1FC  41 82 00 88 */	beq lbl_8017D284
/* 8017D200  48 00 5B 1D */	bl checkTurnStandCamera__9daHorse_cCFv
/* 8017D204  28 03 00 00 */	cmplwi r3, 0
/* 8017D208  41 82 00 14 */	beq lbl_8017D21C
/* 8017D20C  38 61 01 44 */	addi r3, r1, 0x144
/* 8017D210  38 9F 00 62 */	addi r4, r31, 0x62
/* 8017D214  48 0F 3D E5 */	bl Val__7cSAngleFRC7cSAngle
/* 8017D218  48 00 00 D0 */	b lbl_8017D2E8
lbl_8017D21C:
/* 8017D21C  38 61 00 70 */	addi r3, r1, 0x70
/* 8017D220  38 81 01 86 */	addi r4, r1, 0x186
/* 8017D224  3B 7F 00 62 */	addi r27, r31, 0x62
/* 8017D228  7F 65 DB 78 */	mr r5, r27
/* 8017D22C  48 0F 3F 79 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D230  38 61 00 6C */	addi r3, r1, 0x6c
/* 8017D234  38 81 00 70 */	addi r4, r1, 0x70
/* 8017D238  FC 20 80 90 */	fmr f1, f16
/* 8017D23C  48 0F 40 29 */	bl __ml__7cSAngleCFf
/* 8017D240  38 61 00 68 */	addi r3, r1, 0x68
/* 8017D244  7F 64 DB 78 */	mr r4, r27
/* 8017D248  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8017D24C  48 0F 3F 29 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D250  38 61 01 44 */	addi r3, r1, 0x144
/* 8017D254  38 81 00 68 */	addi r4, r1, 0x68
/* 8017D258  48 0F 3D A1 */	bl Val__7cSAngleFRC7cSAngle
/* 8017D25C  38 61 00 68 */	addi r3, r1, 0x68
/* 8017D260  38 80 FF FF */	li r4, -1
/* 8017D264  4B EB 32 AD */	bl __dt__7cSAngleFv
/* 8017D268  38 61 00 6C */	addi r3, r1, 0x6c
/* 8017D26C  38 80 FF FF */	li r4, -1
/* 8017D270  4B EB 32 A1 */	bl __dt__7cSAngleFv
/* 8017D274  38 61 00 70 */	addi r3, r1, 0x70
/* 8017D278  38 80 FF FF */	li r4, -1
/* 8017D27C  4B EB 32 95 */	bl __dt__7cSAngleFv
/* 8017D280  48 00 00 68 */	b lbl_8017D2E8
lbl_8017D284:
/* 8017D284  38 61 00 64 */	addi r3, r1, 0x64
/* 8017D288  38 81 01 86 */	addi r4, r1, 0x186
/* 8017D28C  3B 7F 00 62 */	addi r27, r31, 0x62
/* 8017D290  7F 65 DB 78 */	mr r5, r27
/* 8017D294  48 0F 3F 11 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D298  38 61 00 60 */	addi r3, r1, 0x60
/* 8017D29C  38 81 00 64 */	addi r4, r1, 0x64
/* 8017D2A0  FC 20 80 90 */	fmr f1, f16
/* 8017D2A4  48 0F 3F C1 */	bl __ml__7cSAngleCFf
/* 8017D2A8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8017D2AC  7F 64 DB 78 */	mr r4, r27
/* 8017D2B0  38 A1 00 60 */	addi r5, r1, 0x60
/* 8017D2B4  48 0F 3E C1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D2B8  38 61 01 44 */	addi r3, r1, 0x144
/* 8017D2BC  38 81 00 5C */	addi r4, r1, 0x5c
/* 8017D2C0  48 0F 3D 39 */	bl Val__7cSAngleFRC7cSAngle
/* 8017D2C4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8017D2C8  38 80 FF FF */	li r4, -1
/* 8017D2CC  4B EB 32 45 */	bl __dt__7cSAngleFv
/* 8017D2D0  38 61 00 60 */	addi r3, r1, 0x60
/* 8017D2D4  38 80 FF FF */	li r4, -1
/* 8017D2D8  4B EB 32 39 */	bl __dt__7cSAngleFv
/* 8017D2DC  38 61 00 64 */	addi r3, r1, 0x64
/* 8017D2E0  38 80 FF FF */	li r4, -1
/* 8017D2E4  4B EB 32 2D */	bl __dt__7cSAngleFv
lbl_8017D2E8:
/* 8017D2E8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8017D2EC  40 82 00 20 */	bne lbl_8017D30C
/* 8017D2F0  C0 5F 04 68 */	lfs f2, 0x468(r31)
/* 8017D2F4  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8017D2F8  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017D2FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017D300  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017D304  EC 02 00 2A */	fadds f0, f2, f0
/* 8017D308  D0 1F 04 68 */	stfs f0, 0x468(r31)
lbl_8017D30C:
/* 8017D30C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8017D310  38 9F 00 70 */	addi r4, r31, 0x70
/* 8017D314  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017D318  48 0E 98 1D */	bl __mi__4cXyzCFRC3Vec
/* 8017D31C  38 61 01 78 */	addi r3, r1, 0x178
/* 8017D320  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 8017D324  48 0F 45 5D */	bl __ct__7cSGlobeFRC4cXyz
/* 8017D328  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8017D32C  38 80 FF FF */	li r4, -1
/* 8017D330  4B E8 BE 55 */	bl __dt__4cXyzFv
/* 8017D334  C1 C2 9C EC */	lfs f14, lit_6766(r2)
/* 8017D338  80 1F 04 84 */	lwz r0, 0x484(r31)
/* 8017D33C  28 00 00 00 */	cmplwi r0, 0
/* 8017D340  41 82 00 98 */	beq lbl_8017D3D8
/* 8017D344  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8017D348  7F C4 F3 78 */	mr r4, r30
/* 8017D34C  38 A0 01 00 */	li r5, 0x100
/* 8017D350  48 00 59 3D */	bl Flag__11dCamParam_cFlUs
/* 8017D354  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017D358  41 82 00 80 */	beq lbl_8017D3D8
/* 8017D35C  7F A3 EB 78 */	mr r3, r29
/* 8017D360  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017D364  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8017D368  7D 89 03 A6 */	mtctr r12
/* 8017D36C  4E 80 04 21 */	bctrl 
/* 8017D370  28 03 00 00 */	cmplwi r3, 0
/* 8017D374  41 82 00 34 */	beq lbl_8017D3A8
/* 8017D378  38 61 00 58 */	addi r3, r1, 0x58
/* 8017D37C  38 81 01 84 */	addi r4, r1, 0x184
/* 8017D380  80 BF 04 84 */	lwz r5, 0x484(r31)
/* 8017D384  A8 A5 04 E4 */	lha r5, 0x4e4(r5)
/* 8017D388  48 0F 3E 75 */	bl __pl__7cSAngleCFs
/* 8017D38C  38 61 01 78 */	addi r3, r1, 0x178
/* 8017D390  38 81 00 58 */	addi r4, r1, 0x58
/* 8017D394  4B F1 26 C5 */	bl V__7cSGlobeFRC7cSAngle
/* 8017D398  38 61 00 58 */	addi r3, r1, 0x58
/* 8017D39C  38 80 FF FF */	li r4, -1
/* 8017D3A0  4B EB 31 71 */	bl __dt__7cSAngleFv
/* 8017D3A4  48 00 00 2C */	b lbl_8017D3D0
lbl_8017D3A8:
/* 8017D3A8  38 61 00 54 */	addi r3, r1, 0x54
/* 8017D3AC  80 9F 04 84 */	lwz r4, 0x484(r31)
/* 8017D3B0  A8 84 04 E4 */	lha r4, 0x4e4(r4)
/* 8017D3B4  48 0F 3B E5 */	bl __ct__7cSAngleFs
/* 8017D3B8  38 61 01 78 */	addi r3, r1, 0x178
/* 8017D3BC  38 81 00 54 */	addi r4, r1, 0x54
/* 8017D3C0  4B F1 26 99 */	bl V__7cSGlobeFRC7cSAngle
/* 8017D3C4  38 61 00 54 */	addi r3, r1, 0x54
/* 8017D3C8  38 80 FF FF */	li r4, -1
/* 8017D3CC  4B EB 31 45 */	bl __dt__7cSAngleFv
lbl_8017D3D0:
/* 8017D3D0  C1 C2 9D D8 */	lfs f14, lit_10577(r2)
/* 8017D3D4  48 00 00 C4 */	b lbl_8017D498
lbl_8017D3D8:
/* 8017D3D8  7F A3 EB 78 */	mr r3, r29
/* 8017D3DC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8017D3E0  81 8C 02 54 */	lwz r12, 0x254(r12)
/* 8017D3E4  7D 89 03 A6 */	mtctr r12
/* 8017D3E8  4E 80 04 21 */	bctrl 
/* 8017D3EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017D3F0  41 82 00 A8 */	beq lbl_8017D498
/* 8017D3F4  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017D3F8  2C 00 00 01 */	cmpwi r0, 1
/* 8017D3FC  41 82 00 9C */	beq lbl_8017D498
/* 8017D400  38 61 00 50 */	addi r3, r1, 0x50
/* 8017D404  38 81 01 86 */	addi r4, r1, 0x186
/* 8017D408  38 A1 01 44 */	addi r5, r1, 0x144
/* 8017D40C  48 0F 3D 99 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D410  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017D414  38 81 00 50 */	addi r4, r1, 0x50
/* 8017D418  48 0F 3B 51 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017D41C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017D420  48 0F 3D 01 */	bl Cos__7cSAngleCFv
/* 8017D424  FD C0 08 90 */	fmr f14, f1
/* 8017D428  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017D42C  38 80 FF FF */	li r4, -1
/* 8017D430  4B EB 30 E1 */	bl __dt__7cSAngleFv
/* 8017D434  38 61 00 50 */	addi r3, r1, 0x50
/* 8017D438  38 80 FF FF */	li r4, -1
/* 8017D43C  4B EB 30 D5 */	bl __dt__7cSAngleFv
/* 8017D440  38 61 01 40 */	addi r3, r1, 0x140
/* 8017D444  80 9F 04 84 */	lwz r4, 0x484(r31)
/* 8017D448  A8 84 04 E4 */	lha r4, 0x4e4(r4)
/* 8017D44C  48 0F 3B B9 */	bl Val__7cSAngleFs
/* 8017D450  38 61 00 48 */	addi r3, r1, 0x48
/* 8017D454  38 81 01 40 */	addi r4, r1, 0x140
/* 8017D458  FC 20 70 90 */	fmr f1, f14
/* 8017D45C  48 0F 3E 09 */	bl __ml__7cSAngleCFf
/* 8017D460  38 61 00 44 */	addi r3, r1, 0x44
/* 8017D464  38 81 01 84 */	addi r4, r1, 0x184
/* 8017D468  38 A1 00 48 */	addi r5, r1, 0x48
/* 8017D46C  48 0F 3D 09 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D470  38 61 01 80 */	addi r3, r1, 0x180
/* 8017D474  38 81 00 44 */	addi r4, r1, 0x44
/* 8017D478  4B F1 25 E1 */	bl V__7cSGlobeFRC7cSAngle
/* 8017D47C  38 61 00 44 */	addi r3, r1, 0x44
/* 8017D480  38 80 FF FF */	li r4, -1
/* 8017D484  4B EB 30 8D */	bl __dt__7cSAngleFv
/* 8017D488  38 61 00 48 */	addi r3, r1, 0x48
/* 8017D48C  38 80 FF FF */	li r4, -1
/* 8017D490  4B EB 30 81 */	bl __dt__7cSAngleFv
/* 8017D494  C1 C2 9C A0 */	lfs f14, lit_5656(r2)
lbl_8017D498:
/* 8017D498  80 1F 04 80 */	lwz r0, 0x480(r31)
/* 8017D49C  28 00 00 00 */	cmplwi r0, 0
/* 8017D4A0  41 82 00 28 */	beq lbl_8017D4C8
/* 8017D4A4  88 1F 04 79 */	lbz r0, 0x479(r31)
/* 8017D4A8  28 00 00 00 */	cmplwi r0, 0
/* 8017D4AC  41 82 00 1C */	beq lbl_8017D4C8
/* 8017D4B0  C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 8017D4B4  C0 02 9E 9C */	lfs f0, lit_12868(r2)
/* 8017D4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017D4BC  40 80 00 0C */	bge lbl_8017D4C8
/* 8017D4C0  C1 C2 9D 6C */	lfs f14, lit_10550(r2)
/* 8017D4C4  48 00 00 64 */	b lbl_8017D528
lbl_8017D4C8:
/* 8017D4C8  88 1F 04 79 */	lbz r0, 0x479(r31)
/* 8017D4CC  28 00 00 00 */	cmplwi r0, 0
/* 8017D4D0  41 82 00 58 */	beq lbl_8017D528
/* 8017D4D4  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017D4D8  EC 20 70 28 */	fsubs f1, f0, f14
/* 8017D4DC  C0 1F 04 60 */	lfs f0, 0x460(r31)
/* 8017D4E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017D4E4  ED CE 00 2A */	fadds f14, f14, f0
/* 8017D4E8  38 61 00 40 */	addi r3, r1, 0x40
/* 8017D4EC  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 8017D4F0  48 0F 3A D9 */	bl __ct__7cSAngleFf
/* 8017D4F4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017D4F8  38 81 01 7C */	addi r4, r1, 0x17c
/* 8017D4FC  38 A1 00 40 */	addi r5, r1, 0x40
/* 8017D500  48 0F 3C 75 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D504  38 61 01 78 */	addi r3, r1, 0x178
/* 8017D508  38 81 00 3C */	addi r4, r1, 0x3c
/* 8017D50C  4B F1 25 4D */	bl V__7cSGlobeFRC7cSAngle
/* 8017D510  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017D514  38 80 FF FF */	li r4, -1
/* 8017D518  4B EB 2F F9 */	bl __dt__7cSAngleFv
/* 8017D51C  38 61 00 40 */	addi r3, r1, 0x40
/* 8017D520  38 80 FF FF */	li r4, -1
/* 8017D524  4B EB 2F ED */	bl __dt__7cSAngleFv
lbl_8017D528:
/* 8017D528  38 61 00 38 */	addi r3, r1, 0x38
/* 8017D52C  38 81 01 7C */	addi r4, r1, 0x17c
/* 8017D530  3B 61 01 84 */	addi r27, r1, 0x184
/* 8017D534  7F 65 DB 78 */	mr r5, r27
/* 8017D538  48 0F 3C 6D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D53C  38 61 00 34 */	addi r3, r1, 0x34
/* 8017D540  38 81 00 38 */	addi r4, r1, 0x38
/* 8017D544  FC 20 70 90 */	fmr f1, f14
/* 8017D548  48 0F 3D 1D */	bl __ml__7cSAngleCFf
/* 8017D54C  38 61 00 30 */	addi r3, r1, 0x30
/* 8017D550  7F 64 DB 78 */	mr r4, r27
/* 8017D554  38 A1 00 34 */	addi r5, r1, 0x34
/* 8017D558  48 0F 3C 1D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D55C  38 61 01 80 */	addi r3, r1, 0x180
/* 8017D560  38 81 00 30 */	addi r4, r1, 0x30
/* 8017D564  4B F1 24 F5 */	bl V__7cSGlobeFRC7cSAngle
/* 8017D568  38 61 00 30 */	addi r3, r1, 0x30
/* 8017D56C  38 80 FF FF */	li r4, -1
/* 8017D570  4B EB 2F A1 */	bl __dt__7cSAngleFv
/* 8017D574  38 61 00 34 */	addi r3, r1, 0x34
/* 8017D578  38 80 FF FF */	li r4, -1
/* 8017D57C  4B EB 2F 95 */	bl __dt__7cSAngleFv
/* 8017D580  38 61 00 38 */	addi r3, r1, 0x38
/* 8017D584  38 80 FF FF */	li r4, -1
/* 8017D588  4B EB 2F 89 */	bl __dt__7cSAngleFv
/* 8017D58C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017D590  7F 64 DB 78 */	mr r4, r27
/* 8017D594  3B 7F 00 60 */	addi r27, r31, 0x60
/* 8017D598  7F 65 DB 78 */	mr r5, r27
/* 8017D59C  48 0F 3C 09 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D5A0  38 61 00 28 */	addi r3, r1, 0x28
/* 8017D5A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8017D5A8  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 8017D5AC  48 0F 3C B9 */	bl __ml__7cSAngleCFf
/* 8017D5B0  38 61 00 24 */	addi r3, r1, 0x24
/* 8017D5B4  7F 64 DB 78 */	mr r4, r27
/* 8017D5B8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8017D5BC  48 0F 3B B9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017D5C0  38 61 01 34 */	addi r3, r1, 0x134
/* 8017D5C4  38 81 00 24 */	addi r4, r1, 0x24
/* 8017D5C8  48 0F 39 A1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017D5CC  38 61 00 24 */	addi r3, r1, 0x24
/* 8017D5D0  38 80 FF FF */	li r4, -1
/* 8017D5D4  4B EB 2F 3D */	bl __dt__7cSAngleFv
/* 8017D5D8  38 61 00 28 */	addi r3, r1, 0x28
/* 8017D5DC  38 80 FF FF */	li r4, -1
/* 8017D5E0  4B EB 2F 31 */	bl __dt__7cSAngleFv
/* 8017D5E4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017D5E8  38 80 FF FF */	li r4, -1
/* 8017D5EC  4B EB 2F 25 */	bl __dt__7cSAngleFv
/* 8017D5F0  A8 61 01 34 */	lha r3, 0x134(r1)
/* 8017D5F4  A8 0D 8A C8 */	lha r0, struct_80451048+0x0(r13)
/* 8017D5F8  7C 03 00 00 */	cmpw r3, r0
/* 8017D5FC  40 80 00 14 */	bge lbl_8017D610
/* 8017D600  38 61 01 34 */	addi r3, r1, 0x134
/* 8017D604  38 8D 8A C8 */	la r4, struct_80451048+0x0(r13) /* 80451048-_SDA_BASE_ */
/* 8017D608  48 0F 39 F1 */	bl Val__7cSAngleFRC7cSAngle
/* 8017D60C  48 00 00 1C */	b lbl_8017D628
lbl_8017D610:
/* 8017D610  A8 0D 8A CC */	lha r0, LatMax(r13)
/* 8017D614  7C 03 00 00 */	cmpw r3, r0
/* 8017D618  40 81 00 10 */	ble lbl_8017D628
/* 8017D61C  38 61 01 34 */	addi r3, r1, 0x134
/* 8017D620  38 8D 8A CC */	la r4, LatMax(r13) /* 8045104C-_SDA_BASE_ */
/* 8017D624  48 0F 39 D5 */	bl Val__7cSAngleFRC7cSAngle
lbl_8017D628:
/* 8017D628  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017D62C  FC 20 78 90 */	fmr f1, f15
/* 8017D630  38 81 01 34 */	addi r4, r1, 0x134
/* 8017D634  38 A1 01 44 */	addi r5, r1, 0x144
/* 8017D638  48 0F 43 D1 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8017D63C  38 61 01 94 */	addi r3, r1, 0x194
/* 8017D640  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017D644  48 0F 44 71 */	bl Xyz__7cSGlobeCFv
/* 8017D648  38 61 01 88 */	addi r3, r1, 0x188
/* 8017D64C  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017D650  38 A1 01 94 */	addi r5, r1, 0x194
/* 8017D654  48 0E 94 91 */	bl __pl__4cXyzCFRC3Vec
/* 8017D658  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017D65C  38 81 01 88 */	addi r4, r1, 0x188
/* 8017D660  4B F1 A1 79 */	bl __as__4cXyzFRC4cXyz
/* 8017D664  38 61 01 88 */	addi r3, r1, 0x188
/* 8017D668  38 80 FF FF */	li r4, -1
/* 8017D66C  4B E8 BB 19 */	bl __dt__4cXyzFv
/* 8017D670  38 61 01 94 */	addi r3, r1, 0x194
/* 8017D674  38 80 FF FF */	li r4, -1
/* 8017D678  4B E8 BB 0D */	bl __dt__4cXyzFv
/* 8017D67C  80 7F 03 F8 */	lwz r3, 0x3f8(r31)
/* 8017D680  2C 03 00 00 */	cmpwi r3, 0
/* 8017D684  41 82 00 64 */	beq lbl_8017D6E8
/* 8017D688  80 1F 04 00 */	lwz r0, 0x400(r31)
/* 8017D68C  7C 03 00 50 */	subf r0, r3, r0
/* 8017D690  2C 00 00 02 */	cmpwi r0, 2
/* 8017D694  40 81 00 54 */	ble lbl_8017D6E8
/* 8017D698  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8017D69C  2C 00 00 00 */	cmpwi r0, 0
/* 8017D6A0  40 82 00 48 */	bne lbl_8017D6E8
/* 8017D6A4  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8017D6A8  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8017D6AC  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017D6B0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8017D6B4  90 01 05 04 */	stw r0, 0x504(r1)
/* 8017D6B8  3C 00 43 30 */	lis r0, 0x4330
/* 8017D6BC  90 01 05 00 */	stw r0, 0x500(r1)
/* 8017D6C0  C8 01 05 00 */	lfd f0, 0x500(r1)
/* 8017D6C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017D6C8  EC 22 00 24 */	fdivs f1, f2, f0
/* 8017D6CC  C0 02 9E FC */	lfs f0, lit_15487(r2)
/* 8017D6D0  EC 13 00 32 */	fmuls f0, f19, f0
/* 8017D6D4  EC 00 18 28 */	fsubs f0, f0, f3
/* 8017D6D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017D6DC  EC 03 00 2A */	fadds f0, f3, f0
/* 8017D6E0  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8017D6E4  48 00 00 1C */	b lbl_8017D700
lbl_8017D6E8:
/* 8017D6E8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8017D6EC  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 8017D6F0  EC 13 10 28 */	fsubs f0, f19, f2
/* 8017D6F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017D6F8  EC 02 00 2A */	fadds f0, f2, f0
/* 8017D6FC  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_8017D700:
/* 8017D700  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8017D704  41 82 00 80 */	beq lbl_8017D784
/* 8017D708  38 61 00 20 */	addi r3, r1, 0x20
/* 8017D70C  38 81 01 74 */	addi r4, r1, 0x174
/* 8017D710  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 8017D714  48 0F 3B 51 */	bl __ml__7cSAngleCFf
/* 8017D718  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017D71C  38 81 00 20 */	addi r4, r1, 0x20
/* 8017D720  38 BF 00 7C */	addi r5, r31, 0x7c
/* 8017D724  48 0F 3A 81 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D728  FC 20 E8 90 */	fmr f1, f29
/* 8017D72C  48 00 53 11 */	bl fabsf__3stdFf
/* 8017D730  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 8017D734  EC 20 00 72 */	fmuls f1, f0, f1
/* 8017D738  38 61 00 18 */	addi r3, r1, 0x18
/* 8017D73C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8017D740  48 0F 3B 25 */	bl __ml__7cSAngleCFf
/* 8017D744  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8017D748  38 81 00 18 */	addi r4, r1, 0x18
/* 8017D74C  48 0F 3A 89 */	bl __apl__7cSAngleFRC7cSAngle
/* 8017D750  38 61 00 18 */	addi r3, r1, 0x18
/* 8017D754  38 80 FF FF */	li r4, -1
/* 8017D758  4B EB 2D B9 */	bl __dt__7cSAngleFv
/* 8017D75C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017D760  38 80 FF FF */	li r4, -1
/* 8017D764  4B EB 2D AD */	bl __dt__7cSAngleFv
/* 8017D768  38 61 00 20 */	addi r3, r1, 0x20
/* 8017D76C  38 80 FF FF */	li r4, -1
/* 8017D770  4B EB 2D A1 */	bl __dt__7cSAngleFv
/* 8017D774  7F E3 FB 78 */	mr r3, r31
/* 8017D778  38 80 04 00 */	li r4, 0x400
/* 8017D77C  4B F1 9F FD */	bl setFlag__9dCamera_cFUl
/* 8017D780  48 00 00 54 */	b lbl_8017D7D4
lbl_8017D784:
/* 8017D784  38 61 00 14 */	addi r3, r1, 0x14
/* 8017D788  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8017D78C  38 BF 00 7C */	addi r5, r31, 0x7c
/* 8017D790  48 0F 3A 15 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017D794  38 61 00 10 */	addi r3, r1, 0x10
/* 8017D798  38 81 00 14 */	addi r4, r1, 0x14
/* 8017D79C  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 8017D7A0  48 0F 3A C5 */	bl __ml__7cSAngleCFf
/* 8017D7A4  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8017D7A8  38 81 00 10 */	addi r4, r1, 0x10
/* 8017D7AC  48 0F 3A 29 */	bl __apl__7cSAngleFRC7cSAngle
/* 8017D7B0  38 61 00 10 */	addi r3, r1, 0x10
/* 8017D7B4  38 80 FF FF */	li r4, -1
/* 8017D7B8  4B EB 2D 59 */	bl __dt__7cSAngleFv
/* 8017D7BC  38 61 00 14 */	addi r3, r1, 0x14
/* 8017D7C0  38 80 FF FF */	li r4, -1
/* 8017D7C4  4B EB 2D 4D */	bl __dt__7cSAngleFv
/* 8017D7C8  7F E3 FB 78 */	mr r3, r31
/* 8017D7CC  38 80 04 00 */	li r4, 0x400
/* 8017D7D0  4B F1 9F A9 */	bl setFlag__9dCamera_cFUl
lbl_8017D7D4:
/* 8017D7D4  38 61 01 34 */	addi r3, r1, 0x134
/* 8017D7D8  38 80 FF FF */	li r4, -1
/* 8017D7DC  4B EB 2D 35 */	bl __dt__7cSAngleFv
/* 8017D7E0  38 61 01 78 */	addi r3, r1, 0x178
/* 8017D7E4  38 80 FF FF */	li r4, -1
/* 8017D7E8  4B EF 3E 95 */	bl __dt__7cSGlobeFv
/* 8017D7EC  38 61 01 40 */	addi r3, r1, 0x140
/* 8017D7F0  38 80 FF FF */	li r4, -1
/* 8017D7F4  4B EB 2D 1D */	bl __dt__7cSAngleFv
/* 8017D7F8  38 61 01 44 */	addi r3, r1, 0x144
/* 8017D7FC  38 80 FF FF */	li r4, -1
/* 8017D800  4B EB 2D 11 */	bl __dt__7cSAngleFv
/* 8017D804  38 61 01 50 */	addi r3, r1, 0x150
/* 8017D808  38 80 FF FF */	li r4, -1
/* 8017D80C  4B EB 2D 05 */	bl __dt__7cSAngleFv
/* 8017D810  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 8017D814  38 80 FF FF */	li r4, -1
/* 8017D818  4B E8 B9 6D */	bl __dt__4cXyzFv
/* 8017D81C  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 8017D820  38 80 FF FF */	li r4, -1
/* 8017D824  4B E8 B9 61 */	bl __dt__4cXyzFv
/* 8017D828  38 61 03 EC */	addi r3, r1, 0x3ec
/* 8017D82C  38 80 FF FF */	li r4, -1
/* 8017D830  4B E8 B9 55 */	bl __dt__4cXyzFv
/* 8017D834  38 61 04 90 */	addi r3, r1, 0x490
/* 8017D838  38 80 FF FF */	li r4, -1
/* 8017D83C  4B EF A5 C5 */	bl __dt__14dBgS_CamLinChkFv
/* 8017D840  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 8017D844  38 80 FF FF */	li r4, -1
/* 8017D848  4B E8 B9 3D */	bl __dt__4cXyzFv
/* 8017D84C  38 61 01 54 */	addi r3, r1, 0x154
/* 8017D850  38 80 FF FF */	li r4, -1
/* 8017D854  4B EB 2C BD */	bl __dt__7cSAngleFv
/* 8017D858  38 61 01 80 */	addi r3, r1, 0x180
/* 8017D85C  38 80 FF FF */	li r4, -1
/* 8017D860  4B EF 3E 1D */	bl __dt__7cSGlobeFv
/* 8017D864  38 61 01 6C */	addi r3, r1, 0x16c
/* 8017D868  38 80 FF FF */	li r4, -1
/* 8017D86C  4B EB 2C A5 */	bl __dt__7cSAngleFv
/* 8017D870  38 61 01 70 */	addi r3, r1, 0x170
/* 8017D874  38 80 FF FF */	li r4, -1
/* 8017D878  4B EB 2C 99 */	bl __dt__7cSAngleFv
/* 8017D87C  38 61 01 74 */	addi r3, r1, 0x174
/* 8017D880  38 80 FF FF */	li r4, -1
/* 8017D884  4B EB 2C 8D */	bl __dt__7cSAngleFv
/* 8017D888  38 60 00 01 */	li r3, 1
lbl_8017D88C:
/* 8017D88C  E3 E1 06 58 */	psq_l f31, 1624(r1), 0, 0 /* qr0 */
/* 8017D890  CB E1 06 50 */	lfd f31, 0x650(r1)
/* 8017D894  E3 C1 06 48 */	psq_l f30, 1608(r1), 0, 0 /* qr0 */
/* 8017D898  CB C1 06 40 */	lfd f30, 0x640(r1)
/* 8017D89C  E3 A1 06 38 */	psq_l f29, 1592(r1), 0, 0 /* qr0 */
/* 8017D8A0  CB A1 06 30 */	lfd f29, 0x630(r1)
/* 8017D8A4  E3 81 06 28 */	psq_l f28, 1576(r1), 0, 0 /* qr0 */
/* 8017D8A8  CB 81 06 20 */	lfd f28, 0x620(r1)
/* 8017D8AC  E3 61 06 18 */	psq_l f27, 1560(r1), 0, 0 /* qr0 */
/* 8017D8B0  CB 61 06 10 */	lfd f27, 0x610(r1)
/* 8017D8B4  E3 41 06 08 */	psq_l f26, 1544(r1), 0, 0 /* qr0 */
/* 8017D8B8  CB 41 06 00 */	lfd f26, 0x600(r1)
/* 8017D8BC  E3 21 05 F8 */	psq_l f25, 1528(r1), 0, 0 /* qr0 */
/* 8017D8C0  CB 21 05 F0 */	lfd f25, 0x5f0(r1)
/* 8017D8C4  E3 01 05 E8 */	psq_l f24, 1512(r1), 0, 0 /* qr0 */
/* 8017D8C8  CB 01 05 E0 */	lfd f24, 0x5e0(r1)
/* 8017D8CC  E2 E1 05 D8 */	psq_l f23, 1496(r1), 0, 0 /* qr0 */
/* 8017D8D0  CA E1 05 D0 */	lfd f23, 0x5d0(r1)
/* 8017D8D4  E2 C1 05 C8 */	psq_l f22, 1480(r1), 0, 0 /* qr0 */
/* 8017D8D8  CA C1 05 C0 */	lfd f22, 0x5c0(r1)
/* 8017D8DC  E2 A1 05 B8 */	psq_l f21, 1464(r1), 0, 0 /* qr0 */
/* 8017D8E0  CA A1 05 B0 */	lfd f21, 0x5b0(r1)
/* 8017D8E4  E2 81 05 A8 */	psq_l f20, 1448(r1), 0, 0 /* qr0 */
/* 8017D8E8  CA 81 05 A0 */	lfd f20, 0x5a0(r1)
/* 8017D8EC  E2 61 05 98 */	psq_l f19, 1432(r1), 0, 0 /* qr0 */
/* 8017D8F0  CA 61 05 90 */	lfd f19, 0x590(r1)
/* 8017D8F4  E2 41 05 88 */	psq_l f18, 1416(r1), 0, 0 /* qr0 */
/* 8017D8F8  CA 41 05 80 */	lfd f18, 0x580(r1)
/* 8017D8FC  E2 21 05 78 */	psq_l f17, 1400(r1), 0, 0 /* qr0 */
/* 8017D900  CA 21 05 70 */	lfd f17, 0x570(r1)
/* 8017D904  E2 01 05 68 */	psq_l f16, 1384(r1), 0, 0 /* qr0 */
/* 8017D908  CA 01 05 60 */	lfd f16, 0x560(r1)
/* 8017D90C  E1 E1 05 58 */	psq_l f15, 1368(r1), 0, 0 /* qr0 */
/* 8017D910  C9 E1 05 50 */	lfd f15, 0x550(r1)
/* 8017D914  E1 C1 05 48 */	psq_l f14, 1352(r1), 0, 0 /* qr0 */
/* 8017D918  C9 C1 05 40 */	lfd f14, 0x540(r1)
/* 8017D91C  39 61 05 40 */	addi r11, r1, 0x540
/* 8017D920  48 1E 48 FD */	bl _restgpr_26
/* 8017D924  80 01 06 64 */	lwz r0, 0x664(r1)
/* 8017D928  7C 08 03 A6 */	mtlr r0
/* 8017D92C  38 21 06 60 */	addi r1, r1, 0x660
/* 8017D930  4E 80 00 20 */	blr 
