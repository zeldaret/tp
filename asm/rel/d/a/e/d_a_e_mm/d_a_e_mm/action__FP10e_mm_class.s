lbl_807217F4:
/* 807217F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807217F8  7C 08 02 A6 */	mflr r0
/* 807217FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80721800  39 61 00 60 */	addi r11, r1, 0x60
/* 80721804  4B C4 09 D9 */	bl _savegpr_29
/* 80721808  7C 7E 1B 78 */	mr r30, r3
/* 8072180C  3C 80 80 72 */	lis r4, lit_3789@ha /* 0x80722C3C@ha */
/* 80721810  3B E4 2C 3C */	addi r31, r4, lit_3789@l /* 0x80722C3C@l */
/* 80721814  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80721818  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072181C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80721820  4B 8F 8E F1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80721824  B0 7E 06 90 */	sth r3, 0x690(r30)
/* 80721828  7F C3 F3 78 */	mr r3, r30
/* 8072182C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80721830  4B 8F 8F B1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80721834  D0 3E 06 94 */	stfs f1, 0x694(r30)
/* 80721838  88 1E 06 72 */	lbz r0, 0x672(r30)
/* 8072183C  7C 00 07 75 */	extsb. r0, r0
/* 80721840  41 82 00 10 */	beq lbl_80721850
/* 80721844  7F C3 F3 78 */	mr r3, r30
/* 80721848  4B FF E3 DD */	bl damage_checkMetOn__FP10e_mm_class
/* 8072184C  48 00 00 0C */	b lbl_80721858
lbl_80721850:
/* 80721850  7F C3 F3 78 */	mr r3, r30
/* 80721854  4B FF E6 45 */	bl damage_check__FP10e_mm_class
lbl_80721858:
/* 80721858  38 00 00 00 */	li r0, 0
/* 8072185C  98 1E 0B 98 */	stb r0, 0xb98(r30)
/* 80721860  3B A0 00 00 */	li r29, 0
/* 80721864  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 80721868  28 00 00 0A */	cmplwi r0, 0xa
/* 8072186C  41 81 00 64 */	bgt lbl_807218D0
/* 80721870  3C 60 80 72 */	lis r3, lit_4621@ha /* 0x80722D40@ha */
/* 80721874  38 63 2D 40 */	addi r3, r3, lit_4621@l /* 0x80722D40@l */
/* 80721878  54 00 10 3A */	slwi r0, r0, 2
/* 8072187C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80721880  7C 09 03 A6 */	mtctr r0
/* 80721884  4E 80 04 20 */	bctr 
lbl_80721888:
/* 80721888  7F C3 F3 78 */	mr r3, r30
/* 8072188C  4B FF EE 71 */	bl e_mm_normal__FP10e_mm_class
/* 80721890  48 00 00 40 */	b lbl_807218D0
lbl_80721894:
/* 80721894  7F C3 F3 78 */	mr r3, r30
/* 80721898  4B FF F2 B9 */	bl e_mm_dash__FP10e_mm_class
/* 8072189C  3B A0 00 01 */	li r29, 1
/* 807218A0  48 00 00 30 */	b lbl_807218D0
lbl_807218A4:
/* 807218A4  7F C3 F3 78 */	mr r3, r30
/* 807218A8  4B FF F9 25 */	bl e_mm_defence__FP10e_mm_class
/* 807218AC  48 00 00 24 */	b lbl_807218D0
lbl_807218B0:
/* 807218B0  7F C3 F3 78 */	mr r3, r30
/* 807218B4  4B FF FA 15 */	bl e_mm_magne_wait__FP10e_mm_class
/* 807218B8  48 00 00 18 */	b lbl_807218D0
lbl_807218BC:
/* 807218BC  7F C3 F3 78 */	mr r3, r30
/* 807218C0  4B FF FA FD */	bl e_mm_turn__FP10e_mm_class
/* 807218C4  48 00 00 0C */	b lbl_807218D0
lbl_807218C8:
/* 807218C8  7F C3 F3 78 */	mr r3, r30
/* 807218CC  4B FF FC 6D */	bl e_mm_damage__FP10e_mm_class
lbl_807218D0:
/* 807218D0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807218D4  30 1D FF FF */	addic r0, r29, -1
/* 807218D8  7C 00 E9 10 */	subfe r0, r0, r29
/* 807218DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 807218E0  4B BA 02 9D */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807218E4  34 7E 08 C8 */	addic. r3, r30, 0x8c8
/* 807218E8  41 82 00 34 */	beq lbl_8072191C
/* 807218EC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807218F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 807218F4  EC 01 00 2A */	fadds f0, f1, f0
/* 807218F8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 807218FC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80721900  C0 03 00 04 */	lfs f0, 4(r3)
/* 80721904  EC 01 00 2A */	fadds f0, f1, f0
/* 80721908  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8072190C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80721910  C0 03 00 08 */	lfs f0, 8(r3)
/* 80721914  EC 01 00 2A */	fadds f0, f1, f0
/* 80721918  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8072191C:
/* 8072191C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80721920  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80721924  80 63 00 00 */	lwz r3, 0(r3)
/* 80721928  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8072192C  4B 8E AA B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80721930  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80721934  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80721938  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8072193C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80721940  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80721944  EC 01 00 32 */	fmuls f0, f1, f0
/* 80721948  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8072194C  38 61 00 38 */	addi r3, r1, 0x38
/* 80721950  38 81 00 2C */	addi r4, r1, 0x2c
/* 80721954  4B B4 F5 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80721958  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8072195C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80721960  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80721964  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80721968  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8072196C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80721970  EC 01 00 28 */	fsubs f0, f1, f0
/* 80721974  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80721978  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8072197C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80721980  7C 65 1B 78 */	mr r5, r3
/* 80721984  4B C2 57 0D */	bl PSVECAdd
/* 80721988  C0 3E 06 A8 */	lfs f1, 0x6a8(r30)
/* 8072198C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80721990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80721994  40 81 00 58 */	ble lbl_807219EC
/* 80721998  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072199C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807219A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807219A4  FC 00 08 50 */	fneg f0, f1
/* 807219A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807219AC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807219B0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807219B4  80 63 00 00 */	lwz r3, 0(r3)
/* 807219B8  A8 9E 06 AC */	lha r4, 0x6ac(r30)
/* 807219BC  4B 8E AA 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 807219C0  38 61 00 38 */	addi r3, r1, 0x38
/* 807219C4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807219C8  4B B4 F5 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807219CC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807219D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 807219D4  7C 65 1B 78 */	mr r5, r3
/* 807219D8  4B C2 56 B9 */	bl PSVECAdd
/* 807219DC  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 807219E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807219E4  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807219E8  4B B4 E0 99 */	bl cLib_addCalc0__FPfff
lbl_807219EC:
/* 807219EC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807219F0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 807219F4  38 A0 00 04 */	li r5, 4
/* 807219F8  38 C0 10 00 */	li r6, 0x1000
/* 807219FC  4B B4 EC 0D */	bl cLib_addCalcAngleS2__FPssss
/* 80721A00  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80721A04  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80721A08  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 80721A0C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80721A10  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80721A14  4B 95 45 45 */	bl SetWall__12dBgS_AcchCirFff
/* 80721A18  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80721A1C  38 9E 06 74 */	addi r4, r30, 0x674
/* 80721A20  7C 65 1B 78 */	mr r5, r3
/* 80721A24  4B C2 56 6D */	bl PSVECAdd
/* 80721A28  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 80721A2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80721A30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80721A34  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80721A38  4B 95 50 75 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80721A3C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80721A40  2C 00 00 01 */	cmpwi r0, 1
/* 80721A44  40 81 02 E8 */	ble lbl_80721D2C
/* 80721A48  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80721A4C  C0 1E 07 88 */	lfs f0, 0x788(r30)
/* 80721A50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80721A54  40 82 01 0C */	bne lbl_80721B60
/* 80721A58  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80721A5C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80721A60  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80721A64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80721A68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80721A6C  40 80 01 9C */	bge lbl_80721C08
/* 80721A70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EB@ha */
/* 80721A74  38 03 02 EB */	addi r0, r3, 0x02EB /* 0x000702EB@l */
/* 80721A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80721A7C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721A80  38 81 00 24 */	addi r4, r1, 0x24
/* 80721A84  38 A0 00 00 */	li r5, 0
/* 80721A88  38 C0 FF FF */	li r6, -1
/* 80721A8C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721A90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80721A94  7D 89 03 A6 */	mtctr r12
/* 80721A98  4E 80 04 21 */	bctrl 
/* 80721A9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E6@ha */
/* 80721AA0  38 03 02 E6 */	addi r0, r3, 0x02E6 /* 0x000702E6@l */
/* 80721AA4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80721AA8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721AAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80721AB0  38 A0 FF FF */	li r5, -1
/* 80721AB4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721AB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80721ABC  7D 89 03 A6 */	mtctr r12
/* 80721AC0  4E 80 04 21 */	bctrl 
/* 80721AC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80721AC8  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80721ACC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80721AD0  38 00 00 00 */	li r0, 0
/* 80721AD4  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80721AD8  88 1E 06 72 */	lbz r0, 0x672(r30)
/* 80721ADC  7C 00 07 75 */	extsb. r0, r0
/* 80721AE0  41 82 00 28 */	beq lbl_80721B08
/* 80721AE4  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 80721AE8  38 81 00 28 */	addi r4, r1, 0x28
/* 80721AEC  4B 8F 7E D1 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80721AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80721AF4  41 82 00 14 */	beq lbl_80721B08
/* 80721AF8  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80721AFC  28 03 00 00 */	cmplwi r3, 0
/* 80721B00  41 82 00 08 */	beq lbl_80721B08
/* 80721B04  4B 8F 81 79 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80721B08:
/* 80721B08  7F C3 F3 78 */	mr r3, r30
/* 80721B0C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80721B10  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80721B14  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80721B18  EC 01 00 32 */	fmuls f0, f1, f0
/* 80721B1C  FC 00 00 1E */	fctiwz f0, f0
/* 80721B20  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80721B24  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 80721B28  38 C0 00 00 */	li r6, 0
/* 80721B2C  38 E0 00 FF */	li r7, 0xff
/* 80721B30  4B 8F AF A9 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80721B34  88 9E 05 B6 */	lbz r4, 0x5b6(r30)
/* 80721B38  28 04 00 FF */	cmplwi r4, 0xff
/* 80721B3C  41 82 00 18 */	beq lbl_80721B54
/* 80721B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80721B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80721B48  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80721B4C  7C 05 07 74 */	extsb r5, r0
/* 80721B50  4B 91 36 B1 */	bl onSwitch__10dSv_info_cFii
lbl_80721B54:
/* 80721B54  7F C3 F3 78 */	mr r3, r30
/* 80721B58  4B 8F 81 25 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80721B5C  48 00 00 AC */	b lbl_80721C08
lbl_80721B60:
/* 80721B60  80 1E 07 1C */	lwz r0, 0x71c(r30)
/* 80721B64  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80721B68  41 82 00 A0 */	beq lbl_80721C08
/* 80721B6C  C0 3E 08 BC */	lfs f1, 0x8bc(r30)
/* 80721B70  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80721B74  EC 21 00 28 */	fsubs f1, f1, f0
/* 80721B78  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80721B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80721B80  40 81 00 88 */	ble lbl_80721C08
/* 80721B84  38 00 00 0A */	li r0, 0xa
/* 80721B88  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80721B8C  38 00 00 00 */	li r0, 0
/* 80721B90  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80721B94  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EC@ha */
/* 80721B98  38 03 02 EC */	addi r0, r3, 0x02EC /* 0x000702EC@l */
/* 80721B9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80721BA0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721BA4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80721BA8  38 A0 00 00 */	li r5, 0
/* 80721BAC  38 C0 FF FF */	li r6, -1
/* 80721BB0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721BB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80721BB8  7D 89 03 A6 */	mtctr r12
/* 80721BBC  4E 80 04 21 */	bctrl 
/* 80721BC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E6@ha */
/* 80721BC4  38 03 02 E6 */	addi r0, r3, 0x02E6 /* 0x000702E6@l */
/* 80721BC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80721BCC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721BD0  38 81 00 18 */	addi r4, r1, 0x18
/* 80721BD4  38 A0 FF FF */	li r5, -1
/* 80721BD8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721BDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80721BE0  7D 89 03 A6 */	mtctr r12
/* 80721BE4  4E 80 04 21 */	bctrl 
/* 80721BE8  7F C3 F3 78 */	mr r3, r30
/* 80721BEC  4B FF E7 05 */	bl mGround_WaterEffSet__FP10e_mm_class
/* 80721BF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80721BF4  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80721BF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80721BFC  38 00 00 00 */	li r0, 0
/* 80721C00  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80721C04  48 00 01 28 */	b lbl_80721D2C
lbl_80721C08:
/* 80721C08  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 80721C0C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80721C10  41 82 01 1C */	beq lbl_80721D2C
/* 80721C14  C0 5E 06 98 */	lfs f2, 0x698(r30)
/* 80721C18  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80721C1C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80721C20  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80721C24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80721C28  40 81 00 80 */	ble lbl_80721CA8
/* 80721C2C  38 00 00 0A */	li r0, 0xa
/* 80721C30  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80721C34  38 00 00 00 */	li r0, 0
/* 80721C38  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80721C3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EB@ha */
/* 80721C40  38 03 02 EB */	addi r0, r3, 0x02EB /* 0x000702EB@l */
/* 80721C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80721C48  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721C4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80721C50  38 A0 00 00 */	li r5, 0
/* 80721C54  38 C0 FF FF */	li r6, -1
/* 80721C58  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721C5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80721C60  7D 89 03 A6 */	mtctr r12
/* 80721C64  4E 80 04 21 */	bctrl 
/* 80721C68  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E6@ha */
/* 80721C6C  38 03 02 E6 */	addi r0, r3, 0x02E6 /* 0x000702E6@l */
/* 80721C70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80721C74  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721C78  38 81 00 10 */	addi r4, r1, 0x10
/* 80721C7C  38 A0 FF FF */	li r5, -1
/* 80721C80  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721C84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80721C88  7D 89 03 A6 */	mtctr r12
/* 80721C8C  4E 80 04 21 */	bctrl 
/* 80721C90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80721C94  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80721C98  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80721C9C  38 00 00 00 */	li r0, 0
/* 80721CA0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80721CA4  48 00 00 80 */	b lbl_80721D24
lbl_80721CA8:
/* 80721CA8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80721CAC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80721CB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80721CB4  40 81 00 70 */	ble lbl_80721D24
/* 80721CB8  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 80721CBC  40 82 00 34 */	bne lbl_80721CF0
/* 80721CC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EB@ha */
/* 80721CC4  38 03 02 EB */	addi r0, r3, 0x02EB /* 0x000702EB@l */
/* 80721CC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80721CCC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721CD0  38 81 00 0C */	addi r4, r1, 0xc
/* 80721CD4  38 A0 00 00 */	li r5, 0
/* 80721CD8  38 C0 FF FF */	li r6, -1
/* 80721CDC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721CE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80721CE4  7D 89 03 A6 */	mtctr r12
/* 80721CE8  4E 80 04 21 */	bctrl 
/* 80721CEC  48 00 00 30 */	b lbl_80721D1C
lbl_80721CF0:
/* 80721CF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EC@ha */
/* 80721CF4  38 03 02 EC */	addi r0, r3, 0x02EC /* 0x000702EC@l */
/* 80721CF8  90 01 00 08 */	stw r0, 8(r1)
/* 80721CFC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80721D00  38 81 00 08 */	addi r4, r1, 8
/* 80721D04  38 A0 00 00 */	li r5, 0
/* 80721D08  38 C0 FF FF */	li r6, -1
/* 80721D0C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80721D10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80721D14  7D 89 03 A6 */	mtctr r12
/* 80721D18  4E 80 04 21 */	bctrl 
lbl_80721D1C:
/* 80721D1C  7F C3 F3 78 */	mr r3, r30
/* 80721D20  4B FF E5 D1 */	bl mGround_WaterEffSet__FP10e_mm_class
lbl_80721D24:
/* 80721D24  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80721D28  D0 1E 06 98 */	stfs f0, 0x698(r30)
lbl_80721D2C:
/* 80721D2C  39 61 00 60 */	addi r11, r1, 0x60
/* 80721D30  4B C4 04 F9 */	bl _restgpr_29
/* 80721D34  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80721D38  7C 08 03 A6 */	mtlr r0
/* 80721D3C  38 21 00 60 */	addi r1, r1, 0x60
/* 80721D40  4E 80 00 20 */	blr 
