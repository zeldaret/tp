lbl_8072AB68:
/* 8072AB68  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8072AB6C  7C 08 02 A6 */	mflr r0
/* 8072AB70  90 01 01 04 */	stw r0, 0x104(r1)
/* 8072AB74  39 61 01 00 */	addi r11, r1, 0x100
/* 8072AB78  4B C3 76 41 */	bl _savegpr_20
/* 8072AB7C  7C 7B 1B 78 */	mr r27, r3
/* 8072AB80  3C 80 80 73 */	lis r4, lit_1109@ha /* 0x8072C3E8@ha */
/* 8072AB84  3B A4 C3 E8 */	addi r29, r4, lit_1109@l /* 0x8072C3E8@l */
/* 8072AB88  3C 80 80 73 */	lis r4, lit_3789@ha /* 0x8072C180@ha */
/* 8072AB8C  3B C4 C1 80 */	addi r30, r4, lit_3789@l /* 0x8072C180@l */
/* 8072AB90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072AB94  3A 84 61 C0 */	addi r20, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072AB98  80 94 5D AC */	lwz r4, 0x5dac(r20)
/* 8072AB9C  4B 8E FC 45 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072ABA0  D0 3B 06 9C */	stfs f1, 0x69c(r27)
/* 8072ABA4  7F 63 DB 78 */	mr r3, r27
/* 8072ABA8  80 94 5D AC */	lwz r4, 0x5dac(r20)
/* 8072ABAC  4B 8E FB 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072ABB0  B0 7B 06 A0 */	sth r3, 0x6a0(r27)
/* 8072ABB4  7F 63 DB 78 */	mr r3, r27
/* 8072ABB8  4B FF FC 0D */	bl damage_check__FP10e_nz_class
/* 8072ABBC  3B 40 00 00 */	li r26, 0
/* 8072ABC0  3A 80 00 00 */	li r20, 0
/* 8072ABC4  A8 1B 06 9A */	lha r0, 0x69a(r27)
/* 8072ABC8  2C 00 00 02 */	cmpwi r0, 2
/* 8072ABCC  41 82 00 84 */	beq lbl_8072AC50
/* 8072ABD0  40 80 00 14 */	bge lbl_8072ABE4
/* 8072ABD4  2C 00 00 00 */	cmpwi r0, 0
/* 8072ABD8  41 82 00 1C */	beq lbl_8072ABF4
/* 8072ABDC  40 80 00 30 */	bge lbl_8072AC0C
/* 8072ABE0  48 00 00 70 */	b lbl_8072AC50
lbl_8072ABE4:
/* 8072ABE4  2C 00 00 04 */	cmpwi r0, 4
/* 8072ABE8  41 82 00 18 */	beq lbl_8072AC00
/* 8072ABEC  40 80 00 64 */	bge lbl_8072AC50
/* 8072ABF0  48 00 00 30 */	b lbl_8072AC20
lbl_8072ABF4:
/* 8072ABF4  7F 63 DB 78 */	mr r3, r27
/* 8072ABF8  4B FF F0 2D */	bl e_nz_normal__FP10e_nz_class
/* 8072ABFC  48 00 00 54 */	b lbl_8072AC50
lbl_8072AC00:
/* 8072AC00  7F 63 DB 78 */	mr r3, r27
/* 8072AC04  4B FF FC C9 */	bl e_nz_damage__FP10e_nz_class
/* 8072AC08  48 00 00 48 */	b lbl_8072AC50
lbl_8072AC0C:
/* 8072AC0C  7F 63 DB 78 */	mr r3, r27
/* 8072AC10  4B FF F4 35 */	bl e_nz_attack__FP10e_nz_class
/* 8072AC14  7C 7A 1B 78 */	mr r26, r3
/* 8072AC18  3A 80 00 01 */	li r20, 1
/* 8072AC1C  48 00 00 34 */	b lbl_8072AC50
lbl_8072AC20:
/* 8072AC20  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8072AC24  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8072AC28  80 63 00 00 */	lwz r3, 0(r3)
/* 8072AC2C  28 03 00 00 */	cmplwi r3, 0
/* 8072AC30  41 82 00 10 */	beq lbl_8072AC40
/* 8072AC34  80 03 08 98 */	lwz r0, 0x898(r3)
/* 8072AC38  60 00 00 08 */	ori r0, r0, 8
/* 8072AC3C  90 03 08 98 */	stw r0, 0x898(r3)
lbl_8072AC40:
/* 8072AC40  7F 63 DB 78 */	mr r3, r27
/* 8072AC44  4B FF FA 3D */	bl e_nz_stick__FP10e_nz_class
/* 8072AC48  3B 40 00 03 */	li r26, 3
/* 8072AC4C  3A 80 00 01 */	li r20, 1
lbl_8072AC50:
/* 8072AC50  7E 80 07 75 */	extsb. r0, r20
/* 8072AC54  41 82 00 14 */	beq lbl_8072AC68
/* 8072AC58  38 7B 05 F4 */	addi r3, r27, 0x5f4
/* 8072AC5C  38 80 00 01 */	li r4, 1
/* 8072AC60  4B B9 6F 1D */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 8072AC64  48 00 00 10 */	b lbl_8072AC74
lbl_8072AC68:
/* 8072AC68  38 7B 05 F4 */	addi r3, r27, 0x5f4
/* 8072AC6C  38 80 00 00 */	li r4, 0
/* 8072AC70  4B B9 6F 0D */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_8072AC74:
/* 8072AC74  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8072AC78  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 8072AC7C  38 A0 00 02 */	li r5, 2
/* 8072AC80  38 C0 20 00 */	li r6, 0x2000
/* 8072AC84  4B B4 59 85 */	bl cLib_addCalcAngleS2__FPssss
/* 8072AC88  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 8072AC8C  A8 9B 04 DC */	lha r4, 0x4dc(r27)
/* 8072AC90  38 A0 00 02 */	li r5, 2
/* 8072AC94  38 C0 20 00 */	li r6, 0x2000
/* 8072AC98  4B B4 59 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8072AC9C  38 7B 04 E8 */	addi r3, r27, 0x4e8
/* 8072ACA0  A8 9B 04 E0 */	lha r4, 0x4e0(r27)
/* 8072ACA4  38 A0 00 02 */	li r5, 2
/* 8072ACA8  38 C0 20 00 */	li r6, 0x2000
/* 8072ACAC  4B B4 59 5D */	bl cLib_addCalcAngleS2__FPssss
/* 8072ACB0  7F 40 07 75 */	extsb. r0, r26
/* 8072ACB4  40 82 00 9C */	bne lbl_8072AD50
/* 8072ACB8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072ACBC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072ACC0  80 63 00 00 */	lwz r3, 0(r3)
/* 8072ACC4  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 8072ACC8  4B 8E 17 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 8072ACCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8072ACD0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8072ACD4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8072ACD8  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8072ACDC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8072ACE0  38 61 00 68 */	addi r3, r1, 0x68
/* 8072ACE4  38 81 00 5C */	addi r4, r1, 0x5c
/* 8072ACE8  4B B4 62 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8072ACEC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8072ACF0  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 8072ACF4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8072ACF8  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 8072ACFC  38 61 00 44 */	addi r3, r1, 0x44
/* 8072AD00  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 8072AD04  38 BD 00 4C */	addi r5, r29, 0x4c
/* 8072AD08  C0 25 00 08 */	lfs f1, 8(r5)
/* 8072AD0C  4B B3 BE 79 */	bl __ml__4cXyzCFf
/* 8072AD10  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8072AD14  38 81 00 44 */	addi r4, r1, 0x44
/* 8072AD18  7C 65 1B 78 */	mr r5, r3
/* 8072AD1C  4B C1 C3 75 */	bl PSVECAdd
/* 8072AD20  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 8072AD24  C0 1B 05 30 */	lfs f0, 0x530(r27)
/* 8072AD28  EC 01 00 2A */	fadds f0, f1, f0
/* 8072AD2C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8072AD30  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8072AD34  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 8072AD38  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 8072AD3C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8072AD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072AD44  40 80 00 84 */	bge lbl_8072ADC8
/* 8072AD48  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8072AD4C  48 00 00 7C */	b lbl_8072ADC8
lbl_8072AD50:
/* 8072AD50  7F 40 07 74 */	extsb r0, r26
/* 8072AD54  2C 00 00 01 */	cmpwi r0, 1
/* 8072AD58  40 82 00 70 */	bne lbl_8072ADC8
/* 8072AD5C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072AD60  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072AD64  80 63 00 00 */	lwz r3, 0(r3)
/* 8072AD68  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 8072AD6C  4B 8E 16 71 */	bl mDoMtx_YrotS__FPA4_fs
/* 8072AD70  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072AD74  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072AD78  80 63 00 00 */	lwz r3, 0(r3)
/* 8072AD7C  A8 9B 04 DC */	lha r4, 0x4dc(r27)
/* 8072AD80  4B 8E 16 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 8072AD84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8072AD88  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8072AD8C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8072AD90  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8072AD94  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8072AD98  38 61 00 68 */	addi r3, r1, 0x68
/* 8072AD9C  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 8072ADA0  4B B4 61 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8072ADA4  38 61 00 38 */	addi r3, r1, 0x38
/* 8072ADA8  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 8072ADAC  38 BD 00 4C */	addi r5, r29, 0x4c
/* 8072ADB0  C0 25 00 08 */	lfs f1, 8(r5)
/* 8072ADB4  4B B3 BD D1 */	bl __ml__4cXyzCFf
/* 8072ADB8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8072ADBC  38 81 00 38 */	addi r4, r1, 0x38
/* 8072ADC0  7C 65 1B 78 */	mr r5, r3
/* 8072ADC4  4B C1 C2 CD */	bl PSVECAdd
lbl_8072ADC8:
/* 8072ADC8  38 7B 06 F0 */	addi r3, r27, 0x6f0
/* 8072ADCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072ADD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072ADD4  3A 84 0F 38 */	addi r20, r4, 0xf38
/* 8072ADD8  7E 84 A3 78 */	mr r4, r20
/* 8072ADDC  4B 94 BC D1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8072ADE0  38 61 00 74 */	addi r3, r1, 0x74
/* 8072ADE4  4B 94 C9 CD */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 8072ADE8  38 00 00 00 */	li r0, 0
/* 8072ADEC  98 1B 08 C8 */	stb r0, 0x8c8(r27)
/* 8072ADF0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8072ADF4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8072ADF8  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8072ADFC  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8072AE00  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8072AE04  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8072AE08  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8072AE0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8072AE10  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8072AE14  38 61 00 74 */	addi r3, r1, 0x74
/* 8072AE18  38 81 00 68 */	addi r4, r1, 0x68
/* 8072AE1C  4B B3 CF 0D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8072AE20  7E 83 A3 78 */	mr r3, r20
/* 8072AE24  38 81 00 74 */	addi r4, r1, 0x74
/* 8072AE28  4B 94 96 79 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8072AE2C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8072AE30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8072AE34  4C 40 13 82 */	cror 2, 0, 2
/* 8072AE38  40 82 00 24 */	bne lbl_8072AE5C
/* 8072AE3C  7E 83 A3 78 */	mr r3, r20
/* 8072AE40  38 81 00 74 */	addi r4, r1, 0x74
/* 8072AE44  4B 94 96 5D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8072AE48  D0 3B 04 D4 */	stfs f1, 0x4d4(r27)
/* 8072AE4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8072AE50  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8072AE54  38 00 00 01 */	li r0, 1
/* 8072AE58  98 1B 08 C8 */	stb r0, 0x8c8(r27)
lbl_8072AE5C:
/* 8072AE5C  88 1B 0A 78 */	lbz r0, 0xa78(r27)
/* 8072AE60  7C 00 07 75 */	extsb. r0, r0
/* 8072AE64  41 82 01 EC */	beq lbl_8072B050
/* 8072AE68  C0 3B 06 9C */	lfs f1, 0x69c(r27)
/* 8072AE6C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8072AE70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072AE74  40 80 01 D4 */	bge lbl_8072B048
/* 8072AE78  88 1D 00 7C */	lbz r0, 0x7c(r29)
/* 8072AE7C  7C 00 07 75 */	extsb. r0, r0
/* 8072AE80  40 82 00 30 */	bne lbl_8072AEB0
/* 8072AE84  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8072AE88  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 8072AE8C  38 7D 00 80 */	addi r3, r29, 0x80
/* 8072AE90  D0 03 00 04 */	stfs f0, 4(r3)
/* 8072AE94  D0 03 00 08 */	stfs f0, 8(r3)
/* 8072AE98  3C 80 80 73 */	lis r4, __dt__4cXyzFv@ha /* 0x8072C130@ha */
/* 8072AE9C  38 84 C1 30 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8072C130@l */
/* 8072AEA0  38 BD 00 70 */	addi r5, r29, 0x70
/* 8072AEA4  4B FF EA D5 */	bl __register_global_object
/* 8072AEA8  38 00 00 01 */	li r0, 1
/* 8072AEAC  98 1D 00 7C */	stb r0, 0x7c(r29)
lbl_8072AEB0:
/* 8072AEB0  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 8072AEB4  38 80 00 00 */	li r4, 0
/* 8072AEB8  38 A1 00 30 */	addi r5, r1, 0x30
/* 8072AEBC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8072AEC0  38 E1 00 20 */	addi r7, r1, 0x20
/* 8072AEC4  39 01 00 34 */	addi r8, r1, 0x34
/* 8072AEC8  4B FF FB C9 */	bl getPolyColor__FR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf
/* 8072AECC  2C 03 00 00 */	cmpwi r3, 0
/* 8072AED0  41 82 01 78 */	beq lbl_8072B048
/* 8072AED4  88 1B 08 C8 */	lbz r0, 0x8c8(r27)
/* 8072AED8  7C 00 07 75 */	extsb. r0, r0
/* 8072AEDC  41 82 00 C0 */	beq lbl_8072AF9C
/* 8072AEE0  3B 20 00 00 */	li r25, 0
/* 8072AEE4  3B 00 00 00 */	li r24, 0
/* 8072AEE8  3A E0 00 00 */	li r23, 0
/* 8072AEEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072AEF0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072AEF4  3A 81 00 30 */	addi r20, r1, 0x30
/* 8072AEF8  3A A1 00 2C */	addi r21, r1, 0x2c
/* 8072AEFC  3C 60 80 73 */	lis r3, eff_id_4227@ha /* 0x8072C2DC@ha */
/* 8072AF00  3A C3 C2 DC */	addi r22, r3, eff_id_4227@l /* 0x8072C2DC@l */
lbl_8072AF04:
/* 8072AF04  3B 97 0A 68 */	addi r28, r23, 0xa68
/* 8072AF08  7C 9B E0 2E */	lwzx r4, r27, r28
/* 8072AF0C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8072AF10  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8072AF14  90 01 00 08 */	stw r0, 8(r1)
/* 8072AF18  38 A0 00 00 */	li r5, 0
/* 8072AF1C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8072AF20  38 00 FF FF */	li r0, -1
/* 8072AF24  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072AF28  92 81 00 14 */	stw r20, 0x14(r1)
/* 8072AF2C  92 A1 00 18 */	stw r21, 0x18(r1)
/* 8072AF30  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8072AF34  38 A0 00 00 */	li r5, 0
/* 8072AF38  7C D6 C2 2E */	lhzx r6, r22, r24
/* 8072AF3C  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 8072AF40  39 1B 01 0C */	addi r8, r27, 0x10c
/* 8072AF44  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 8072AF48  39 5D 00 80 */	addi r10, r29, 0x80
/* 8072AF4C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8072AF50  4B 92 25 7D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8072AF54  7C 7B E1 2E */	stwx r3, r27, r28
/* 8072AF58  3B 39 00 01 */	addi r25, r25, 1
/* 8072AF5C  2C 19 00 04 */	cmpwi r25, 4
/* 8072AF60  3B 18 00 02 */	addi r24, r24, 2
/* 8072AF64  3A F7 00 04 */	addi r23, r23, 4
/* 8072AF68  41 80 FF 9C */	blt lbl_8072AF04
/* 8072AF6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C8@ha */
/* 8072AF70  38 03 00 C8 */	addi r0, r3, 0x00C8 /* 0x000700C8@l */
/* 8072AF74  90 01 00 28 */	stw r0, 0x28(r1)
/* 8072AF78  38 7B 05 F4 */	addi r3, r27, 0x5f4
/* 8072AF7C  38 81 00 28 */	addi r4, r1, 0x28
/* 8072AF80  38 A0 00 00 */	li r5, 0
/* 8072AF84  38 C0 FF FF */	li r6, -1
/* 8072AF88  81 9B 05 F4 */	lwz r12, 0x5f4(r27)
/* 8072AF8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072AF90  7D 89 03 A6 */	mtctr r12
/* 8072AF94  4E 80 04 21 */	bctrl 
/* 8072AF98  48 00 00 B0 */	b lbl_8072B048
lbl_8072AF9C:
/* 8072AF9C  80 9B 0A 64 */	lwz r4, 0xa64(r27)
/* 8072AFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072AFA4  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072AFA8  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 8072AFAC  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8072AFB0  90 01 00 08 */	stw r0, 8(r1)
/* 8072AFB4  38 A0 00 00 */	li r5, 0
/* 8072AFB8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8072AFBC  38 00 FF FF */	li r0, -1
/* 8072AFC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072AFC4  38 01 00 30 */	addi r0, r1, 0x30
/* 8072AFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072AFCC  38 01 00 2C */	addi r0, r1, 0x2c
/* 8072AFD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8072AFD4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8072AFD8  38 A0 00 00 */	li r5, 0
/* 8072AFDC  38 C0 00 E6 */	li r6, 0xe6
/* 8072AFE0  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 8072AFE4  39 1B 01 0C */	addi r8, r27, 0x10c
/* 8072AFE8  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 8072AFEC  39 5D 00 80 */	addi r10, r29, 0x80
/* 8072AFF0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8072AFF4  4B 92 24 D9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8072AFF8  90 7B 0A 64 */	stw r3, 0xa64(r27)
/* 8072AFFC  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 8072B000  38 63 02 10 */	addi r3, r3, 0x210
/* 8072B004  80 9B 0A 64 */	lwz r4, 0xa64(r27)
/* 8072B008  4B 92 09 11 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8072B00C  28 03 00 00 */	cmplwi r3, 0
/* 8072B010  41 82 00 38 */	beq lbl_8072B048
/* 8072B014  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8072B018  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8072B01C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C7@ha */
/* 8072B020  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000700C7@l */
/* 8072B024  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072B028  38 7B 05 F4 */	addi r3, r27, 0x5f4
/* 8072B02C  38 81 00 24 */	addi r4, r1, 0x24
/* 8072B030  38 A0 00 00 */	li r5, 0
/* 8072B034  38 C0 FF FF */	li r6, -1
/* 8072B038  81 9B 05 F4 */	lwz r12, 0x5f4(r27)
/* 8072B03C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072B040  7D 89 03 A6 */	mtctr r12
/* 8072B044  4E 80 04 21 */	bctrl 
lbl_8072B048:
/* 8072B048  38 00 00 00 */	li r0, 0
/* 8072B04C  98 1B 0A 78 */	stb r0, 0xa78(r27)
lbl_8072B050:
/* 8072B050  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8072B054  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8072B058  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8072B05C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8072B060  7F 63 DB 78 */	mr r3, r27
/* 8072B064  38 9B 05 F4 */	addi r4, r27, 0x5f4
/* 8072B068  38 BB 05 38 */	addi r5, r27, 0x538
/* 8072B06C  38 C1 00 50 */	addi r6, r1, 0x50
/* 8072B070  48 00 0C AD */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8072B074  38 61 00 74 */	addi r3, r1, 0x74
/* 8072B078  38 80 FF FF */	li r4, -1
/* 8072B07C  4B 94 C7 CD */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8072B080  7F 43 D3 78 */	mr r3, r26
/* 8072B084  39 61 01 00 */	addi r11, r1, 0x100
/* 8072B088  4B C3 71 7D */	bl _restgpr_20
/* 8072B08C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8072B090  7C 08 03 A6 */	mtlr r0
/* 8072B094  38 21 01 00 */	addi r1, r1, 0x100
/* 8072B098  4E 80 00 20 */	blr 
