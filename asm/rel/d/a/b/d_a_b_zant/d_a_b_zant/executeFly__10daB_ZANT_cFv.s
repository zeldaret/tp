lbl_806427EC:
/* 806427EC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 806427F0  7C 08 02 A6 */	mflr r0
/* 806427F4  90 01 01 04 */	stw r0, 0x104(r1)
/* 806427F8  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 806427FC  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80642800  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80642804  4B D1 F9 B4 */	b _savegpr_20
/* 80642808  7C 7E 1B 78 */	mr r30, r3
/* 8064280C  3C 60 80 65 */	lis r3, lit_3757@ha
/* 80642810  3B E3 EB 1C */	addi r31, r3, lit_3757@l
/* 80642814  3A 81 00 50 */	addi r20, r1, 0x50
/* 80642818  7E 83 A3 78 */	mr r3, r20
/* 8064281C  4B A3 4D 60 */	b __ct__11dBgS_GndChkFv
/* 80642820  3C 60 80 65 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80642824  38 63 F5 5C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80642828  90 61 00 60 */	stw r3, 0x60(r1)
/* 8064282C  38 03 00 0C */	addi r0, r3, 0xc
/* 80642830  90 01 00 70 */	stw r0, 0x70(r1)
/* 80642834  38 03 00 18 */	addi r0, r3, 0x18
/* 80642838  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8064283C  38 03 00 24 */	addi r0, r3, 0x24
/* 80642840  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80642844  38 74 00 3C */	addi r3, r20, 0x3c
/* 80642848  4B A3 66 20 */	b SetObj__16dBgS_PolyPassChkFv
/* 8064284C  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha
/* 80642850  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l
/* 80642854  90 61 00 60 */	stw r3, 0x60(r1)
/* 80642858  38 03 00 0C */	addi r0, r3, 0xc
/* 8064285C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80642860  38 03 00 18 */	addi r0, r3, 0x18
/* 80642864  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80642868  38 03 00 24 */	addi r0, r3, 0x24
/* 8064286C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80642870  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 80642874  60 00 00 03 */	ori r0, r0, 3
/* 80642878  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8064287C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80642880  28 00 00 0E */	cmplwi r0, 0xe
/* 80642884  41 81 06 18 */	bgt lbl_80642E9C
/* 80642888  3C 60 80 65 */	lis r3, lit_6173@ha
/* 8064288C  38 63 F0 58 */	addi r3, r3, lit_6173@l
/* 80642890  54 00 10 3A */	slwi r0, r0, 2
/* 80642894  7C 03 00 2E */	lwzx r0, r3, r0
/* 80642898  7C 09 03 A6 */	mtctr r0
/* 8064289C  4E 80 04 20 */	bctr 
lbl_806428A0:
/* 806428A0  7F C3 F3 78 */	mr r3, r30
/* 806428A4  38 80 00 01 */	li r4, 1
/* 806428A8  4B FF D6 C5 */	bl setTgHitBit__10daB_ZANT_cFi
/* 806428AC  7F C3 F3 78 */	mr r3, r30
/* 806428B0  38 80 00 12 */	li r4, 0x12
/* 806428B4  38 A0 00 02 */	li r5, 2
/* 806428B8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806428BC  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 806428C0  4B FF BD 05 */	bl setBck__10daB_ZANT_cFiUcff
/* 806428C4  38 60 00 00 */	li r3, 0
/* 806428C8  90 7E 06 E8 */	stw r3, 0x6e8(r30)
/* 806428CC  38 00 00 01 */	li r0, 1
/* 806428D0  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 806428D4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806428D8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806428DC  98 7E 07 0C */	stb r3, 0x70c(r30)
/* 806428E0  7F C3 F3 78 */	mr r3, r30
/* 806428E4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010040@ha */
/* 806428E8  38 84 00 40 */	addi r4, r4, 0x0040 /* 0x00010040@l */
/* 806428EC  4B FF D7 D1 */	bl setTgType__10daB_ZANT_cFUl
lbl_806428F0:
/* 806428F0  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 806428F4  2C 00 00 00 */	cmpwi r0, 0
/* 806428F8  40 82 05 A4 */	bne lbl_80642E9C
/* 806428FC  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80642900  28 00 00 00 */	cmplwi r0, 0
/* 80642904  40 82 00 24 */	bne lbl_80642928
/* 80642908  3C 60 80 65 */	lis r3, l_HIO@ha
/* 8064290C  38 63 F6 04 */	addi r3, r3, l_HIO@l
/* 80642910  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80642914  FC 00 00 1E */	fctiwz f0, f0
/* 80642918  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 8064291C  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80642920  98 1E 07 03 */	stb r0, 0x703(r30)
/* 80642924  48 00 00 0C */	b lbl_80642930
lbl_80642928:
/* 80642928  38 00 00 08 */	li r0, 8
/* 8064292C  98 1E 07 03 */	stb r0, 0x703(r30)
lbl_80642930:
/* 80642930  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80642934  4B C2 50 20 */	b cM_rndF__Ff
/* 80642938  88 1E 06 FE */	lbz r0, 0x6fe(r30)
/* 8064293C  C8 5F 00 70 */	lfd f2, 0x70(r31)
/* 80642940  90 01 00 AC */	stw r0, 0xac(r1)
/* 80642944  3C 00 43 30 */	lis r0, 0x4330
/* 80642948  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8064294C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80642950  EC 00 10 28 */	fsubs f0, f0, f2
/* 80642954  EC 20 08 2A */	fadds f1, f0, f1
/* 80642958  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064295C  EC 00 08 2A */	fadds f0, f0, f1
/* 80642960  FC 00 00 1E */	fctiwz f0, f0
/* 80642964  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 80642968  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8064296C  98 1E 06 FE */	stb r0, 0x6fe(r30)
/* 80642970  88 9E 06 FE */	lbz r4, 0x6fe(r30)
/* 80642974  38 60 00 03 */	li r3, 3
/* 80642978  7C 04 1B D6 */	divw r0, r4, r3
/* 8064297C  7C 00 19 D6 */	mullw r0, r0, r3
/* 80642980  7C 00 20 50 */	subf r0, r0, r4
/* 80642984  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80642988  3C 60 80 65 */	lis r3, data_8064F66C@ha
/* 8064298C  38 03 F6 6C */	addi r0, r3, data_8064F66C@l
/* 80642990  7C 60 22 14 */	add r3, r0, r4
/* 80642994  C0 03 00 00 */	lfs f0, 0(r3)
/* 80642998  D0 1E 06 A0 */	stfs f0, 0x6a0(r30)
/* 8064299C  C0 03 00 04 */	lfs f0, 4(r3)
/* 806429A0  D0 1E 06 A4 */	stfs f0, 0x6a4(r30)
/* 806429A4  C0 03 00 08 */	lfs f0, 8(r3)
/* 806429A8  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 806429AC  38 00 00 01 */	li r0, 1
/* 806429B0  98 1E 07 11 */	stb r0, 0x711(r30)
/* 806429B4  7F C3 F3 78 */	mr r3, r30
/* 806429B8  38 80 00 00 */	li r4, 0
/* 806429BC  38 A0 00 00 */	li r5, 0
/* 806429C0  4B FF BD 05 */	bl setActionMode__10daB_ZANT_cFii
/* 806429C4  38 61 00 50 */	addi r3, r1, 0x50
/* 806429C8  38 80 FF FF */	li r4, -1
/* 806429CC  4B A3 4F 1C */	b __dt__18dBgS_ObjGndChk_AllFv
/* 806429D0  48 00 04 D8 */	b lbl_80642EA8
lbl_806429D4:
/* 806429D4  7F C3 F3 78 */	mr r3, r30
/* 806429D8  38 80 00 31 */	li r4, 0x31
/* 806429DC  38 A0 00 00 */	li r5, 0
/* 806429E0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806429E4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 806429E8  4B FF BB DD */	bl setBck__10daB_ZANT_cFiUcff
/* 806429EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007041F@ha */
/* 806429F0  38 03 04 1F */	addi r0, r3, 0x041F /* 0x0007041F@l */
/* 806429F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 806429F8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 806429FC  38 81 00 28 */	addi r4, r1, 0x28
/* 80642A00  38 A0 FF FF */	li r5, -1
/* 80642A04  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80642A08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80642A0C  7D 89 03 A6 */	mtctr r12
/* 80642A10  4E 80 04 21 */	bctrl 
/* 80642A14  38 00 00 0B */	li r0, 0xb
/* 80642A18  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80642A1C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80642A20  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80642A24  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80642A28  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80642A2C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80642A30  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80642A34  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 80642A38  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80642A3C  38 00 10 00 */	li r0, 0x1000
/* 80642A40  B0 1E 06 F8 */	sth r0, 0x6f8(r30)
/* 80642A44  7F C3 F3 78 */	mr r3, r30
/* 80642A48  38 80 00 00 */	li r4, 0
/* 80642A4C  4B FF D5 21 */	bl setTgHitBit__10daB_ZANT_cFi
lbl_80642A50:
/* 80642A50  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80642A54  2C 00 00 0B */	cmpwi r0, 0xb
/* 80642A58  40 82 00 58 */	bne lbl_80642AB0
/* 80642A5C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80642A60  38 80 00 01 */	li r4, 1
/* 80642A64  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80642A68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80642A6C  40 82 00 18 */	bne lbl_80642A84
/* 80642A70  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80642A74  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80642A78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80642A7C  41 82 00 08 */	beq lbl_80642A84
/* 80642A80  38 80 00 00 */	li r4, 0
lbl_80642A84:
/* 80642A84  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80642A88  41 82 00 58 */	beq lbl_80642AE0
/* 80642A8C  7F C3 F3 78 */	mr r3, r30
/* 80642A90  38 80 00 33 */	li r4, 0x33
/* 80642A94  38 A0 00 02 */	li r5, 2
/* 80642A98  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80642A9C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80642AA0  4B FF BB 25 */	bl setBck__10daB_ZANT_cFiUcff
/* 80642AA4  38 00 00 0C */	li r0, 0xc
/* 80642AA8  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80642AAC  48 00 00 34 */	b lbl_80642AE0
lbl_80642AB0:
/* 80642AB0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80642AB4  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 80642AB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80642ABC  40 80 00 24 */	bge lbl_80642AE0
/* 80642AC0  7F C3 F3 78 */	mr r3, r30
/* 80642AC4  38 80 00 32 */	li r4, 0x32
/* 80642AC8  38 A0 00 00 */	li r5, 0
/* 80642ACC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80642AD0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80642AD4  4B FF BA F1 */	bl setBck__10daB_ZANT_cFiUcff
/* 80642AD8  38 00 00 0D */	li r0, 0xd
/* 80642ADC  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_80642AE0:
/* 80642AE0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80642AE4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80642AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80642AEC  40 80 00 10 */	bge lbl_80642AFC
/* 80642AF0  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80642AF4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80642AF8  48 00 00 0C */	b lbl_80642B04
lbl_80642AFC:
/* 80642AFC  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 80642B00  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80642B04:
/* 80642B04  A8 7E 06 F8 */	lha r3, 0x6f8(r30)
/* 80642B08  7C 60 07 35 */	extsh. r0, r3
/* 80642B0C  41 82 00 24 */	beq lbl_80642B30
/* 80642B10  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80642B14  7C 00 1A 14 */	add r0, r0, r3
/* 80642B18  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80642B1C  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80642B20  38 80 00 00 */	li r4, 0
/* 80642B24  38 A0 00 40 */	li r5, 0x40
/* 80642B28  4B C2 E0 68 */	b cLib_chaseAngleS__FPsss
/* 80642B2C  48 00 00 18 */	b lbl_80642B44
lbl_80642B30:
/* 80642B30  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80642B34  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80642B38  38 A0 00 04 */	li r5, 4
/* 80642B3C  38 C0 10 00 */	li r6, 0x1000
/* 80642B40  4B C2 DA C8 */	b cLib_addCalcAngleS2__FPssss
lbl_80642B44:
/* 80642B44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80642B48  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80642B4C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80642B50  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80642B54  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80642B58  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80642B5C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80642B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80642B64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80642B68  38 61 00 50 */	addi r3, r1, 0x50
/* 80642B6C  38 81 00 44 */	addi r4, r1, 0x44
/* 80642B70  4B C2 51 B8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80642B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80642B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80642B7C  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 80642B80  7E E3 BB 78 */	mr r3, r23
/* 80642B84  38 81 00 50 */	addi r4, r1, 0x50
/* 80642B88  4B A3 19 18 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80642B8C  FF E0 08 90 */	fmr f31, f1
/* 80642B90  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80642B94  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80642B98  41 82 03 04 */	beq lbl_80642E9C
/* 80642B9C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80642BA0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80642BA4  4C 40 13 82 */	cror 2, 0, 2
/* 80642BA8  40 82 02 F4 */	bne lbl_80642E9C
/* 80642BAC  7E E3 BB 78 */	mr r3, r23
/* 80642BB0  3A C1 00 64 */	addi r22, r1, 0x64
/* 80642BB4  7E C4 B3 78 */	mr r4, r22
/* 80642BB8  4B A3 22 98 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80642BBC  2C 03 00 0B */	cmpwi r3, 0xb
/* 80642BC0  40 82 01 54 */	bne lbl_80642D14
/* 80642BC4  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 80642BC8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80642BCC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80642BD0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80642BD4  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 80642BD8  4B C2 4D B4 */	b cM_rndFX__Ff
/* 80642BDC  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80642BE0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80642BE4  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80642BE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80642BEC  FC 00 00 1E */	fctiwz f0, f0
/* 80642BF0  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 80642BF4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80642BF8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80642BFC  38 00 00 0B */	li r0, 0xb
/* 80642C00  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80642C04  7F C3 F3 78 */	mr r3, r30
/* 80642C08  38 80 00 31 */	li r4, 0x31
/* 80642C0C  38 A0 00 00 */	li r5, 0
/* 80642C10  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80642C14  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80642C18  4B FF B9 AD */	bl setBck__10daB_ZANT_cFiUcff
/* 80642C1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007041C@ha */
/* 80642C20  38 03 04 1C */	addi r0, r3, 0x041C /* 0x0007041C@l */
/* 80642C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80642C28  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80642C2C  38 81 00 24 */	addi r4, r1, 0x24
/* 80642C30  38 A0 FF FF */	li r5, -1
/* 80642C34  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80642C38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80642C3C  7D 89 03 A6 */	mtctr r12
/* 80642C40  4E 80 04 21 */	bctrl 
/* 80642C44  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80642C48  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80642C4C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80642C50  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 80642C54  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80642C58  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80642C5C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80642C60  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80642C64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80642C68  3A 80 00 00 */	li r20, 0
/* 80642C6C  3B E0 00 00 */	li r31, 0
/* 80642C70  3B A0 00 00 */	li r29, 0
/* 80642C74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80642C78  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80642C7C  3C 60 80 65 */	lis r3, w_eff_id@ha
/* 80642C80  3B 83 F0 50 */	addi r28, r3, w_eff_id@l
/* 80642C84  7F B8 EB 78 */	mr r24, r29
/* 80642C88  7F B9 EB 78 */	mr r25, r29
/* 80642C8C  3B 40 FF FF */	li r26, -1
/* 80642C90  7F BB EB 78 */	mr r27, r29
lbl_80642C94:
/* 80642C94  93 01 00 08 */	stw r24, 8(r1)
/* 80642C98  93 21 00 0C */	stw r25, 0xc(r1)
/* 80642C9C  93 41 00 10 */	stw r26, 0x10(r1)
/* 80642CA0  93 61 00 14 */	stw r27, 0x14(r1)
/* 80642CA4  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80642CA8  3A BD 38 9C */	addi r21, r29, 0x389c
/* 80642CAC  7C 9E A8 2E */	lwzx r4, r30, r21
/* 80642CB0  7C BC FA 2E */	lhzx r5, r28, r31
/* 80642CB4  7E C6 B3 78 */	mr r6, r22
/* 80642CB8  38 E1 00 38 */	addi r7, r1, 0x38
/* 80642CBC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80642CC0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80642CC4  39 41 00 2C */	addi r10, r1, 0x2c
/* 80642CC8  4B A0 A9 DC */	b setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80642CCC  7C 7E A9 2E */	stwx r3, r30, r21
/* 80642CD0  3A 94 00 01 */	addi r20, r20, 1
/* 80642CD4  2C 14 00 04 */	cmpwi r20, 4
/* 80642CD8  3B FF 00 02 */	addi r31, r31, 2
/* 80642CDC  3B BD 00 04 */	addi r29, r29, 4
/* 80642CE0  41 80 FF B4 */	blt lbl_80642C94
/* 80642CE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070420@ha */
/* 80642CE8  38 03 04 20 */	addi r0, r3, 0x0420 /* 0x00070420@l */
/* 80642CEC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80642CF0  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80642CF4  38 81 00 20 */	addi r4, r1, 0x20
/* 80642CF8  38 A0 00 00 */	li r5, 0
/* 80642CFC  38 C0 FF FF */	li r6, -1
/* 80642D00  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80642D04  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80642D08  7D 89 03 A6 */	mtctr r12
/* 80642D0C  4E 80 04 21 */	bctrl 
/* 80642D10  48 00 01 8C */	b lbl_80642E9C
lbl_80642D14:
/* 80642D14  38 7E 38 94 */	addi r3, r30, 0x3894
/* 80642D18  38 9E 38 98 */	addi r4, r30, 0x3898
/* 80642D1C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80642D20  38 C0 00 00 */	li r6, 0
/* 80642D24  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80642D28  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80642D2C  39 00 00 01 */	li r8, 1
/* 80642D30  4B 9D A2 F0 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80642D34  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80642D38  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80642D3C  7F C3 F3 78 */	mr r3, r30
/* 80642D40  38 80 00 34 */	li r4, 0x34
/* 80642D44  38 A0 00 00 */	li r5, 0
/* 80642D48  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80642D4C  4B FF B8 79 */	bl setBck__10daB_ZANT_cFiUcff
/* 80642D50  38 00 00 0E */	li r0, 0xe
/* 80642D54  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80642D58  7F C3 F3 78 */	mr r3, r30
/* 80642D5C  38 80 00 01 */	li r4, 1
/* 80642D60  4B FF D2 0D */	bl setTgHitBit__10daB_ZANT_cFi
/* 80642D64  7F C3 F3 78 */	mr r3, r30
/* 80642D68  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80642D6C  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 80642D70  4B FF D3 4D */	bl setTgType__10daB_ZANT_cFUl
/* 80642D74  38 00 00 00 */	li r0, 0
/* 80642D78  98 1E 07 02 */	stb r0, 0x702(r30)
/* 80642D7C  38 00 00 96 */	li r0, 0x96
/* 80642D80  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 80642D84  38 00 00 01 */	li r0, 1
/* 80642D88  98 1E 07 0C */	stb r0, 0x70c(r30)
/* 80642D8C  48 00 01 10 */	b lbl_80642E9C
lbl_80642D90:
/* 80642D90  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80642D94  38 63 00 0C */	addi r3, r3, 0xc
/* 80642D98  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80642D9C  4B CE 56 90 */	b checkPass__12J3DFrameCtrlFf
/* 80642DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80642DA4  41 82 00 34 */	beq lbl_80642DD8
/* 80642DA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007041D@ha */
/* 80642DAC  38 03 04 1D */	addi r0, r3, 0x041D /* 0x0007041D@l */
/* 80642DB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80642DB4  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80642DB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80642DBC  38 A0 00 00 */	li r5, 0
/* 80642DC0  38 C0 FF FF */	li r6, -1
/* 80642DC4  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80642DC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80642DCC  7D 89 03 A6 */	mtctr r12
/* 80642DD0  4E 80 04 21 */	bctrl 
/* 80642DD4  48 00 00 60 */	b lbl_80642E34
lbl_80642DD8:
/* 80642DD8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80642DDC  38 63 00 0C */	addi r3, r3, 0xc
/* 80642DE0  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80642DE4  4B CE 56 48 */	b checkPass__12J3DFrameCtrlFf
/* 80642DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80642DEC  40 82 00 1C */	bne lbl_80642E08
/* 80642DF0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80642DF4  38 63 00 0C */	addi r3, r3, 0xc
/* 80642DF8  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80642DFC  4B CE 56 30 */	b checkPass__12J3DFrameCtrlFf
/* 80642E00  2C 03 00 00 */	cmpwi r3, 0
/* 80642E04  41 82 00 30 */	beq lbl_80642E34
lbl_80642E08:
/* 80642E08  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007041E@ha */
/* 80642E0C  38 03 04 1E */	addi r0, r3, 0x041E /* 0x0007041E@l */
/* 80642E10  90 01 00 18 */	stw r0, 0x18(r1)
/* 80642E14  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80642E18  38 81 00 18 */	addi r4, r1, 0x18
/* 80642E1C  38 A0 00 00 */	li r5, 0
/* 80642E20  38 C0 FF FF */	li r6, -1
/* 80642E24  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80642E28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80642E2C  7D 89 03 A6 */	mtctr r12
/* 80642E30  4E 80 04 21 */	bctrl 
lbl_80642E34:
/* 80642E34  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80642E38  38 63 00 0C */	addi r3, r3, 0xc
/* 80642E3C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80642E40  4B CE 55 EC */	b checkPass__12J3DFrameCtrlFf
/* 80642E44  2C 03 00 00 */	cmpwi r3, 0
/* 80642E48  41 82 00 0C */	beq lbl_80642E54
/* 80642E4C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80642E50  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80642E54:
/* 80642E54  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80642E58  38 80 00 01 */	li r4, 1
/* 80642E5C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80642E60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80642E64  40 82 00 18 */	bne lbl_80642E7C
/* 80642E68  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80642E6C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80642E70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80642E74  41 82 00 08 */	beq lbl_80642E7C
/* 80642E78  38 80 00 00 */	li r4, 0
lbl_80642E7C:
/* 80642E7C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80642E80  41 82 00 1C */	beq lbl_80642E9C
/* 80642E84  7F C3 F3 78 */	mr r3, r30
/* 80642E88  38 80 00 06 */	li r4, 6
/* 80642E8C  38 A0 00 00 */	li r5, 0
/* 80642E90  4B FF B8 35 */	bl setActionMode__10daB_ZANT_cFii
/* 80642E94  38 00 00 00 */	li r0, 0
/* 80642E98  98 1E 07 02 */	stb r0, 0x702(r30)
lbl_80642E9C:
/* 80642E9C  38 61 00 50 */	addi r3, r1, 0x50
/* 80642EA0  38 80 FF FF */	li r4, -1
/* 80642EA4  4B A3 4A 44 */	b __dt__18dBgS_ObjGndChk_AllFv
lbl_80642EA8:
/* 80642EA8  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80642EAC  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80642EB0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80642EB4  4B D1 F3 50 */	b _restgpr_20
/* 80642EB8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80642EBC  7C 08 03 A6 */	mtlr r0
/* 80642EC0  38 21 01 00 */	addi r1, r1, 0x100
/* 80642EC4  4E 80 00 20 */	blr 
