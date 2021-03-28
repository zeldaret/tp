lbl_80D1C98C:
/* 80D1C98C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D1C990  7C 08 02 A6 */	mflr r0
/* 80D1C994  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D1C998  39 61 00 30 */	addi r11, r1, 0x30
/* 80D1C99C  4B 64 58 40 */	b _savegpr_29
/* 80D1C9A0  7C 7E 1B 78 */	mr r30, r3
/* 80D1C9A4  3C 60 80 D2 */	lis r3, l_R02_eff_id@ha
/* 80D1C9A8  3B E3 D3 D4 */	addi r31, r3, l_R02_eff_id@l
/* 80D1C9AC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D1C9B0  D0 1E 07 68 */	stfs f0, 0x768(r30)
/* 80D1C9B4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D1C9B8  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 80D1C9BC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1C9C0  54 00 27 FE */	rlwinm r0, r0, 4, 0x1f, 0x1f
/* 80D1C9C4  28 00 00 01 */	cmplwi r0, 1
/* 80D1C9C8  40 82 00 20 */	bne lbl_80D1C9E8
/* 80D1C9CC  C0 1E 07 68 */	lfs f0, 0x768(r30)
/* 80D1C9D0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80D1C9D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D1C9D8  D0 1E 07 68 */	stfs f0, 0x768(r30)
/* 80D1C9DC  C0 1E 07 6C */	lfs f0, 0x76c(r30)
/* 80D1C9E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D1C9E4  D0 1E 07 6C */	stfs f0, 0x76c(r30)
lbl_80D1C9E8:
/* 80D1C9E8  7F C3 F3 78 */	mr r3, r30
/* 80D1C9EC  4B FF FF 39 */	bl initBaseMtx__12daObjTrnd2_cFv
/* 80D1C9F0  38 1E 07 08 */	addi r0, r30, 0x708
/* 80D1C9F4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D1C9F8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D1C9FC  38 80 00 FF */	li r4, 0xff
/* 80D1CA00  38 A0 00 FF */	li r5, 0xff
/* 80D1CA04  7F C6 F3 78 */	mr r6, r30
/* 80D1CA08  4B 36 6E 58 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D1CA0C  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80D1CA10  3C 80 80 D2 */	lis r4, l_cps_src@ha
/* 80D1CA14  38 84 D4 58 */	addi r4, r4, l_cps_src@l
/* 80D1CA18  4B 36 7D B8 */	b Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80D1CA1C  38 1E 05 68 */	addi r0, r30, 0x568
/* 80D1CA20  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80D1CA24  C0 7E 07 68 */	lfs f3, 0x768(r30)
/* 80D1CA28  FC 20 18 50 */	fneg f1, f3
/* 80D1CA2C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D1CA30  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D1CA34  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D1CA38  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80D1CA3C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80D1CA40  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D1CA44  EC 83 00 32 */	fmuls f4, f3, f0
/* 80D1CA48  D0 81 00 08 */	stfs f4, 8(r1)
/* 80D1CA4C  C0 7E 07 6C */	lfs f3, 0x76c(r30)
/* 80D1CA50  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D1CA54  EC A3 00 32 */	fmuls f5, f3, f0
/* 80D1CA58  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80D1CA5C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80D1CA60  7F C3 F3 78 */	mr r3, r30
/* 80D1CA64  FC 60 08 90 */	fmr f3, f1
/* 80D1CA68  FC C0 20 90 */	fmr f6, f4
/* 80D1CA6C  4B 2F DA DC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D1CA70  C0 3E 07 68 */	lfs f1, 0x768(r30)
/* 80D1CA74  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D1CA78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1CA7C  D0 1E 07 00 */	stfs f0, 0x700(r30)
/* 80D1CA80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D1CA84  D0 1E 06 E8 */	stfs f0, 0x6e8(r30)
/* 80D1CA88  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D1CA8C  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 80D1CA90  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D1CA94  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 80D1CA98  7F C3 F3 78 */	mr r3, r30
/* 80D1CA9C  48 00 06 11 */	bl setParticle__12daObjTrnd2_cFv
/* 80D1CAA0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1CAA4  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80D1CAA8  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80D1CAAC  2C 00 00 03 */	cmpwi r0, 3
/* 80D1CAB0  41 82 01 58 */	beq lbl_80D1CC08
/* 80D1CAB4  40 80 00 1C */	bge lbl_80D1CAD0
/* 80D1CAB8  2C 00 00 01 */	cmpwi r0, 1
/* 80D1CABC  41 82 00 A0 */	beq lbl_80D1CB5C
/* 80D1CAC0  40 80 01 2C */	bge lbl_80D1CBEC
/* 80D1CAC4  2C 00 00 00 */	cmpwi r0, 0
/* 80D1CAC8  40 80 00 5C */	bge lbl_80D1CB24
/* 80D1CACC  48 00 01 54 */	b lbl_80D1CC20
lbl_80D1CAD0:
/* 80D1CAD0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80D1CAD4  41 82 00 08 */	beq lbl_80D1CADC
/* 80D1CAD8  48 00 01 48 */	b lbl_80D1CC20
lbl_80D1CADC:
/* 80D1CADC  28 1D 00 FF */	cmplwi r29, 0xff
/* 80D1CAE0  41 82 00 24 */	beq lbl_80D1CB04
/* 80D1CAE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1CAE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1CAEC  7F A4 EB 78 */	mr r4, r29
/* 80D1CAF0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D1CAF4  7C 05 07 74 */	extsb r5, r0
/* 80D1CAF8  4B 31 88 68 */	b isSwitch__10dSv_info_cCFii
/* 80D1CAFC  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CB00  40 82 00 0C */	bne lbl_80D1CB0C
lbl_80D1CB04:
/* 80D1CB04  28 1D 00 FF */	cmplwi r29, 0xff
/* 80D1CB08  40 82 00 10 */	bne lbl_80D1CB18
lbl_80D1CB0C:
/* 80D1CB0C  38 00 00 01 */	li r0, 1
/* 80D1CB10  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CB14  48 00 01 0C */	b lbl_80D1CC20
lbl_80D1CB18:
/* 80D1CB18  38 00 00 00 */	li r0, 0
/* 80D1CB1C  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CB20  48 00 01 00 */	b lbl_80D1CC20
lbl_80D1CB24:
/* 80D1CB24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1CB28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1CB2C  7F A4 EB 78 */	mr r4, r29
/* 80D1CB30  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D1CB34  7C 05 07 74 */	extsb r5, r0
/* 80D1CB38  4B 31 88 28 */	b isSwitch__10dSv_info_cCFii
/* 80D1CB3C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CB40  41 82 00 10 */	beq lbl_80D1CB50
/* 80D1CB44  38 00 00 00 */	li r0, 0
/* 80D1CB48  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CB4C  48 00 00 D4 */	b lbl_80D1CC20
lbl_80D1CB50:
/* 80D1CB50  38 00 00 01 */	li r0, 1
/* 80D1CB54  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CB58  48 00 00 C8 */	b lbl_80D1CC20
lbl_80D1CB5C:
/* 80D1CB5C  28 1D 00 FF */	cmplwi r29, 0xff
/* 80D1CB60  41 82 00 40 */	beq lbl_80D1CBA0
/* 80D1CB64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1CB68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1CB6C  7F A4 EB 78 */	mr r4, r29
/* 80D1CB70  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D1CB74  7C 05 07 74 */	extsb r5, r0
/* 80D1CB78  4B 31 87 E8 */	b isSwitch__10dSv_info_cCFii
/* 80D1CB7C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CB80  40 82 00 20 */	bne lbl_80D1CBA0
/* 80D1CB84  38 00 00 00 */	li r0, 0
/* 80D1CB88  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CB8C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1CB90  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80D1CB94  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D1CB98  90 1E 07 70 */	stw r0, 0x770(r30)
/* 80D1CB9C  48 00 00 84 */	b lbl_80D1CC20
lbl_80D1CBA0:
/* 80D1CBA0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80D1CBA4  4B 54 AD B0 */	b cM_rndF__Ff
/* 80D1CBA8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D1CBAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1CBB0  40 81 00 20 */	ble lbl_80D1CBD0
/* 80D1CBB4  38 00 00 01 */	li r0, 1
/* 80D1CBB8  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CBBC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1CBC0  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80D1CBC4  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D1CBC8  90 1E 07 70 */	stw r0, 0x770(r30)
/* 80D1CBCC  48 00 00 54 */	b lbl_80D1CC20
lbl_80D1CBD0:
/* 80D1CBD0  38 00 00 00 */	li r0, 0
/* 80D1CBD4  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CBD8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1CBDC  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80D1CBE0  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D1CBE4  90 1E 07 70 */	stw r0, 0x770(r30)
/* 80D1CBE8  48 00 00 38 */	b lbl_80D1CC20
lbl_80D1CBEC:
/* 80D1CBEC  38 00 00 01 */	li r0, 1
/* 80D1CBF0  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CBF4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1CBF8  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80D1CBFC  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D1CC00  90 1E 07 70 */	stw r0, 0x770(r30)
/* 80D1CC04  48 00 00 1C */	b lbl_80D1CC20
lbl_80D1CC08:
/* 80D1CC08  38 00 00 00 */	li r0, 0
/* 80D1CC0C  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D1CC10  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1CC14  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80D1CC18  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D1CC1C  90 1E 07 70 */	stw r0, 0x770(r30)
lbl_80D1CC20:
/* 80D1CC20  88 1E 07 78 */	lbz r0, 0x778(r30)
/* 80D1CC24  28 00 00 01 */	cmplwi r0, 1
/* 80D1CC28  40 82 00 28 */	bne lbl_80D1CC50
/* 80D1CC2C  C0 3E 07 6C */	lfs f1, 0x76c(r30)
/* 80D1CC30  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D1CC34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1CC38  D0 1E 07 38 */	stfs f0, 0x738(r30)
/* 80D1CC3C  C0 1E 07 38 */	lfs f0, 0x738(r30)
/* 80D1CC40  D0 1E 07 04 */	stfs f0, 0x704(r30)
/* 80D1CC44  7F C3 F3 78 */	mr r3, r30
/* 80D1CC48  48 00 06 31 */	bl startParticle__12daObjTrnd2_cFv
/* 80D1CC4C  48 00 00 10 */	b lbl_80D1CC5C
lbl_80D1CC50:
/* 80D1CC50  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D1CC54  D0 1E 07 38 */	stfs f0, 0x738(r30)
/* 80D1CC58  D0 1E 07 04 */	stfs f0, 0x704(r30)
lbl_80D1CC5C:
/* 80D1CC5C  7F C3 F3 78 */	mr r3, r30
/* 80D1CC60  4B FF F8 79 */	bl setPntWind__12daObjTrnd2_cFv
/* 80D1CC64  38 60 00 01 */	li r3, 1
/* 80D1CC68  39 61 00 30 */	addi r11, r1, 0x30
/* 80D1CC6C  4B 64 55 BC */	b _restgpr_29
/* 80D1CC70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D1CC74  7C 08 03 A6 */	mtlr r0
/* 80D1CC78  38 21 00 30 */	addi r1, r1, 0x30
/* 80D1CC7C  4E 80 00 20 */	blr 
