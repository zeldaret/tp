lbl_8068BAE0:
/* 8068BAE0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8068BAE4  7C 08 02 A6 */	mflr r0
/* 8068BAE8  90 01 01 04 */	stw r0, 0x104(r1)
/* 8068BAEC  39 61 01 00 */	addi r11, r1, 0x100
/* 8068BAF0  4B CD 66 D5 */	bl _savegpr_23
/* 8068BAF4  7C 7C 1B 78 */	mr r28, r3
/* 8068BAF8  3C 80 80 69 */	lis r4, lit_1109@ha /* 0x8068DAE0@ha */
/* 8068BAFC  3B C4 DA E0 */	addi r30, r4, lit_1109@l /* 0x8068DAE0@l */
/* 8068BB00  3C 80 80 69 */	lis r4, lit_3903@ha /* 0x8068D7EC@ha */
/* 8068BB04  3B E4 D7 EC */	addi r31, r4, lit_3903@l /* 0x8068D7EC@l */
/* 8068BB08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068BB0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068BB10  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8068BB14  7F A4 EB 78 */	mr r4, r29
/* 8068BB18  4B 98 EB F9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068BB1C  B0 7C 06 84 */	sth r3, 0x684(r28)
/* 8068BB20  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068BB24  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 8068BB28  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8068BB2C  4B BD B0 09 */	bl __mi__4cXyzCFRC3Vec
/* 8068BB30  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068BB34  4B CB B6 05 */	bl PSVECSquareMag
/* 8068BB38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068BB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068BB40  40 81 00 58 */	ble lbl_8068BB98
/* 8068BB44  FC 00 08 34 */	frsqrte f0, f1
/* 8068BB48  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8068BB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8068BB50  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8068BB54  FC 00 00 32 */	fmul f0, f0, f0
/* 8068BB58  FC 01 00 32 */	fmul f0, f1, f0
/* 8068BB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 8068BB60  FC 02 00 32 */	fmul f0, f2, f0
/* 8068BB64  FC 44 00 32 */	fmul f2, f4, f0
/* 8068BB68  FC 00 00 32 */	fmul f0, f0, f0
/* 8068BB6C  FC 01 00 32 */	fmul f0, f1, f0
/* 8068BB70  FC 03 00 28 */	fsub f0, f3, f0
/* 8068BB74  FC 02 00 32 */	fmul f0, f2, f0
/* 8068BB78  FC 44 00 32 */	fmul f2, f4, f0
/* 8068BB7C  FC 00 00 32 */	fmul f0, f0, f0
/* 8068BB80  FC 01 00 32 */	fmul f0, f1, f0
/* 8068BB84  FC 03 00 28 */	fsub f0, f3, f0
/* 8068BB88  FC 02 00 32 */	fmul f0, f2, f0
/* 8068BB8C  FC 21 00 32 */	fmul f1, f1, f0
/* 8068BB90  FC 20 08 18 */	frsp f1, f1
/* 8068BB94  48 00 00 88 */	b lbl_8068BC1C
lbl_8068BB98:
/* 8068BB98  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8068BB9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068BBA0  40 80 00 10 */	bge lbl_8068BBB0
/* 8068BBA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8068BBA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8068BBAC  48 00 00 70 */	b lbl_8068BC1C
lbl_8068BBB0:
/* 8068BBB0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8068BBB4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8068BBB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8068BBBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8068BBC0  7C 03 00 00 */	cmpw r3, r0
/* 8068BBC4  41 82 00 14 */	beq lbl_8068BBD8
/* 8068BBC8  40 80 00 40 */	bge lbl_8068BC08
/* 8068BBCC  2C 03 00 00 */	cmpwi r3, 0
/* 8068BBD0  41 82 00 20 */	beq lbl_8068BBF0
/* 8068BBD4  48 00 00 34 */	b lbl_8068BC08
lbl_8068BBD8:
/* 8068BBD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068BBDC  41 82 00 0C */	beq lbl_8068BBE8
/* 8068BBE0  38 00 00 01 */	li r0, 1
/* 8068BBE4  48 00 00 28 */	b lbl_8068BC0C
lbl_8068BBE8:
/* 8068BBE8  38 00 00 02 */	li r0, 2
/* 8068BBEC  48 00 00 20 */	b lbl_8068BC0C
lbl_8068BBF0:
/* 8068BBF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068BBF4  41 82 00 0C */	beq lbl_8068BC00
/* 8068BBF8  38 00 00 05 */	li r0, 5
/* 8068BBFC  48 00 00 10 */	b lbl_8068BC0C
lbl_8068BC00:
/* 8068BC00  38 00 00 03 */	li r0, 3
/* 8068BC04  48 00 00 08 */	b lbl_8068BC0C
lbl_8068BC08:
/* 8068BC08  38 00 00 04 */	li r0, 4
lbl_8068BC0C:
/* 8068BC0C  2C 00 00 01 */	cmpwi r0, 1
/* 8068BC10  40 82 00 0C */	bne lbl_8068BC1C
/* 8068BC14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8068BC18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8068BC1C:
/* 8068BC1C  D0 3C 06 88 */	stfs f1, 0x688(r28)
/* 8068BC20  7F 83 E3 78 */	mr r3, r28
/* 8068BC24  4B FF ED 49 */	bl damage_check__FP10e_bi_class
/* 8068BC28  3B 60 00 01 */	li r27, 1
/* 8068BC2C  3B 40 00 00 */	li r26, 0
/* 8068BC30  3B 20 00 00 */	li r25, 0
/* 8068BC34  3B 00 00 01 */	li r24, 1
/* 8068BC38  A8 1C 06 6E */	lha r0, 0x66e(r28)
/* 8068BC3C  28 00 00 07 */	cmplwi r0, 7
/* 8068BC40  41 81 00 7C */	bgt lbl_8068BCBC
/* 8068BC44  3C 60 80 69 */	lis r3, lit_4662@ha /* 0x8068D938@ha */
/* 8068BC48  38 63 D9 38 */	addi r3, r3, lit_4662@l /* 0x8068D938@l */
/* 8068BC4C  54 00 10 3A */	slwi r0, r0, 2
/* 8068BC50  7C 03 00 2E */	lwzx r0, r3, r0
/* 8068BC54  7C 09 03 A6 */	mtctr r0
/* 8068BC58  4E 80 04 20 */	bctr 
lbl_8068BC5C:
/* 8068BC5C  7F 83 E3 78 */	mr r3, r28
/* 8068BC60  4B FF EF 79 */	bl e_bi_wait__FP10e_bi_class
/* 8068BC64  3B 20 00 01 */	li r25, 1
/* 8068BC68  48 00 00 54 */	b lbl_8068BCBC
lbl_8068BC6C:
/* 8068BC6C  7F 83 E3 78 */	mr r3, r28
/* 8068BC70  4B FF F2 61 */	bl e_bi_up__FP10e_bi_class
/* 8068BC74  48 00 00 48 */	b lbl_8068BCBC
lbl_8068BC78:
/* 8068BC78  7F 83 E3 78 */	mr r3, r28
/* 8068BC7C  4B FF F3 ED */	bl e_bi_move__FP10e_bi_class
/* 8068BC80  3B 40 00 01 */	li r26, 1
/* 8068BC84  48 00 00 38 */	b lbl_8068BCBC
lbl_8068BC88:
/* 8068BC88  7F 83 E3 78 */	mr r3, r28
/* 8068BC8C  4B FF F7 9D */	bl e_bi_ex__FP10e_bi_class
/* 8068BC90  3B 40 00 01 */	li r26, 1
/* 8068BC94  3B 20 00 01 */	li r25, 1
/* 8068BC98  48 00 00 24 */	b lbl_8068BCBC
lbl_8068BC9C:
/* 8068BC9C  7F 83 E3 78 */	mr r3, r28
/* 8068BCA0  4B FF FA C5 */	bl e_bi_water__FP10e_bi_class
/* 8068BCA4  3B 60 00 00 */	li r27, 0
/* 8068BCA8  3B 20 00 00 */	li r25, 0
/* 8068BCAC  3B 00 00 00 */	li r24, 0
/* 8068BCB0  48 00 00 0C */	b lbl_8068BCBC
lbl_8068BCB4:
/* 8068BCB4  7F 83 E3 78 */	mr r3, r28
/* 8068BCB8  4B FF FC 81 */	bl e_bi_disap__FP10e_bi_class
lbl_8068BCBC:
/* 8068BCBC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8068BCC0  2C 00 00 03 */	cmpwi r0, 3
/* 8068BCC4  40 82 00 70 */	bne lbl_8068BD34
/* 8068BCC8  38 61 00 68 */	addi r3, r1, 0x68
/* 8068BCCC  4B 9E BF 9D */	bl __ct__11dBgS_LinChkFv
/* 8068BCD0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8068BCD4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8068BCD8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8068BCDC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8068BCE0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8068BCE4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8068BCE8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8068BCEC  EC 01 00 2A */	fadds f0, f1, f0
/* 8068BCF0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8068BCF4  38 61 00 68 */	addi r3, r1, 0x68
/* 8068BCF8  38 81 00 5C */	addi r4, r1, 0x5c
/* 8068BCFC  38 BC 05 38 */	addi r5, r28, 0x538
/* 8068BD00  7F 86 E3 78 */	mr r6, r28
/* 8068BD04  4B 9E C0 61 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8068BD08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068BD0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068BD10  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8068BD14  38 81 00 68 */	addi r4, r1, 0x68
/* 8068BD18  4B 9E 86 9D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8068BD1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8068BD20  41 82 00 08 */	beq lbl_8068BD28
/* 8068BD24  3B 60 00 00 */	li r27, 0
lbl_8068BD28:
/* 8068BD28  38 61 00 68 */	addi r3, r1, 0x68
/* 8068BD2C  38 80 FF FF */	li r4, -1
/* 8068BD30  4B 9E BF AD */	bl __dt__11dBgS_LinChkFv
lbl_8068BD34:
/* 8068BD34  7F 60 07 75 */	extsb. r0, r27
/* 8068BD38  41 82 00 14 */	beq lbl_8068BD4C
/* 8068BD3C  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8068BD40  60 00 00 04 */	ori r0, r0, 4
/* 8068BD44  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8068BD48  48 00 00 18 */	b lbl_8068BD60
lbl_8068BD4C:
/* 8068BD4C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8068BD50  54 00 00 3E */	slwi r0, r0, 0
/* 8068BD54  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 8068BD58  38 00 00 00 */	li r0, 0
/* 8068BD5C  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_8068BD60:
/* 8068BD60  7F 40 07 75 */	extsb. r0, r26
/* 8068BD64  41 82 00 C4 */	beq lbl_8068BE28
/* 8068BD68  34 7C 06 B4 */	addic. r3, r28, 0x6b4
/* 8068BD6C  41 82 00 44 */	beq lbl_8068BDB0
/* 8068BD70  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8068BD74  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8068BD78  C0 03 00 00 */	lfs f0, 0(r3)
/* 8068BD7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8068BD80  EC 01 00 2A */	fadds f0, f1, f0
/* 8068BD84  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8068BD88  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8068BD8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8068BD90  EC 02 00 32 */	fmuls f0, f2, f0
/* 8068BD94  EC 01 00 2A */	fadds f0, f1, f0
/* 8068BD98  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8068BD9C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8068BDA0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8068BDA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8068BDA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8068BDAC  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8068BDB0:
/* 8068BDB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8068BDB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068BDB8  80 63 00 00 */	lwz r3, 0(r3)
/* 8068BDBC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8068BDC0  4B 98 06 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 8068BDC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068BDC8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8068BDCC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8068BDD0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8068BDD4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8068BDD8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8068BDDC  38 81 00 50 */	addi r4, r1, 0x50
/* 8068BDE0  4B BE 51 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8068BDE4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8068BDE8  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 8068BDEC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8068BDF0  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 8068BDF4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8068BDF8  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8068BDFC  7C 65 1B 78 */	mr r5, r3
/* 8068BE00  4B CB B2 91 */	bl PSVECAdd
/* 8068BE04  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8068BE08  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8068BE0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8068BE10  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8068BE14  38 7C 09 CC */	addi r3, r28, 0x9cc
/* 8068BE18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068BE1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068BE20  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8068BE24  4B 9E AC 89 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_8068BE28:
/* 8068BE28  7F 20 07 75 */	extsb. r0, r25
/* 8068BE2C  41 82 00 B0 */	beq lbl_8068BEDC
/* 8068BE30  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8068BE34  60 00 00 10 */	ori r0, r0, 0x10
/* 8068BE38  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8068BE3C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8068BE40  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8068BE44  41 82 00 88 */	beq lbl_8068BECC
/* 8068BE48  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8068BE4C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8068BE50  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8068BE54  38 00 00 00 */	li r0, 0
/* 8068BE58  90 01 00 08 */	stw r0, 8(r1)
/* 8068BE5C  38 60 02 21 */	li r3, 0x221
/* 8068BE60  38 80 00 0B */	li r4, 0xb
/* 8068BE64  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8068BE68  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8068BE6C  7C 06 07 74 */	extsb r6, r0
/* 8068BE70  38 FC 04 DC */	addi r7, r28, 0x4dc
/* 8068BE74  39 00 00 00 */	li r8, 0
/* 8068BE78  39 20 FF FF */	li r9, -1
/* 8068BE7C  39 40 00 00 */	li r10, 0
/* 8068BE80  4B 98 DF 85 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8068BE84  7C 79 1B 79 */	or. r25, r3, r3
/* 8068BE88  41 82 00 44 */	beq lbl_8068BECC
/* 8068BE8C  80 1C 0B A4 */	lwz r0, 0xba4(r28)
/* 8068BE90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068BE94  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8068BE98  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8068BE9C  38 81 00 24 */	addi r4, r1, 0x24
/* 8068BEA0  4B 98 D9 59 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8068BEA4  28 03 00 00 */	cmplwi r3, 0
/* 8068BEA8  41 82 00 1C */	beq lbl_8068BEC4
/* 8068BEAC  28 19 00 00 */	cmplwi r25, 0
/* 8068BEB0  41 82 00 0C */	beq lbl_8068BEBC
/* 8068BEB4  80 19 00 04 */	lwz r0, 4(r25)
/* 8068BEB8  48 00 00 08 */	b lbl_8068BEC0
lbl_8068BEBC:
/* 8068BEBC  38 00 FF FF */	li r0, -1
lbl_8068BEC0:
/* 8068BEC0  90 03 04 A4 */	stw r0, 0x4a4(r3)
lbl_8068BEC4:
/* 8068BEC4  38 00 00 01 */	li r0, 1
/* 8068BEC8  98 1C 06 B0 */	stb r0, 0x6b0(r28)
lbl_8068BECC:
/* 8068BECC  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8068BED0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8068BED4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8068BED8  48 00 00 1C */	b lbl_8068BEF4
lbl_8068BEDC:
/* 8068BEDC  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8068BEE0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8068BEE4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8068BEE8  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8068BEEC  60 00 00 04 */	ori r0, r0, 4
/* 8068BEF0  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_8068BEF4:
/* 8068BEF4  7F 00 07 75 */	extsb. r0, r24
/* 8068BEF8  41 82 01 34 */	beq lbl_8068C02C
/* 8068BEFC  7F 83 E3 78 */	mr r3, r28
/* 8068BF00  4B FF FB 29 */	bl water_check__FP10e_bi_class
/* 8068BF04  2C 03 00 00 */	cmpwi r3, 0
/* 8068BF08  41 82 01 24 */	beq lbl_8068C02C
/* 8068BF0C  38 00 00 06 */	li r0, 6
/* 8068BF10  B0 1C 06 6E */	sth r0, 0x66e(r28)
/* 8068BF14  38 00 00 00 */	li r0, 0
/* 8068BF18  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 8068BF1C  C0 3C 06 AC */	lfs f1, 0x6ac(r28)
/* 8068BF20  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8068BF24  EC 01 00 28 */	fsubs f0, f1, f0
/* 8068BF28  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8068BF2C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8068BF30  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8068BF34  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8068BF38  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068BF3C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8068BF40  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8068BF44  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 8068BF48  7C 00 07 75 */	extsb. r0, r0
/* 8068BF4C  40 82 00 30 */	bne lbl_8068BF7C
/* 8068BF50  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8068BF54  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8068BF58  38 7E 00 78 */	addi r3, r30, 0x78
/* 8068BF5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8068BF60  D0 03 00 08 */	stfs f0, 8(r3)
/* 8068BF64  3C 80 80 69 */	lis r4, __dt__4cXyzFv@ha /* 0x8068D79C@ha */
/* 8068BF68  38 84 D7 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8068D79C@l */
/* 8068BF6C  38 BE 00 68 */	addi r5, r30, 0x68
/* 8068BF70  4B FF E6 09 */	bl __register_global_object
/* 8068BF74  38 00 00 01 */	li r0, 1
/* 8068BF78  98 1E 00 74 */	stb r0, 0x74(r30)
lbl_8068BF7C:
/* 8068BF7C  3A E0 00 00 */	li r23, 0
/* 8068BF80  3B 00 00 00 */	li r24, 0
/* 8068BF84  3B 20 00 00 */	li r25, 0
/* 8068BF88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068BF8C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068BF90  3C 60 80 69 */	lis r3, w_eff_id@ha /* 0x8068D930@ha */
/* 8068BF94  3B 43 D9 30 */	addi r26, r3, w_eff_id@l /* 0x8068D930@l */
lbl_8068BF98:
/* 8068BF98  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8068BF9C  38 00 00 FF */	li r0, 0xff
/* 8068BFA0  90 01 00 08 */	stw r0, 8(r1)
/* 8068BFA4  38 80 00 00 */	li r4, 0
/* 8068BFA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8068BFAC  38 00 FF FF */	li r0, -1
/* 8068BFB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068BFB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8068BFB8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8068BFBC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8068BFC0  3B B9 0B D8 */	addi r29, r25, 0xbd8
/* 8068BFC4  7C 9C E8 2E */	lwzx r4, r28, r29
/* 8068BFC8  38 A0 00 00 */	li r5, 0
/* 8068BFCC  7C DA C2 2E */	lhzx r6, r26, r24
/* 8068BFD0  38 E1 00 44 */	addi r7, r1, 0x44
/* 8068BFD4  39 1C 01 0C */	addi r8, r28, 0x10c
/* 8068BFD8  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 8068BFDC  39 5E 00 78 */	addi r10, r30, 0x78
/* 8068BFE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068BFE4  4B 9C 14 E9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068BFE8  7C 7C E9 2E */	stwx r3, r28, r29
/* 8068BFEC  3A F7 00 01 */	addi r23, r23, 1
/* 8068BFF0  2C 17 00 04 */	cmpwi r23, 4
/* 8068BFF4  3B 18 00 02 */	addi r24, r24, 2
/* 8068BFF8  3B 39 00 04 */	addi r25, r25, 4
/* 8068BFFC  41 80 FF 9C */	blt lbl_8068BF98
/* 8068C000  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8068C004  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8068C008  90 01 00 28 */	stw r0, 0x28(r1)
/* 8068C00C  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8068C010  38 81 00 28 */	addi r4, r1, 0x28
/* 8068C014  38 A0 00 00 */	li r5, 0
/* 8068C018  38 C0 FF FF */	li r6, -1
/* 8068C01C  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8068C020  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068C024  7D 89 03 A6 */	mtctr r12
/* 8068C028  4E 80 04 21 */	bctrl 
lbl_8068C02C:
/* 8068C02C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8068C030  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8068C034  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8068C038  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8068C03C  7F 83 E3 78 */	mr r3, r28
/* 8068C040  38 9C 05 BC */	addi r4, r28, 0x5bc
/* 8068C044  38 BC 05 38 */	addi r5, r28, 0x538
/* 8068C048  38 C1 00 38 */	addi r6, r1, 0x38
/* 8068C04C  48 00 13 3D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8068C050  39 61 01 00 */	addi r11, r1, 0x100
/* 8068C054  4B CD 61 BD */	bl _restgpr_23
/* 8068C058  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8068C05C  7C 08 03 A6 */	mtlr r0
/* 8068C060  38 21 01 00 */	addi r1, r1, 0x100
/* 8068C064  4E 80 00 20 */	blr 
