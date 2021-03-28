lbl_801239B0:
/* 801239B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801239B4  7C 08 02 A6 */	mflr r0
/* 801239B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801239BC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801239C0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801239C4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801239C8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 801239CC  39 61 00 30 */	addi r11, r1, 0x30
/* 801239D0  48 23 E8 09 */	bl _savegpr_28
/* 801239D4  7C 7F 1B 78 */	mr r31, r3
/* 801239D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801239DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801239E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 801239E4  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 801239E8  4B F5 0C 79 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 801239EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801239F0  41 82 01 D8 */	beq lbl_80123BC8
/* 801239F4  C3 E2 92 C4 */	lfs f31, lit_6109(r2)
/* 801239F8  AB DF 04 E6 */	lha r30, 0x4e6(r31)
/* 801239FC  7F E3 FB 78 */	mr r3, r31
/* 80123A00  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 80123A04  7F C5 F3 78 */	mr r5, r30
/* 80123A08  4B F8 C6 91 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 80123A0C  7C 64 1B 78 */	mr r4, r3
/* 80123A10  38 61 00 18 */	addi r3, r1, 0x18
/* 80123A14  7F C5 F3 78 */	mr r5, r30
/* 80123A18  38 C0 00 00 */	li r6, 0
/* 80123A1C  48 14 39 D9 */	bl __ct__5csXyzFsss
/* 80123A20  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80123A24  2C 00 00 03 */	cmpwi r0, 3
/* 80123A28  40 82 00 14 */	bne lbl_80123A3C
/* 80123A2C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000884B@ha */
/* 80123A30  3B A3 88 4B */	addi r29, r3, 0x884B /* 0x0000884B@l */
/* 80123A34  3B 83 88 1B */	addi r28, r3, -30693
/* 80123A38  48 00 01 3C */	b lbl_80123B74
lbl_80123A3C:
/* 80123A3C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80123A40  40 82 00 14 */	bne lbl_80123A54
/* 80123A44  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000884C@ha */
/* 80123A48  3B A3 88 4C */	addi r29, r3, 0x884C /* 0x0000884C@l */
/* 80123A4C  3B 83 88 1D */	addi r28, r3, -30691
/* 80123A50  48 00 01 24 */	b lbl_80123B74
lbl_80123A54:
/* 80123A54  2C 00 00 01 */	cmpwi r0, 1
/* 80123A58  40 82 00 10 */	bne lbl_80123A68
/* 80123A5C  3B A0 02 00 */	li r29, 0x200
/* 80123A60  3B 80 00 E6 */	li r28, 0xe6
/* 80123A64  48 00 01 10 */	b lbl_80123B74
lbl_80123A68:
/* 80123A68  2C 00 00 04 */	cmpwi r0, 4
/* 80123A6C  40 82 00 B4 */	bne lbl_80123B20
/* 80123A70  3B A0 02 00 */	li r29, 0x200
/* 80123A74  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 80123A78  48 08 78 19 */	bl dKy_pol_efftype_get__FPC13cBgS_PolyInfo
/* 80123A7C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80123A80  28 00 00 01 */	cmplwi r0, 1
/* 80123A84  40 82 00 14 */	bne lbl_80123A98
/* 80123A88  3B 80 01 43 */	li r28, 0x143
/* 80123A8C  38 A0 00 E6 */	li r5, 0xe6
/* 80123A90  C3 C2 92 C4 */	lfs f30, lit_6109(r2)
/* 80123A94  48 00 00 14 */	b lbl_80123AA8
lbl_80123A98:
/* 80123A98  3B 80 00 E6 */	li r28, 0xe6
/* 80123A9C  38 A0 01 43 */	li r5, 0x143
/* 80123AA0  C3 C2 94 64 */	lfs f30, lit_14954(r2)
/* 80123AA4  C3 E2 92 C4 */	lfs f31, lit_6109(r2)
lbl_80123AA8:
/* 80123AA8  38 00 00 01 */	li r0, 1
/* 80123AAC  90 01 00 08 */	stw r0, 8(r1)
/* 80123AB0  38 60 00 00 */	li r3, 0
/* 80123AB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80123AB8  38 00 FF FF */	li r0, -1
/* 80123ABC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80123AC0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80123AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80123AC8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80123ACC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80123AD0  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 80123AD4  38 DF 1E 2C */	addi r6, r31, 0x1e2c
/* 80123AD8  38 FF 37 D4 */	addi r7, r31, 0x37d4
/* 80123ADC  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80123AE0  39 21 00 18 */	addi r9, r1, 0x18
/* 80123AE4  39 40 00 00 */	li r10, 0
/* 80123AE8  4B F2 9B BD */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80123AEC  90 7F 32 CC */	stw r3, 0x32cc(r31)
/* 80123AF0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80123AF4  38 63 02 10 */	addi r3, r3, 0x210
/* 80123AF8  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 80123AFC  4B F2 7E 1D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80123B00  28 03 00 00 */	cmplwi r3, 0
/* 80123B04  41 82 00 70 */	beq lbl_80123B74
/* 80123B08  D3 C3 00 38 */	stfs f30, 0x38(r3)
/* 80123B0C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80123B10  38 63 02 10 */	addi r3, r3, 0x210
/* 80123B14  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 80123B18  4B F2 7D 9D */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80123B1C  48 00 00 58 */	b lbl_80123B74
lbl_80123B20:
/* 80123B20  2C 00 00 07 */	cmpwi r0, 7
/* 80123B24  40 82 00 48 */	bne lbl_80123B6C
/* 80123B28  3B A0 00 00 */	li r29, 0
/* 80123B2C  3B 80 01 B1 */	li r28, 0x1b1
/* 80123B30  7F E3 FB 78 */	mr r3, r31
/* 80123B34  38 9F 32 CC */	addi r4, r31, 0x32cc
/* 80123B38  38 A0 01 AF */	li r5, 0x1af
/* 80123B3C  38 DF 1E 2C */	addi r6, r31, 0x1e2c
/* 80123B40  38 FF 37 D4 */	addi r7, r31, 0x37d4
/* 80123B44  39 01 00 18 */	addi r8, r1, 0x18
/* 80123B48  4B FF CA ED */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 80123B4C  7F E3 FB 78 */	mr r3, r31
/* 80123B50  38 9F 31 BC */	addi r4, r31, 0x31bc
/* 80123B54  38 A0 01 B0 */	li r5, 0x1b0
/* 80123B58  38 DF 1E 2C */	addi r6, r31, 0x1e2c
/* 80123B5C  38 FF 37 D4 */	addi r7, r31, 0x37d4
/* 80123B60  39 01 00 18 */	addi r8, r1, 0x18
/* 80123B64  4B FF CA D1 */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 80123B68  48 00 00 0C */	b lbl_80123B74
lbl_80123B6C:
/* 80123B6C  3B A0 00 00 */	li r29, 0
/* 80123B70  3B 80 00 E6 */	li r28, 0xe6
lbl_80123B74:
/* 80123B74  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 80123B78  41 82 00 1C */	beq lbl_80123B94
/* 80123B7C  7F E3 FB 78 */	mr r3, r31
/* 80123B80  38 9F 31 BC */	addi r4, r31, 0x31bc
/* 80123B84  7F A5 EB 78 */	mr r5, r29
/* 80123B88  38 DF 37 D4 */	addi r6, r31, 0x37d4
/* 80123B8C  38 E1 00 18 */	addi r7, r1, 0x18
/* 80123B90  4B FF C9 F1 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
lbl_80123B94:
/* 80123B94  7F E3 FB 78 */	mr r3, r31
/* 80123B98  38 9F 31 C0 */	addi r4, r31, 0x31c0
/* 80123B9C  7F 85 E3 78 */	mr r5, r28
/* 80123BA0  38 DF 1E 2C */	addi r6, r31, 0x1e2c
/* 80123BA4  38 FF 37 D4 */	addi r7, r31, 0x37d4
/* 80123BA8  39 01 00 18 */	addi r8, r1, 0x18
/* 80123BAC  4B FF CA 89 */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 80123BB0  28 03 00 00 */	cmplwi r3, 0
/* 80123BB4  41 82 00 14 */	beq lbl_80123BC8
/* 80123BB8  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80123BBC  2C 00 00 07 */	cmpwi r0, 7
/* 80123BC0  41 82 00 08 */	beq lbl_80123BC8
/* 80123BC4  D3 E3 00 38 */	stfs f31, 0x38(r3)
lbl_80123BC8:
/* 80123BC8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80123BCC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80123BD0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80123BD4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80123BD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80123BDC  48 23 E6 49 */	bl _restgpr_28
/* 80123BE0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80123BE4  7C 08 03 A6 */	mtlr r0
/* 80123BE8  38 21 00 50 */	addi r1, r1, 0x50
/* 80123BEC  4E 80 00 20 */	blr 
