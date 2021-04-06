lbl_807BF914:
/* 807BF914  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807BF918  7C 08 02 A6 */	mflr r0
/* 807BF91C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807BF920  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807BF924  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807BF928  7C 7E 1B 78 */	mr r30, r3
/* 807BF92C  3C 80 80 7C */	lis r4, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BF930  3B E4 1F B8 */	addi r31, r4, lit_3908@l /* 0x807C1FB8@l */
/* 807BF934  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BF938  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BF93C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807BF940  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 807BF944  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807BF948  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 807BF94C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BF950  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 807BF954  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807BF958  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807BF95C  2C 00 00 02 */	cmpwi r0, 2
/* 807BF960  41 82 02 80 */	beq lbl_807BFBE0
/* 807BF964  40 80 00 14 */	bge lbl_807BF978
/* 807BF968  2C 00 00 00 */	cmpwi r0, 0
/* 807BF96C  41 82 00 1C */	beq lbl_807BF988
/* 807BF970  40 80 00 74 */	bge lbl_807BF9E4
/* 807BF974  48 00 03 AC */	b lbl_807BFD20
lbl_807BF978:
/* 807BF978  2C 00 00 04 */	cmpwi r0, 4
/* 807BF97C  41 82 03 10 */	beq lbl_807BFC8C
/* 807BF980  40 80 03 A0 */	bge lbl_807BFD20
/* 807BF984  48 00 02 AC */	b lbl_807BFC30
lbl_807BF988:
/* 807BF988  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024F@ha */
/* 807BF98C  38 03 02 4F */	addi r0, r3, 0x024F /* 0x0007024F@l */
/* 807BF990  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BF994  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BF998  38 81 00 10 */	addi r4, r1, 0x10
/* 807BF99C  38 A0 FF FF */	li r5, -1
/* 807BF9A0  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BF9A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BF9A8  7D 89 03 A6 */	mtctr r12
/* 807BF9AC  4E 80 04 21 */	bctrl 
/* 807BF9B0  7F C3 F3 78 */	mr r3, r30
/* 807BF9B4  38 80 00 03 */	li r4, 3
/* 807BF9B8  38 A0 00 00 */	li r5, 0
/* 807BF9BC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BF9C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BF9C4  4B FF E1 1D */	bl setBck__8daE_TT_cFiUcff
/* 807BF9C8  38 00 00 01 */	li r0, 1
/* 807BF9CC  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BF9D0  38 00 00 64 */	li r0, 0x64
/* 807BF9D4  90 1E 06 EC */	stw r0, 0x6ec(r30)
/* 807BF9D8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807BF9DC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807BF9E0  48 00 03 40 */	b lbl_807BFD20
lbl_807BF9E4:
/* 807BF9E4  4B 85 AD 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BF9E8  7C 64 1B 78 */	mr r4, r3
/* 807BF9EC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807BF9F0  38 A0 00 08 */	li r5, 8
/* 807BF9F4  38 C0 04 00 */	li r6, 0x400
/* 807BF9F8  38 E0 01 00 */	li r7, 0x100
/* 807BF9FC  4B AB 0B 45 */	bl cLib_addCalcAngleS__FPsssss
/* 807BFA00  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BFA04  38 63 00 0C */	addi r3, r3, 0xc
/* 807BFA08  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807BFA0C  4B B6 8A 21 */	bl checkPass__12J3DFrameCtrlFf
/* 807BFA10  2C 03 00 00 */	cmpwi r3, 0
/* 807BFA14  41 82 00 30 */	beq lbl_807BFA44
/* 807BFA18  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024E@ha */
/* 807BFA1C  38 03 02 4E */	addi r0, r3, 0x024E /* 0x0007024E@l */
/* 807BFA20  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BFA24  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BFA28  38 81 00 0C */	addi r4, r1, 0xc
/* 807BFA2C  38 A0 00 00 */	li r5, 0
/* 807BFA30  38 C0 FF FF */	li r6, -1
/* 807BFA34  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BFA38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BFA3C  7D 89 03 A6 */	mtctr r12
/* 807BFA40  4E 80 04 21 */	bctrl 
lbl_807BFA44:
/* 807BFA44  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BFA48  38 80 00 01 */	li r4, 1
/* 807BFA4C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BFA50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BFA54  40 82 00 18 */	bne lbl_807BFA6C
/* 807BFA58  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BFA5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BFA60  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BFA64  41 82 00 08 */	beq lbl_807BFA6C
/* 807BFA68  38 80 00 00 */	li r4, 0
lbl_807BFA6C:
/* 807BFA6C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BFA70  41 82 02 B0 */	beq lbl_807BFD20
/* 807BFA74  7F C3 F3 78 */	mr r3, r30
/* 807BFA78  38 80 00 0C */	li r4, 0xc
/* 807BFA7C  38 A0 00 00 */	li r5, 0
/* 807BFA80  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BFA84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BFA88  4B FF E0 59 */	bl setBck__8daE_TT_cFiUcff
/* 807BFA8C  38 00 00 02 */	li r0, 2
/* 807BFA90  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BFA94  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807BFA98  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807BFA9C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807BFAA0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807BFAA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BFAA8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807BFAAC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807BFAB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807BFAB4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807BFAB8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807BFABC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807BFAC0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807BFAC4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 807BFAC8  38 61 00 14 */	addi r3, r1, 0x14
/* 807BFACC  38 81 00 20 */	addi r4, r1, 0x20
/* 807BFAD0  4B B8 78 CD */	bl PSVECSquareDistance
/* 807BFAD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BFAD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BFADC  40 81 00 58 */	ble lbl_807BFB34
/* 807BFAE0  FC 00 08 34 */	frsqrte f0, f1
/* 807BFAE4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807BFAE8  FC 44 00 32 */	fmul f2, f4, f0
/* 807BFAEC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807BFAF0  FC 00 00 32 */	fmul f0, f0, f0
/* 807BFAF4  FC 01 00 32 */	fmul f0, f1, f0
/* 807BFAF8  FC 03 00 28 */	fsub f0, f3, f0
/* 807BFAFC  FC 02 00 32 */	fmul f0, f2, f0
/* 807BFB00  FC 44 00 32 */	fmul f2, f4, f0
/* 807BFB04  FC 00 00 32 */	fmul f0, f0, f0
/* 807BFB08  FC 01 00 32 */	fmul f0, f1, f0
/* 807BFB0C  FC 03 00 28 */	fsub f0, f3, f0
/* 807BFB10  FC 02 00 32 */	fmul f0, f2, f0
/* 807BFB14  FC 44 00 32 */	fmul f2, f4, f0
/* 807BFB18  FC 00 00 32 */	fmul f0, f0, f0
/* 807BFB1C  FC 01 00 32 */	fmul f0, f1, f0
/* 807BFB20  FC 03 00 28 */	fsub f0, f3, f0
/* 807BFB24  FC 02 00 32 */	fmul f0, f2, f0
/* 807BFB28  FC 21 00 32 */	fmul f1, f1, f0
/* 807BFB2C  FC 20 08 18 */	frsp f1, f1
/* 807BFB30  48 00 00 88 */	b lbl_807BFBB8
lbl_807BFB34:
/* 807BFB34  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807BFB38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BFB3C  40 80 00 10 */	bge lbl_807BFB4C
/* 807BFB40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BFB44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BFB48  48 00 00 70 */	b lbl_807BFBB8
lbl_807BFB4C:
/* 807BFB4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807BFB50  80 81 00 08 */	lwz r4, 8(r1)
/* 807BFB54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BFB58  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BFB5C  7C 03 00 00 */	cmpw r3, r0
/* 807BFB60  41 82 00 14 */	beq lbl_807BFB74
/* 807BFB64  40 80 00 40 */	bge lbl_807BFBA4
/* 807BFB68  2C 03 00 00 */	cmpwi r3, 0
/* 807BFB6C  41 82 00 20 */	beq lbl_807BFB8C
/* 807BFB70  48 00 00 34 */	b lbl_807BFBA4
lbl_807BFB74:
/* 807BFB74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BFB78  41 82 00 0C */	beq lbl_807BFB84
/* 807BFB7C  38 00 00 01 */	li r0, 1
/* 807BFB80  48 00 00 28 */	b lbl_807BFBA8
lbl_807BFB84:
/* 807BFB84  38 00 00 02 */	li r0, 2
/* 807BFB88  48 00 00 20 */	b lbl_807BFBA8
lbl_807BFB8C:
/* 807BFB8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BFB90  41 82 00 0C */	beq lbl_807BFB9C
/* 807BFB94  38 00 00 05 */	li r0, 5
/* 807BFB98  48 00 00 10 */	b lbl_807BFBA8
lbl_807BFB9C:
/* 807BFB9C  38 00 00 03 */	li r0, 3
/* 807BFBA0  48 00 00 08 */	b lbl_807BFBA8
lbl_807BFBA4:
/* 807BFBA4  38 00 00 04 */	li r0, 4
lbl_807BFBA8:
/* 807BFBA8  2C 00 00 01 */	cmpwi r0, 1
/* 807BFBAC  40 82 00 0C */	bne lbl_807BFBB8
/* 807BFBB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BFBB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BFBB8:
/* 807BFBB8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807BFBBC  EC 21 00 24 */	fdivs f1, f1, f0
/* 807BFBC0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807BFBC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BFBC8  40 81 00 08 */	ble lbl_807BFBD0
/* 807BFBCC  FC 20 00 90 */	fmr f1, f0
lbl_807BFBD0:
/* 807BFBD0  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 807BFBD4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807BFBD8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807BFBDC  48 00 01 44 */	b lbl_807BFD20
lbl_807BFBE0:
/* 807BFBE0  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 807BFBE4  60 00 00 01 */	ori r0, r0, 1
/* 807BFBE8  90 1E 09 50 */	stw r0, 0x950(r30)
/* 807BFBEC  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 807BFBF0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 807BFBF4  41 82 00 0C */	beq lbl_807BFC00
/* 807BFBF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BFBFC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807BFC00:
/* 807BFC00  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 807BFC04  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807BFC08  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807BFC0C  4C 40 13 82 */	cror 2, 0, 2
/* 807BFC10  40 82 00 20 */	bne lbl_807BFC30
/* 807BFC14  7F C3 F3 78 */	mr r3, r30
/* 807BFC18  38 80 00 0D */	li r4, 0xd
/* 807BFC1C  38 A0 00 00 */	li r5, 0
/* 807BFC20  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807BFC24  4B FF DE BD */	bl setBck__8daE_TT_cFiUcff
/* 807BFC28  38 00 00 03 */	li r0, 3
/* 807BFC2C  90 1E 06 BC */	stw r0, 0x6bc(r30)
lbl_807BFC30:
/* 807BFC30  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 807BFC34  60 00 00 01 */	ori r0, r0, 1
/* 807BFC38  90 1E 09 50 */	stw r0, 0x950(r30)
/* 807BFC3C  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 807BFC40  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807BFC44  41 82 00 DC */	beq lbl_807BFD20
/* 807BFC48  38 00 00 01 */	li r0, 1
/* 807BFC4C  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 807BFC50  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807BFC54  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BFC58  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807BFC5C  38 00 00 04 */	li r0, 4
/* 807BFC60  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BFC64  7F C3 F3 78 */	mr r3, r30
/* 807BFC68  4B FF E7 D1 */	bl setWaterEffect__8daE_TT_cFv
/* 807BFC6C  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 807BFC70  28 00 00 00 */	cmplwi r0, 0
/* 807BFC74  41 82 00 0C */	beq lbl_807BFC80
/* 807BFC78  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807BFC7C  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
lbl_807BFC80:
/* 807BFC80  38 00 00 05 */	li r0, 5
/* 807BFC84  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 807BFC88  48 00 00 98 */	b lbl_807BFD20
lbl_807BFC8C:
/* 807BFC8C  88 1E 06 EA */	lbz r0, 0x6ea(r30)
/* 807BFC90  28 00 00 00 */	cmplwi r0, 0
/* 807BFC94  41 82 00 10 */	beq lbl_807BFCA4
/* 807BFC98  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 807BFC9C  60 00 00 01 */	ori r0, r0, 1
/* 807BFCA0  90 1E 09 50 */	stw r0, 0x950(r30)
lbl_807BFCA4:
/* 807BFCA4  7F C3 F3 78 */	mr r3, r30
/* 807BFCA8  4B FF DE DD */	bl calcHitGroundSpeed__8daE_TT_cFv
/* 807BFCAC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BFCB0  38 80 00 01 */	li r4, 1
/* 807BFCB4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BFCB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BFCBC  40 82 00 18 */	bne lbl_807BFCD4
/* 807BFCC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BFCC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BFCC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BFCCC  41 82 00 08 */	beq lbl_807BFCD4
/* 807BFCD0  38 80 00 00 */	li r4, 0
lbl_807BFCD4:
/* 807BFCD4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BFCD8  41 82 00 48 */	beq lbl_807BFD20
/* 807BFCDC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807BFCE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BFCE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BFCE8  40 82 00 38 */	bne lbl_807BFD20
/* 807BFCEC  7F C3 F3 78 */	mr r3, r30
/* 807BFCF0  4B FF EE BD */	bl checkPlayerSearch__8daE_TT_cFv
/* 807BFCF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BFCF8  40 82 00 18 */	bne lbl_807BFD10
/* 807BFCFC  7F C3 F3 78 */	mr r3, r30
/* 807BFD00  38 80 00 00 */	li r4, 0
/* 807BFD04  38 A0 00 00 */	li r5, 0
/* 807BFD08  4B FF DE DD */	bl setActionMode__8daE_TT_cFii
/* 807BFD0C  48 00 00 14 */	b lbl_807BFD20
lbl_807BFD10:
/* 807BFD10  7F C3 F3 78 */	mr r3, r30
/* 807BFD14  38 80 00 01 */	li r4, 1
/* 807BFD18  38 A0 00 00 */	li r5, 0
/* 807BFD1C  4B FF DE C9 */	bl setActionMode__8daE_TT_cFii
lbl_807BFD20:
/* 807BFD20  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807BFD24  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807BFD28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807BFD2C  7C 08 03 A6 */	mtlr r0
/* 807BFD30  38 21 00 40 */	addi r1, r1, 0x40
/* 807BFD34  4E 80 00 20 */	blr 
