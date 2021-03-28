lbl_80C1A748:
/* 80C1A748  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C1A74C  7C 08 02 A6 */	mflr r0
/* 80C1A750  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C1A754  39 61 00 90 */	addi r11, r1, 0x90
/* 80C1A758  4B 74 7A 70 */	b _savegpr_24
/* 80C1A75C  7C 7E 1B 78 */	mr r30, r3
/* 80C1A760  3C 60 80 C2 */	lis r3, lit_3665@ha
/* 80C1A764  3B E3 B6 00 */	addi r31, r3, lit_3665@l
/* 80C1A768  3B A0 00 00 */	li r29, 0
/* 80C1A76C  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 80C1A770  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C1A774  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C1A778  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C1A77C  4B 65 4F 8C */	b SetR__8cM3dGSphFf
/* 80C1A780  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 80C1A784  2C 00 00 02 */	cmpwi r0, 2
/* 80C1A788  41 82 01 44 */	beq lbl_80C1A8CC
/* 80C1A78C  40 80 00 14 */	bge lbl_80C1A7A0
/* 80C1A790  2C 00 00 00 */	cmpwi r0, 0
/* 80C1A794  41 82 00 18 */	beq lbl_80C1A7AC
/* 80C1A798  40 80 00 28 */	bge lbl_80C1A7C0
/* 80C1A79C  48 00 01 74 */	b lbl_80C1A910
lbl_80C1A7A0:
/* 80C1A7A0  2C 00 00 04 */	cmpwi r0, 4
/* 80C1A7A4  40 80 01 6C */	bge lbl_80C1A910
/* 80C1A7A8  48 00 01 44 */	b lbl_80C1A8EC
lbl_80C1A7AC:
/* 80C1A7AC  7F C3 F3 78 */	mr r3, r30
/* 80C1A7B0  4B FF F3 29 */	bl obj_hb_set__FP12obj_hb_class
/* 80C1A7B4  38 00 00 03 */	li r0, 3
/* 80C1A7B8  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80C1A7BC  48 00 01 54 */	b lbl_80C1A910
lbl_80C1A7C0:
/* 80C1A7C0  7F C3 F3 78 */	mr r3, r30
/* 80C1A7C4  4B FF F5 E5 */	bl obj_hb_drop__FP12obj_hb_class
/* 80C1A7C8  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C1A7CC  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 80C1A7D0  88 1E 06 B0 */	lbz r0, 0x6b0(r30)
/* 80C1A7D4  7C 00 07 75 */	extsb. r0, r0
/* 80C1A7D8  40 82 00 D8 */	bne lbl_80C1A8B0
/* 80C1A7DC  38 7E 09 0C */	addi r3, r30, 0x90c
/* 80C1A7E0  4B 46 9E 78 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C1A7E4  28 03 00 00 */	cmplwi r3, 0
/* 80C1A7E8  41 82 00 C8 */	beq lbl_80C1A8B0
/* 80C1A7EC  34 7E 08 D0 */	addic. r3, r30, 0x8d0
/* 80C1A7F0  41 82 00 C0 */	beq lbl_80C1A8B0
/* 80C1A7F4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C1A7F8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80C1A7FC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C1A800  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C1A804  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1A808  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C1A80C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C1A810  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C1A814  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C1A818  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1A81C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C1A820  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C1A824  FC 00 02 10 */	fabs f0, f0
/* 80C1A828  FC 00 00 18 */	frsp f0, f0
/* 80C1A82C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80C1A830  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C1A834  4C 41 13 82 */	cror 2, 1, 2
/* 80C1A838  41 82 00 1C */	beq lbl_80C1A854
/* 80C1A83C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C1A840  FC 00 02 10 */	fabs f0, f0
/* 80C1A844  FC 00 00 18 */	frsp f0, f0
/* 80C1A848  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C1A84C  4C 41 13 82 */	cror 2, 1, 2
/* 80C1A850  40 82 00 60 */	bne lbl_80C1A8B0
lbl_80C1A854:
/* 80C1A854  38 7E 06 88 */	addi r3, r30, 0x688
/* 80C1A858  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C1A85C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80C1A860  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C1A864  4B 65 51 D8 */	b cLib_addCalc2__FPffff
/* 80C1A868  7F C3 F3 78 */	mr r3, r30
/* 80C1A86C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C1A870  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C1A874  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C1A878  4B 3F FE 98 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C1A87C  7C 64 1B 78 */	mr r4, r3
/* 80C1A880  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 80C1A884  7C 03 00 50 */	subf r0, r3, r0
/* 80C1A888  7C 00 07 34 */	extsh r0, r0
/* 80C1A88C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80C1A890  41 81 00 0C */	bgt lbl_80C1A89C
/* 80C1A894  2C 00 C0 00 */	cmpwi r0, -16384
/* 80C1A898  40 80 00 08 */	bge lbl_80C1A8A0
lbl_80C1A89C:
/* 80C1A89C  38 84 80 00 */	addi r4, r4, -32768
lbl_80C1A8A0:
/* 80C1A8A0  38 7E 06 78 */	addi r3, r30, 0x678
/* 80C1A8A4  38 A0 00 04 */	li r5, 4
/* 80C1A8A8  38 C0 01 00 */	li r6, 0x100
/* 80C1A8AC  4B 65 5D 5C */	b cLib_addCalcAngleS2__FPssss
lbl_80C1A8B0:
/* 80C1A8B0  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80C1A8B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C1A8B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C1A8BC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C1A8C0  4B 45 C1 EC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C1A8C4  3B A0 00 01 */	li r29, 1
/* 80C1A8C8  48 00 00 48 */	b lbl_80C1A910
lbl_80C1A8CC:
/* 80C1A8CC  7F C3 F3 78 */	mr r3, r30
/* 80C1A8D0  4B FF FB C1 */	bl obj_hb_float__FP12obj_hb_class
/* 80C1A8D4  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80C1A8D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C1A8DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C1A8E0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C1A8E4  4B 45 C1 C8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C1A8E8  48 00 00 28 */	b lbl_80C1A910
lbl_80C1A8EC:
/* 80C1A8EC  7F C3 F3 78 */	mr r3, r30
/* 80C1A8F0  4B FF ED 99 */	bl obj_hb_carry__FP12obj_hb_class
/* 80C1A8F4  38 00 00 03 */	li r0, 3
/* 80C1A8F8  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80C1A8FC  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80C1A900  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C1A904  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C1A908  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C1A90C  4B 45 C1 A0 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_80C1A910:
/* 80C1A910  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 80C1A914  2C 00 00 00 */	cmpwi r0, 0
/* 80C1A918  40 82 01 BC */	bne lbl_80C1AAD4
/* 80C1A91C  38 7E 09 0C */	addi r3, r30, 0x90c
/* 80C1A920  4B 46 9B 40 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C1A924  28 03 00 00 */	cmplwi r3, 0
/* 80C1A928  41 82 01 AC */	beq lbl_80C1AAD4
/* 80C1A92C  38 00 00 04 */	li r0, 4
/* 80C1A930  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80C1A934  38 7E 09 0C */	addi r3, r30, 0x90c
/* 80C1A938  4B 46 9B C0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C1A93C  90 7E 0A 44 */	stw r3, 0xa44(r30)
/* 80C1A940  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C1A944  80 9E 0A 44 */	lwz r4, 0xa44(r30)
/* 80C1A948  38 A0 00 29 */	li r5, 0x29
/* 80C1A94C  38 C0 00 00 */	li r6, 0
/* 80C1A950  4B 46 CB C4 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80C1A954  7F C3 F3 78 */	mr r3, r30
/* 80C1A958  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C1A95C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80C1A960  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80C1A964  4B 3F FD AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C1A968  3C 63 00 01 */	addis r3, r3, 1
/* 80C1A96C  38 03 80 00 */	addi r0, r3, -32768
/* 80C1A970  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80C1A974  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80C1A978  4B 46 D0 E0 */	b at_power_check__FP11dCcU_AtInfo
/* 80C1A97C  7C 7A 1B 78 */	mr r26, r3
/* 80C1A980  38 00 00 00 */	li r0, 0
/* 80C1A984  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 80C1A988  88 1E 0A 64 */	lbz r0, 0xa64(r30)
/* 80C1A98C  28 00 00 01 */	cmplwi r0, 1
/* 80C1A990  40 82 00 C0 */	bne lbl_80C1AA50
/* 80C1A994  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80C1A998  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80C1A99C  28 00 00 08 */	cmplwi r0, 8
/* 80C1A9A0  41 82 00 0C */	beq lbl_80C1A9AC
/* 80C1A9A4  28 00 00 09 */	cmplwi r0, 9
/* 80C1A9A8  40 82 00 7C */	bne lbl_80C1AA24
lbl_80C1A9AC:
/* 80C1A9AC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C1A9B0  4B 64 CF A4 */	b cM_rndF__Ff
/* 80C1A9B4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80C1A9B8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C1A9BC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C1A9C0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C1A9C4  4B 64 CF 90 */	b cM_rndF__Ff
/* 80C1A9C8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C1A9CC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C1A9D0  FC 00 00 1E */	fctiwz f0, f0
/* 80C1A9D4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80C1A9D8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80C1A9DC  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 80C1A9E0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C1A9E4  4B 64 CF 70 */	b cM_rndF__Ff
/* 80C1A9E8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80C1A9EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C1A9F0  FC 00 00 1E */	fctiwz f0, f0
/* 80C1A9F4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C1A9F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C1A9FC  7C 00 07 34 */	extsh r0, r0
/* 80C1AA00  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80C1AA04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C1AA08  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80C1AA0C  3C 00 43 30 */	lis r0, 0x4330
/* 80C1AA10  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C1AA14  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80C1AA18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C1AA1C  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80C1AA20  48 00 00 B4 */	b lbl_80C1AAD4
lbl_80C1AA24:
/* 80C1AA24  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C1AA28  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C1AA2C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80C1AA30  4B 64 CF 5C */	b cM_rndFX__Ff
/* 80C1AA34  FC 00 08 1E */	fctiwz f0, f1
/* 80C1AA38  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80C1AA3C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80C1AA40  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 80C1AA44  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80C1AA48  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80C1AA4C  48 00 00 88 */	b lbl_80C1AAD4
lbl_80C1AA50:
/* 80C1AA50  28 00 00 02 */	cmplwi r0, 2
/* 80C1AA54  40 82 00 28 */	bne lbl_80C1AA7C
/* 80C1AA58  7F C3 F3 78 */	mr r3, r30
/* 80C1AA5C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C1AA60  38 A0 00 07 */	li r5, 7
/* 80C1AA64  38 C0 00 00 */	li r6, 0
/* 80C1AA68  88 FE 05 64 */	lbz r7, 0x564(r30)
/* 80C1AA6C  4B 40 20 6C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80C1AA70  38 00 00 01 */	li r0, 1
/* 80C1AA74  98 1E 06 B1 */	stb r0, 0x6b1(r30)
/* 80C1AA78  48 00 00 5C */	b lbl_80C1AAD4
lbl_80C1AA7C:
/* 80C1AA7C  28 1A 00 00 */	cmplwi r26, 0
/* 80C1AA80  41 82 00 34 */	beq lbl_80C1AAB4
/* 80C1AA84  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80C1AA88  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80C1AA8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C1AA90  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C1AA94  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80C1AA98  4B 64 CE F4 */	b cM_rndFX__Ff
/* 80C1AA9C  FC 00 08 1E */	fctiwz f0, f1
/* 80C1AAA0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80C1AAA4  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 80C1AAA8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80C1AAAC  7C 00 1A 14 */	add r0, r0, r3
/* 80C1AAB0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80C1AAB4:
/* 80C1AAB4  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80C1AAB8  4B 64 CE D4 */	b cM_rndFX__Ff
/* 80C1AABC  FC 00 08 1E */	fctiwz f0, f1
/* 80C1AAC0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80C1AAC4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80C1AAC8  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 80C1AACC  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80C1AAD0  D0 1E 06 88 */	stfs f0, 0x688(r30)
lbl_80C1AAD4:
/* 80C1AAD4  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 80C1AAD8  2C 00 00 02 */	cmpwi r0, 2
/* 80C1AADC  40 82 00 44 */	bne lbl_80C1AB20
/* 80C1AAE0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80C1AAE4  38 80 00 00 */	li r4, 0
/* 80C1AAE8  38 A0 00 08 */	li r5, 8
/* 80C1AAEC  38 C0 01 00 */	li r6, 0x100
/* 80C1AAF0  4B 65 5B 18 */	b cLib_addCalcAngleS2__FPssss
/* 80C1AAF4  38 7E 06 8E */	addi r3, r30, 0x68e
/* 80C1AAF8  38 80 00 00 */	li r4, 0
/* 80C1AAFC  38 A0 00 08 */	li r5, 8
/* 80C1AB00  38 C0 01 00 */	li r6, 0x100
/* 80C1AB04  4B 65 5B 04 */	b cLib_addCalcAngleS2__FPssss
/* 80C1AB08  38 7E 06 90 */	addi r3, r30, 0x690
/* 80C1AB0C  38 80 00 00 */	li r4, 0
/* 80C1AB10  38 A0 00 01 */	li r5, 1
/* 80C1AB14  38 C0 00 96 */	li r6, 0x96
/* 80C1AB18  4B 65 5A F0 */	b cLib_addCalcAngleS2__FPssss
/* 80C1AB1C  48 00 00 80 */	b lbl_80C1AB9C
lbl_80C1AB20:
/* 80C1AB20  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80C1AB24  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 80C1AB28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1AB2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C1AB30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C1AB34  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C1AB38  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 80C1AB3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1AB40  FC 00 00 1E */	fctiwz f0, f0
/* 80C1AB44  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80C1AB48  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80C1AB4C  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 80C1AB50  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80C1AB54  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80C1AB58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1AB5C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C1AB60  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 80C1AB64  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1AB68  FC 00 00 1E */	fctiwz f0, f0
/* 80C1AB6C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C1AB70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C1AB74  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 80C1AB78  38 7E 06 88 */	addi r3, r30, 0x688
/* 80C1AB7C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80C1AB80  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C1AB84  4B 65 4E FC */	b cLib_addCalc0__FPfff
/* 80C1AB88  38 7E 06 90 */	addi r3, r30, 0x690
/* 80C1AB8C  38 80 00 00 */	li r4, 0
/* 80C1AB90  38 A0 00 01 */	li r5, 1
/* 80C1AB94  38 C0 00 32 */	li r6, 0x32
/* 80C1AB98  4B 65 5A 70 */	b cLib_addCalcAngleS2__FPssss
lbl_80C1AB9C:
/* 80C1AB9C  7F A0 07 75 */	extsb. r0, r29
/* 80C1ABA0  41 82 01 98 */	beq lbl_80C1AD38
/* 80C1ABA4  7F C3 F3 78 */	mr r3, r30
/* 80C1ABA8  4B FF EE 85 */	bl water_check__FP12obj_hb_class
/* 80C1ABAC  2C 03 00 00 */	cmpwi r3, 0
/* 80C1ABB0  41 82 01 88 */	beq lbl_80C1AD38
/* 80C1ABB4  38 00 00 02 */	li r0, 2
/* 80C1ABB8  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80C1ABBC  38 00 00 00 */	li r0, 0
/* 80C1ABC0  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 80C1ABC4  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80C1ABC8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C1ABCC  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80C1ABD0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C1ABD4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80C1ABD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1ABDC  40 80 00 40 */	bge lbl_80C1AC1C
/* 80C1ABE0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C1ABE4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C1ABE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1ABEC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C1ABF0  4B 3F 17 EC */	b mDoMtx_YrotS__FPA4_fs
/* 80C1ABF4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1ABF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C1ABFC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80C1AC00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C1AC04  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80C1AC08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C1AC0C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80C1AC10  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80C1AC14  4B 65 62 D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C1AC18  48 00 00 38 */	b lbl_80C1AC50
lbl_80C1AC1C:
/* 80C1AC1C  C0 1E 06 80 */	lfs f0, 0x680(r30)
/* 80C1AC20  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C1AC24  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80C1AC28  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C1AC2C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80C1AC30  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C1AC34  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1AC38  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C1AC3C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80C1AC40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1AC44  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C1AC48  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80C1AC4C  D0 1E 06 94 */	stfs f0, 0x694(r30)
lbl_80C1AC50:
/* 80C1AC50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1AC54  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C1AC58  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C1AC5C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C1AC60  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C1AC64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C1AC68  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C1AC6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C1AC70  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C1AC74  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C1AC78  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C1AC7C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C1AC80  C0 1E 06 80 */	lfs f0, 0x680(r30)
/* 80C1AC84  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C1AC88  3B 00 00 00 */	li r24, 0
/* 80C1AC8C  3B A0 00 00 */	li r29, 0
/* 80C1AC90  3B 80 00 00 */	li r28, 0
/* 80C1AC94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1AC98  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80C1AC9C  3C 60 80 C2 */	lis r3, w_eff_id@ha
/* 80C1ACA0  3B 63 B7 08 */	addi r27, r3, w_eff_id@l
lbl_80C1ACA4:
/* 80C1ACA4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C1ACA8  38 00 00 FF */	li r0, 0xff
/* 80C1ACAC  90 01 00 08 */	stw r0, 8(r1)
/* 80C1ACB0  38 80 00 00 */	li r4, 0
/* 80C1ACB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C1ACB8  38 00 FF FF */	li r0, -1
/* 80C1ACBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C1ACC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1ACC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C1ACC8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C1ACCC  3B 3C 0A 70 */	addi r25, r28, 0xa70
/* 80C1ACD0  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80C1ACD4  38 A0 00 00 */	li r5, 0
/* 80C1ACD8  7C DB EA 2E */	lhzx r6, r27, r29
/* 80C1ACDC  38 E1 00 34 */	addi r7, r1, 0x34
/* 80C1ACE0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C1ACE4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C1ACE8  39 41 00 40 */	addi r10, r1, 0x40
/* 80C1ACEC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C1ACF0  4B 43 27 DC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C1ACF4  7C 7E C9 2E */	stwx r3, r30, r25
/* 80C1ACF8  3B 18 00 01 */	addi r24, r24, 1
/* 80C1ACFC  2C 18 00 04 */	cmpwi r24, 4
/* 80C1AD00  3B BD 00 02 */	addi r29, r29, 2
/* 80C1AD04  3B 9C 00 04 */	addi r28, r28, 4
/* 80C1AD08  41 80 FF 9C */	blt lbl_80C1ACA4
/* 80C1AD0C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80C1AD10  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80C1AD14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1AD18  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C1AD1C  38 81 00 24 */	addi r4, r1, 0x24
/* 80C1AD20  38 A0 00 00 */	li r5, 0
/* 80C1AD24  38 C0 FF FF */	li r6, -1
/* 80C1AD28  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80C1AD2C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C1AD30  7D 89 03 A6 */	mtctr r12
/* 80C1AD34  4E 80 04 21 */	bctrl 
lbl_80C1AD38:
/* 80C1AD38  A8 7E 06 A4 */	lha r3, 0x6a4(r30)
/* 80C1AD3C  2C 03 00 00 */	cmpwi r3, 0
/* 80C1AD40  41 82 00 74 */	beq lbl_80C1ADB4
/* 80C1AD44  38 03 FF FF */	addi r0, r3, -1
/* 80C1AD48  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80C1AD4C  A8 9E 06 A4 */	lha r4, 0x6a4(r30)
/* 80C1AD50  7C 80 07 35 */	extsh. r0, r4
/* 80C1AD54  41 82 00 58 */	beq lbl_80C1ADAC
/* 80C1AD58  1C 04 3A 98 */	mulli r0, r4, 0x3a98
/* 80C1AD5C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1AD60  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C1AD64  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C1AD68  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C1AD6C  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80C1AD70  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C1AD74  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80C1AD78  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80C1AD7C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80C1AD80  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80C1AD84  3C 00 43 30 */	lis r0, 0x4330
/* 80C1AD88  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C1AD8C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80C1AD90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C1AD94  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C1AD98  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C1AD9C  EC 22 00 2A */	fadds f1, f2, f0
/* 80C1ADA0  C0 7F 00 F4 */	lfs f3, 0xf4(r31)
/* 80C1ADA4  4B 65 4C 98 */	b cLib_addCalc2__FPffff
/* 80C1ADA8  48 00 00 0C */	b lbl_80C1ADB4
lbl_80C1ADAC:
/* 80C1ADAC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C1ADB0  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_80C1ADB4:
/* 80C1ADB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1ADB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1ADBC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C1ADC0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C1ADC4  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C1ADC8  4B 72 BB 20 */	b PSMTXTrans
/* 80C1ADCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1ADD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1ADD4  A8 9E 06 78 */	lha r4, 0x678(r30)
/* 80C1ADD8  4B 3F 16 5C */	b mDoMtx_YrotM__FPA4_fs
/* 80C1ADDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1ADE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1ADE4  A8 9E 06 8C */	lha r4, 0x68c(r30)
/* 80C1ADE8  A8 1E 06 76 */	lha r0, 0x676(r30)
/* 80C1ADEC  7C 04 02 14 */	add r0, r4, r0
/* 80C1ADF0  7C 04 07 34 */	extsh r4, r0
/* 80C1ADF4  4B 3F 15 A8 */	b mDoMtx_XrotM__FPA4_fs
/* 80C1ADF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1ADFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1AE00  A8 9E 06 7A */	lha r4, 0x67a(r30)
/* 80C1AE04  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 80C1AE08  7C 04 02 14 */	add r0, r4, r0
/* 80C1AE0C  7C 04 07 34 */	extsh r4, r0
/* 80C1AE10  4B 3F 16 BC */	b mDoMtx_ZrotM__FPA4_fs
/* 80C1AE14  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C1AE18  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C1AE1C  FC 60 08 90 */	fmr f3, f1
/* 80C1AE20  4B 3F 1F 7C */	b transM__14mDoMtx_stack_cFfff
/* 80C1AE24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1AE28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1AE2C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C1AE30  4B 3F 15 6C */	b mDoMtx_XrotM__FPA4_fs
/* 80C1AE34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C1AE38  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80C1AE3C  FC 60 08 90 */	fmr f3, f1
/* 80C1AE40  4B 3F 1F 5C */	b transM__14mDoMtx_stack_cFfff
/* 80C1AE44  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80C1AE48  FC 40 08 90 */	fmr f2, f1
/* 80C1AE4C  FC 60 08 90 */	fmr f3, f1
/* 80C1AE50  4B 3F 1F E8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80C1AE54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1AE58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1AE5C  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80C1AE60  38 84 00 24 */	addi r4, r4, 0x24
/* 80C1AE64  4B 72 B6 4C */	b PSMTXCopy
/* 80C1AE68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C1AE6C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C1AE70  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1AE74  A8 9E 06 7A */	lha r4, 0x67a(r30)
/* 80C1AE78  4B 3F 14 CC */	b mDoMtx_XrotS__FPA4_fs
/* 80C1AE7C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C1AE80  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80C1AE84  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C1AE88  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C1AE8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C1AE90  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C1AE94  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80C1AE98  38 61 00 4C */	addi r3, r1, 0x4c
/* 80C1AE9C  38 81 00 28 */	addi r4, r1, 0x28
/* 80C1AEA0  4B 65 60 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 80C1AEA4  38 61 00 28 */	addi r3, r1, 0x28
/* 80C1AEA8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C1AEAC  7C 65 1B 78 */	mr r5, r3
/* 80C1AEB0  4B 72 C1 E0 */	b PSVECAdd
/* 80C1AEB4  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 80C1AEB8  2C 00 00 00 */	cmpwi r0, 0
/* 80C1AEBC  41 82 00 14 */	beq lbl_80C1AED0
/* 80C1AEC0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C1AEC4  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80C1AEC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1AECC  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80C1AED0:
/* 80C1AED0  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 80C1AED4  38 81 00 28 */	addi r4, r1, 0x28
/* 80C1AED8  4B 65 47 70 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C1AEDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1AEE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1AEE4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C1AEE8  38 9E 09 0C */	addi r4, r30, 0x90c
/* 80C1AEEC  4B 64 9C BC */	b Set__4cCcSFP8cCcD_Obj
/* 80C1AEF0  80 1E 06 A8 */	lwz r0, 0x6a8(r30)
/* 80C1AEF4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C1AEF8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C1AEFC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C1AF00  38 81 00 20 */	addi r4, r1, 0x20
/* 80C1AF04  4B 3F E8 F4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C1AF08  28 03 00 00 */	cmplwi r3, 0
/* 80C1AF0C  41 82 00 24 */	beq lbl_80C1AF30
/* 80C1AF10  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 80C1AF14  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 80C1AF18  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C1AF1C  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80C1AF20  38 80 00 00 */	li r4, 0
/* 80C1AF24  38 A0 00 00 */	li r5, 0
/* 80C1AF28  38 C0 00 00 */	li r6, 0
/* 80C1AF2C  4B 3F 56 9C */	b play__14mDoExt_McaMorfFP3VecUlSc
lbl_80C1AF30:
/* 80C1AF30  A8 7E 06 84 */	lha r3, 0x684(r30)
/* 80C1AF34  7C 60 07 35 */	extsh. r0, r3
/* 80C1AF38  40 82 00 1C */	bne lbl_80C1AF54
/* 80C1AF3C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C1AF40  38 80 00 00 */	li r4, 0
/* 80C1AF44  38 A0 00 04 */	li r5, 4
/* 80C1AF48  38 C0 08 00 */	li r6, 0x800
/* 80C1AF4C  4B 65 56 BC */	b cLib_addCalcAngleS2__FPssss
/* 80C1AF50  48 00 00 18 */	b lbl_80C1AF68
lbl_80C1AF54:
/* 80C1AF54  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80C1AF58  7C 00 1A 14 */	add r0, r0, r3
/* 80C1AF5C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C1AF60  38 00 00 00 */	li r0, 0
/* 80C1AF64  B0 1E 06 84 */	sth r0, 0x684(r30)
lbl_80C1AF68:
/* 80C1AF68  39 61 00 90 */	addi r11, r1, 0x90
/* 80C1AF6C  4B 74 72 A8 */	b _restgpr_24
/* 80C1AF70  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C1AF74  7C 08 03 A6 */	mtlr r0
/* 80C1AF78  38 21 00 90 */	addi r1, r1, 0x90
/* 80C1AF7C  4E 80 00 20 */	blr 
