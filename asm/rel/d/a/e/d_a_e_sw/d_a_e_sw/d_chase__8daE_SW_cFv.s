lbl_807ADA08:
/* 807ADA08  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807ADA0C  7C 08 02 A6 */	mflr r0
/* 807ADA10  90 01 00 84 */	stw r0, 0x84(r1)
/* 807ADA14  39 61 00 80 */	addi r11, r1, 0x80
/* 807ADA18  4B BB 47 BD */	bl _savegpr_27
/* 807ADA1C  7C 7B 1B 78 */	mr r27, r3
/* 807ADA20  3C 80 80 7B */	lis r4, cNullVec__6Z2Calc@ha /* 0x807AFE7C@ha */
/* 807ADA24  3B C4 FE 7C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x807AFE7C@l */
/* 807ADA28  3C 80 80 7B */	lis r4, lit_3909@ha /* 0x807AFD2C@ha */
/* 807ADA2C  3B E4 FD 2C */	addi r31, r4, lit_3909@l /* 0x807AFD2C@l */
/* 807ADA30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807ADA34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807ADA38  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 807ADA3C  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807ADA40  2C 00 00 01 */	cmpwi r0, 1
/* 807ADA44  41 82 00 50 */	beq lbl_807ADA94
/* 807ADA48  40 80 03 F0 */	bge lbl_807ADE38
/* 807ADA4C  2C 00 00 00 */	cmpwi r0, 0
/* 807ADA50  40 80 00 08 */	bge lbl_807ADA58
/* 807ADA54  48 00 03 E4 */	b lbl_807ADE38
lbl_807ADA58:
/* 807ADA58  38 80 00 0C */	li r4, 0xc
/* 807ADA5C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807ADA60  38 A0 00 02 */	li r5, 2
/* 807ADA64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807ADA68  4B FF 99 F9 */	bl bckSet__8daE_SW_cFifUcf
/* 807ADA6C  38 00 00 01 */	li r0, 1
/* 807ADA70  98 1B 0B 14 */	stb r0, 0xb14(r27)
/* 807ADA74  38 00 00 3C */	li r0, 0x3c
/* 807ADA78  B0 1B 06 EA */	sth r0, 0x6ea(r27)
/* 807ADA7C  38 00 00 F0 */	li r0, 0xf0
/* 807ADA80  B0 1B 06 EE */	sth r0, 0x6ee(r27)
/* 807ADA84  A8 7B 06 80 */	lha r3, 0x680(r27)
/* 807ADA88  38 03 00 01 */	addi r0, r3, 1
/* 807ADA8C  B0 1B 06 80 */	sth r0, 0x680(r27)
/* 807ADA90  48 00 03 A8 */	b lbl_807ADE38
lbl_807ADA94:
/* 807ADA94  4B FF 9E 21 */	bl setSmokeEffect__8daE_SW_cFv
/* 807ADA98  A8 1B 06 EE */	lha r0, 0x6ee(r27)
/* 807ADA9C  2C 00 00 00 */	cmpwi r0, 0
/* 807ADAA0  40 82 00 2C */	bne lbl_807ADACC
/* 807ADAA4  80 7E 02 14 */	lwz r3, 0x214(r30)
/* 807ADAA8  80 1E 02 18 */	lwz r0, 0x218(r30)
/* 807ADAAC  90 61 00 58 */	stw r3, 0x58(r1)
/* 807ADAB0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807ADAB4  80 1E 02 1C */	lwz r0, 0x21c(r30)
/* 807ADAB8  90 01 00 60 */	stw r0, 0x60(r1)
/* 807ADABC  7F 63 DB 78 */	mr r3, r27
/* 807ADAC0  38 81 00 58 */	addi r4, r1, 0x58
/* 807ADAC4  4B FF EF 7D */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ADAC8  48 00 03 70 */	b lbl_807ADE38
lbl_807ADACC:
/* 807ADACC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807ADAD0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807ADAD4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807ADAD8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807ADADC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807ADAE0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807ADAE4  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 807ADAE8  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807ADAEC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807ADAF0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807ADAF4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 807ADAF8  38 61 00 28 */	addi r3, r1, 0x28
/* 807ADAFC  38 81 00 34 */	addi r4, r1, 0x34
/* 807ADB00  4B B9 98 9D */	bl PSVECSquareDistance
/* 807ADB04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807ADB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADB0C  40 81 00 58 */	ble lbl_807ADB64
/* 807ADB10  FC 00 08 34 */	frsqrte f0, f1
/* 807ADB14  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807ADB18  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADB1C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807ADB20  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADB24  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADB28  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADB2C  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADB30  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADB34  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADB38  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADB3C  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADB40  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADB44  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADB48  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADB4C  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADB50  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADB54  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADB58  FC 21 00 32 */	fmul f1, f1, f0
/* 807ADB5C  FC 20 08 18 */	frsp f1, f1
/* 807ADB60  48 00 00 88 */	b lbl_807ADBE8
lbl_807ADB64:
/* 807ADB64  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807ADB68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADB6C  40 80 00 10 */	bge lbl_807ADB7C
/* 807ADB70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807ADB74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807ADB78  48 00 00 70 */	b lbl_807ADBE8
lbl_807ADB7C:
/* 807ADB7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807ADB80  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807ADB84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807ADB88  3C 00 7F 80 */	lis r0, 0x7f80
/* 807ADB8C  7C 03 00 00 */	cmpw r3, r0
/* 807ADB90  41 82 00 14 */	beq lbl_807ADBA4
/* 807ADB94  40 80 00 40 */	bge lbl_807ADBD4
/* 807ADB98  2C 03 00 00 */	cmpwi r3, 0
/* 807ADB9C  41 82 00 20 */	beq lbl_807ADBBC
/* 807ADBA0  48 00 00 34 */	b lbl_807ADBD4
lbl_807ADBA4:
/* 807ADBA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ADBA8  41 82 00 0C */	beq lbl_807ADBB4
/* 807ADBAC  38 00 00 01 */	li r0, 1
/* 807ADBB0  48 00 00 28 */	b lbl_807ADBD8
lbl_807ADBB4:
/* 807ADBB4  38 00 00 02 */	li r0, 2
/* 807ADBB8  48 00 00 20 */	b lbl_807ADBD8
lbl_807ADBBC:
/* 807ADBBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ADBC0  41 82 00 0C */	beq lbl_807ADBCC
/* 807ADBC4  38 00 00 05 */	li r0, 5
/* 807ADBC8  48 00 00 10 */	b lbl_807ADBD8
lbl_807ADBCC:
/* 807ADBCC  38 00 00 03 */	li r0, 3
/* 807ADBD0  48 00 00 08 */	b lbl_807ADBD8
lbl_807ADBD4:
/* 807ADBD4  38 00 00 04 */	li r0, 4
lbl_807ADBD8:
/* 807ADBD8  2C 00 00 01 */	cmpwi r0, 1
/* 807ADBDC  40 82 00 0C */	bne lbl_807ADBE8
/* 807ADBE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807ADBE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807ADBE8:
/* 807ADBE8  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807ADBEC  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807ADBF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807ADBF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADBF8  4C 41 13 82 */	cror 2, 1, 2
/* 807ADBFC  40 82 00 2C */	bne lbl_807ADC28
/* 807ADC00  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 807ADC04  80 1E 02 24 */	lwz r0, 0x224(r30)
/* 807ADC08  90 61 00 4C */	stw r3, 0x4c(r1)
/* 807ADC0C  90 01 00 50 */	stw r0, 0x50(r1)
/* 807ADC10  80 1E 02 28 */	lwz r0, 0x228(r30)
/* 807ADC14  90 01 00 54 */	stw r0, 0x54(r1)
/* 807ADC18  7F 63 DB 78 */	mr r3, r27
/* 807ADC1C  38 81 00 4C */	addi r4, r1, 0x4c
/* 807ADC20  4B FF EE 21 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ADC24  48 00 02 14 */	b lbl_807ADE38
lbl_807ADC28:
/* 807ADC28  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807ADC2C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807ADC30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807ADC34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807ADC38  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807ADC3C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 807ADC40  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 807ADC44  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807ADC48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807ADC4C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807ADC50  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 807ADC54  38 61 00 10 */	addi r3, r1, 0x10
/* 807ADC58  38 81 00 1C */	addi r4, r1, 0x1c
/* 807ADC5C  4B B9 97 41 */	bl PSVECSquareDistance
/* 807ADC60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807ADC64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADC68  40 81 00 58 */	ble lbl_807ADCC0
/* 807ADC6C  FC 00 08 34 */	frsqrte f0, f1
/* 807ADC70  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807ADC74  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADC78  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807ADC7C  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADC80  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADC84  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADC88  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADC8C  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADC90  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADC94  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADC98  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADC9C  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADCA0  FC 44 00 32 */	fmul f2, f4, f0
/* 807ADCA4  FC 00 00 32 */	fmul f0, f0, f0
/* 807ADCA8  FC 01 00 32 */	fmul f0, f1, f0
/* 807ADCAC  FC 03 00 28 */	fsub f0, f3, f0
/* 807ADCB0  FC 02 00 32 */	fmul f0, f2, f0
/* 807ADCB4  FC 21 00 32 */	fmul f1, f1, f0
/* 807ADCB8  FC 20 08 18 */	frsp f1, f1
/* 807ADCBC  48 00 00 88 */	b lbl_807ADD44
lbl_807ADCC0:
/* 807ADCC0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807ADCC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADCC8  40 80 00 10 */	bge lbl_807ADCD8
/* 807ADCCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807ADCD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807ADCD4  48 00 00 70 */	b lbl_807ADD44
lbl_807ADCD8:
/* 807ADCD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 807ADCDC  80 81 00 08 */	lwz r4, 8(r1)
/* 807ADCE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807ADCE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807ADCE8  7C 03 00 00 */	cmpw r3, r0
/* 807ADCEC  41 82 00 14 */	beq lbl_807ADD00
/* 807ADCF0  40 80 00 40 */	bge lbl_807ADD30
/* 807ADCF4  2C 03 00 00 */	cmpwi r3, 0
/* 807ADCF8  41 82 00 20 */	beq lbl_807ADD18
/* 807ADCFC  48 00 00 34 */	b lbl_807ADD30
lbl_807ADD00:
/* 807ADD00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ADD04  41 82 00 0C */	beq lbl_807ADD10
/* 807ADD08  38 00 00 01 */	li r0, 1
/* 807ADD0C  48 00 00 28 */	b lbl_807ADD34
lbl_807ADD10:
/* 807ADD10  38 00 00 02 */	li r0, 2
/* 807ADD14  48 00 00 20 */	b lbl_807ADD34
lbl_807ADD18:
/* 807ADD18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ADD1C  41 82 00 0C */	beq lbl_807ADD28
/* 807ADD20  38 00 00 05 */	li r0, 5
/* 807ADD24  48 00 00 10 */	b lbl_807ADD34
lbl_807ADD28:
/* 807ADD28  38 00 00 03 */	li r0, 3
/* 807ADD2C  48 00 00 08 */	b lbl_807ADD34
lbl_807ADD30:
/* 807ADD30  38 00 00 04 */	li r0, 4
lbl_807ADD34:
/* 807ADD34  2C 00 00 01 */	cmpwi r0, 1
/* 807ADD38  40 82 00 0C */	bne lbl_807ADD44
/* 807ADD3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807ADD40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807ADD44:
/* 807ADD44  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807ADD48  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807ADD4C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807ADD50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ADD54  40 80 00 2C */	bge lbl_807ADD80
/* 807ADD58  80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 807ADD5C  80 1E 02 30 */	lwz r0, 0x230(r30)
/* 807ADD60  90 61 00 40 */	stw r3, 0x40(r1)
/* 807ADD64  90 01 00 44 */	stw r0, 0x44(r1)
/* 807ADD68  80 1E 02 34 */	lwz r0, 0x234(r30)
/* 807ADD6C  90 01 00 48 */	stw r0, 0x48(r1)
/* 807ADD70  7F 63 DB 78 */	mr r3, r27
/* 807ADD74  38 81 00 40 */	addi r4, r1, 0x40
/* 807ADD78  4B FF EC C9 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ADD7C  48 00 00 BC */	b lbl_807ADE38
lbl_807ADD80:
/* 807ADD80  A8 1B 06 EC */	lha r0, 0x6ec(r27)
/* 807ADD84  2C 00 00 00 */	cmpwi r0, 0
/* 807ADD88  40 82 00 68 */	bne lbl_807ADDF0
/* 807ADD8C  80 1B 07 A4 */	lwz r0, 0x7a4(r27)
/* 807ADD90  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807ADD94  41 82 00 54 */	beq lbl_807ADDE8
/* 807ADD98  80 1B 07 08 */	lwz r0, 0x708(r27)
/* 807ADD9C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807ADDA0  41 82 00 0C */	beq lbl_807ADDAC
/* 807ADDA4  AB 9B 07 34 */	lha r28, 0x734(r27)
/* 807ADDA8  48 00 00 14 */	b lbl_807ADDBC
lbl_807ADDAC:
/* 807ADDAC  80 1B 07 48 */	lwz r0, 0x748(r27)
/* 807ADDB0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807ADDB4  41 82 00 08 */	beq lbl_807ADDBC
/* 807ADDB8  AB 9B 07 74 */	lha r28, 0x774(r27)
lbl_807ADDBC:
/* 807ADDBC  38 7C 80 00 */	addi r3, r28, -32768
/* 807ADDC0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 807ADDC4  7C 03 00 50 */	subf r0, r3, r0
/* 807ADDC8  7C 03 07 34 */	extsh r3, r0
/* 807ADDCC  4B BB 73 05 */	bl abs
/* 807ADDD0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807ADDD4  40 80 00 1C */	bge lbl_807ADDF0
/* 807ADDD8  B3 9B 06 9E */	sth r28, 0x69e(r27)
/* 807ADDDC  38 00 00 3C */	li r0, 0x3c
/* 807ADDE0  B0 1B 06 EC */	sth r0, 0x6ec(r27)
/* 807ADDE4  48 00 00 0C */	b lbl_807ADDF0
lbl_807ADDE8:
/* 807ADDE8  A8 1B 06 CC */	lha r0, 0x6cc(r27)
/* 807ADDEC  B0 1B 06 9E */	sth r0, 0x69e(r27)
lbl_807ADDF0:
/* 807ADDF0  38 7B 04 DE */	addi r3, r27, 0x4de
/* 807ADDF4  A8 9B 06 9E */	lha r4, 0x69e(r27)
/* 807ADDF8  38 A0 00 08 */	li r5, 8
/* 807ADDFC  38 C0 04 00 */	li r6, 0x400
/* 807ADE00  4B AC 28 09 */	bl cLib_addCalcAngleS2__FPssss
/* 807ADE04  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807ADE08  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807ADE0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807ADE10  4B AC 29 31 */	bl cLib_chaseF__FPfff
/* 807ADE14  48 00 00 08 */	b lbl_807ADE1C
/* 807ADE18  48 00 00 20 */	b lbl_807ADE38
lbl_807ADE1C:
/* 807ADE1C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 807ADE20  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 807ADE24  A8 1B 06 EA */	lha r0, 0x6ea(r27)
/* 807ADE28  2C 00 00 00 */	cmpwi r0, 0
/* 807ADE2C  41 82 00 0C */	beq lbl_807ADE38
/* 807ADE30  7F 63 DB 78 */	mr r3, r27
/* 807ADE34  4B FF 98 B1 */	bl setBeforeJumpEffect__8daE_SW_cFv
lbl_807ADE38:
/* 807ADE38  39 61 00 80 */	addi r11, r1, 0x80
/* 807ADE3C  4B BB 43 E5 */	bl _restgpr_27
/* 807ADE40  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807ADE44  7C 08 03 A6 */	mtlr r0
/* 807ADE48  38 21 00 80 */	addi r1, r1, 0x80
/* 807ADE4C  4E 80 00 20 */	blr 
