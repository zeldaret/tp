lbl_808267C0:
/* 808267C0  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 808267C4  7C 08 02 A6 */	mflr r0
/* 808267C8  90 01 01 54 */	stw r0, 0x154(r1)
/* 808267CC  39 61 01 50 */	addi r11, r1, 0x150
/* 808267D0  4B B3 BA 05 */	bl _savegpr_27
/* 808267D4  7C 7E 1B 78 */	mr r30, r3
/* 808267D8  3C 60 80 83 */	lis r3, lit_3902@ha /* 0x80828850@ha */
/* 808267DC  3B E3 88 50 */	addi r31, r3, lit_3902@l /* 0x80828850@l */
/* 808267E0  3B A0 00 00 */	li r29, 0
/* 808267E4  3B 80 00 00 */	li r28, 0
/* 808267E8  A8 1E 06 F2 */	lha r0, 0x6f2(r30)
/* 808267EC  2C 00 F0 00 */	cmpwi r0, -4096
/* 808267F0  41 81 02 CC */	bgt lbl_80826ABC
/* 808267F4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 808267F8  4B 85 0D 85 */	bl __ct__11dBgS_GndChkFv
/* 808267FC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80826800  80 63 00 04 */	lwz r3, 4(r3)
/* 80826804  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80826808  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8082680C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80826810  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80826814  80 84 00 00 */	lwz r4, 0(r4)
/* 80826818  4B B1 FC 99 */	bl PSMTXCopy
/* 8082681C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80826820  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80826824  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80826828  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082682C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80826830  38 81 00 38 */	addi r4, r1, 0x38
/* 80826834  4B A4 A6 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80826838  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8082683C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80826840  EC 00 08 2A */	fadds f0, f0, f1
/* 80826844  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80826848  EC 00 08 2A */	fadds f0, f0, f1
/* 8082684C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80826850  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80826854  38 81 00 38 */	addi r4, r1, 0x38
/* 80826858  4B A4 14 D1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8082685C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80826860  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80826864  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80826868  7F 63 DB 78 */	mr r3, r27
/* 8082686C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80826870  4B 84 DC 31 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80826874  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80826878  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 8082687C  FC 20 08 18 */	frsp f1, f1
/* 80826880  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80826884  41 82 01 0C */	beq lbl_80826990
/* 80826888  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8082688C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80826890  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80826894  EC 00 08 2A */	fadds f0, f0, f1
/* 80826898  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082689C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 808268A0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 808268A4  EC 01 00 2A */	fadds f0, f1, f0
/* 808268A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 808268AC  38 61 00 D8 */	addi r3, r1, 0xd8
/* 808268B0  38 81 00 44 */	addi r4, r1, 0x44
/* 808268B4  4B A4 14 59 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 808268B8  7F 63 DB 78 */	mr r3, r27
/* 808268BC  38 81 00 D8 */	addi r4, r1, 0xd8
/* 808268C0  4B 84 DB E1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 808268C4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 808268C8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 808268CC  FC 20 08 18 */	frsp f1, f1
/* 808268D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 808268D4  41 82 00 38 */	beq lbl_8082690C
/* 808268D8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 808268DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 808268E0  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 808268E4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 808268E8  EC 42 00 28 */	fsubs f2, f2, f0
/* 808268EC  4B A4 0D 89 */	bl cM_atan2s__Fff
/* 808268F0  7C 03 00 D0 */	neg r0, r3
/* 808268F4  7C 1C 07 34 */	extsh r28, r0
/* 808268F8  2C 1C 30 00 */	cmpwi r28, 0x3000
/* 808268FC  41 81 00 0C */	bgt lbl_80826908
/* 80826900  2C 1C D0 00 */	cmpwi r28, -12288
/* 80826904  40 80 00 08 */	bge lbl_8082690C
lbl_80826908:
/* 80826908  3B 80 00 00 */	li r28, 0
lbl_8082690C:
/* 8082690C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80826910  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80826914  EC 01 00 2A */	fadds f0, f1, f0
/* 80826918  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8082691C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80826920  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80826924  EC 01 00 2A */	fadds f0, f1, f0
/* 80826928  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082692C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80826930  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80826934  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80826938  38 81 00 44 */	addi r4, r1, 0x44
/* 8082693C  4B A4 13 D1 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80826940  7F 63 DB 78 */	mr r3, r27
/* 80826944  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80826948  4B 84 DB 59 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8082694C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80826950  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80826954  FC 20 08 18 */	frsp f1, f1
/* 80826958  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082695C  41 82 00 34 */	beq lbl_80826990
/* 80826960  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80826964  EC 21 00 28 */	fsubs f1, f1, f0
/* 80826968  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8082696C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80826970  EC 42 00 28 */	fsubs f2, f2, f0
/* 80826974  4B A4 0D 01 */	bl cM_atan2s__Fff
/* 80826978  7C 7D 07 34 */	extsh r29, r3
/* 8082697C  2C 1D 30 00 */	cmpwi r29, 0x3000
/* 80826980  41 81 00 0C */	bgt lbl_8082698C
/* 80826984  2C 1D D0 00 */	cmpwi r29, -12288
/* 80826988  40 80 00 08 */	bge lbl_80826990
lbl_8082698C:
/* 8082698C  3B A0 00 00 */	li r29, 0
lbl_80826990:
/* 80826990  38 61 00 68 */	addi r3, r1, 0x68
/* 80826994  4B 85 12 D5 */	bl __ct__11dBgS_LinChkFv
/* 80826998  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8082699C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808269A0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 808269A4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 808269A8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 808269AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808269B0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 808269B4  EC 01 00 2A */	fadds f0, f1, f0
/* 808269B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808269BC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 808269C0  80 63 00 04 */	lwz r3, 4(r3)
/* 808269C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808269C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 808269CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808269D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 808269D4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808269D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808269DC  38 63 00 F0 */	addi r3, r3, 0xf0
/* 808269E0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 808269E4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 808269E8  80 84 00 00 */	lwz r4, 0(r4)
/* 808269EC  4B B1 FA C5 */	bl PSMTXCopy
/* 808269F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 808269F4  38 81 00 14 */	addi r4, r1, 0x14
/* 808269F8  4B A4 A4 F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 808269FC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80826A00  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80826A04  EC 01 00 2A */	fadds f0, f1, f0
/* 80826A08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80826A0C  38 61 00 68 */	addi r3, r1, 0x68
/* 80826A10  38 81 00 20 */	addi r4, r1, 0x20
/* 80826A14  38 A1 00 14 */	addi r5, r1, 0x14
/* 80826A18  7F C6 F3 78 */	mr r6, r30
/* 80826A1C  4B 85 13 49 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80826A20  7F 63 DB 78 */	mr r3, r27
/* 80826A24  38 81 00 68 */	addi r4, r1, 0x68
/* 80826A28  4B 84 D9 8D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80826A2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80826A30  41 82 00 74 */	beq lbl_80826AA4
/* 80826A34  38 61 00 08 */	addi r3, r1, 8
/* 80826A38  38 81 00 20 */	addi r4, r1, 0x20
/* 80826A3C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80826A40  4B A4 00 F5 */	bl __mi__4cXyzCFRC3Vec
/* 80826A44  C0 21 00 08 */	lfs f1, 8(r1)
/* 80826A48  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80826A4C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80826A50  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80826A54  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80826A58  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80826A5C  4B A4 0C 19 */	bl cM_atan2s__Fff
/* 80826A60  7C 64 1B 78 */	mr r4, r3
/* 80826A64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80826A68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80826A6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80826A70  4B 7E 59 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 80826A74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80826A78  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80826A7C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80826A80  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80826A84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80826A88  38 61 00 2C */	addi r3, r1, 0x2c
/* 80826A8C  38 81 00 50 */	addi r4, r1, 0x50
/* 80826A90  4B A4 A4 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80826A94  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80826A98  38 81 00 50 */	addi r4, r1, 0x50
/* 80826A9C  7C 65 1B 78 */	mr r5, r3
/* 80826AA0  4B B2 05 F1 */	bl PSVECAdd
lbl_80826AA4:
/* 80826AA4  38 61 00 68 */	addi r3, r1, 0x68
/* 80826AA8  38 80 FF FF */	li r4, -1
/* 80826AAC  4B 85 12 31 */	bl __dt__11dBgS_LinChkFv
/* 80826AB0  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80826AB4  38 80 FF FF */	li r4, -1
/* 80826AB8  4B 85 0B 39 */	bl __dt__11dBgS_GndChkFv
lbl_80826ABC:
/* 80826ABC  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80826AC0  7F 84 E3 78 */	mr r4, r28
/* 80826AC4  38 A0 00 01 */	li r5, 1
/* 80826AC8  38 C0 04 00 */	li r6, 0x400
/* 80826ACC  4B A4 9B 3D */	bl cLib_addCalcAngleS2__FPssss
/* 80826AD0  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 80826AD4  7F A4 EB 78 */	mr r4, r29
/* 80826AD8  38 A0 00 01 */	li r5, 1
/* 80826ADC  38 C0 04 00 */	li r6, 0x400
/* 80826AE0  4B A4 9B 29 */	bl cLib_addCalcAngleS2__FPssss
/* 80826AE4  39 61 01 50 */	addi r11, r1, 0x150
/* 80826AE8  4B B3 B7 39 */	bl _restgpr_27
/* 80826AEC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80826AF0  7C 08 03 A6 */	mtlr r0
/* 80826AF4  38 21 01 50 */	addi r1, r1, 0x150
/* 80826AF8  4E 80 00 20 */	blr 
