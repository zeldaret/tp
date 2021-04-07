lbl_80C3AAB4:
/* 80C3AAB4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C3AAB8  7C 08 02 A6 */	mflr r0
/* 80C3AABC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C3AAC0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C3AAC4  4B 72 77 15 */	bl _savegpr_28
/* 80C3AAC8  7C 7F 1B 78 */	mr r31, r3
/* 80C3AACC  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C3C674@ha */
/* 80C3AAD0  3B C4 C6 74 */	addi r30, r4, lit_3775@l /* 0x80C3C674@l */
/* 80C3AAD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3AAD8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3AADC  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80C3AAE0  7F A4 EB 78 */	mr r4, r29
/* 80C3AAE4  4B 3D FE 81 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C3AAE8  88 1F 09 90 */	lbz r0, 0x990(r31)
/* 80C3AAEC  28 00 00 00 */	cmplwi r0, 0
/* 80C3AAF0  41 82 02 C0 */	beq lbl_80C3ADB0
/* 80C3AAF4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C3AAF8  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80C3AAFC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C3AB00  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80C3AB04  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C3AB08  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80C3AB0C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C3AB10  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C3AB14  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C3AB18  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C3AB1C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C3AB20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3AB24  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80C3AB28  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3AB2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3AB30  38 7F 09 84 */	addi r3, r31, 0x984
/* 80C3AB34  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C3AB38  38 BF 04 E6 */	addi r5, r31, 0x4e6
/* 80C3AB3C  38 C0 00 00 */	li r6, 0
/* 80C3AB40  38 E0 1C 00 */	li r7, 0x1c00
/* 80C3AB44  4B 52 3B 11 */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80C3AB48  2C 03 00 00 */	cmpwi r3, 0
/* 80C3AB4C  41 82 00 24 */	beq lbl_80C3AB70
/* 80C3AB50  38 7F 09 84 */	addi r3, r31, 0x984
/* 80C3AB54  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C3AB58  4B 52 3D 25 */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C3AB5C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80C3AB60  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80C3AB64  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3AB68  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C3AB6C  48 00 02 44 */	b lbl_80C3ADB0
lbl_80C3AB70:
/* 80C3AB70  38 61 00 44 */	addi r3, r1, 0x44
/* 80C3AB74  4B 43 D0 F5 */	bl __ct__11dBgS_LinChkFv
/* 80C3AB78  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C3AB7C  4B 43 E2 ED */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3AB80  38 61 00 44 */	addi r3, r1, 0x44
/* 80C3AB84  38 81 00 24 */	addi r4, r1, 0x24
/* 80C3AB88  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C3AB8C  38 C0 00 00 */	li r6, 0
/* 80C3AB90  4B 43 D1 D5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3AB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3AB98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3AB9C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C3ABA0  7F 83 E3 78 */	mr r3, r28
/* 80C3ABA4  38 81 00 44 */	addi r4, r1, 0x44
/* 80C3ABA8  4B 43 98 0D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C3ABAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3ABB0  41 82 01 C0 */	beq lbl_80C3AD70
/* 80C3ABB4  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3ABB8  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3ABBC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C3ABC0  7F 83 E3 78 */	mr r3, r28
/* 80C3ABC4  38 81 00 58 */	addi r4, r1, 0x58
/* 80C3ABC8  38 A1 00 30 */	addi r5, r1, 0x30
/* 80C3ABCC  4B 43 9B 79 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3ABD0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C3ABD4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80C3ABD8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C3ABDC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80C3ABE0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C3ABE4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80C3ABE8  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80C3ABEC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C3ABF0  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80C3ABF4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C3ABF8  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80C3ABFC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C3AC00  38 00 00 00 */	li r0, 0
/* 80C3AC04  98 1F 07 C0 */	stb r0, 0x7c0(r31)
/* 80C3AC08  98 1F 07 C1 */	stb r0, 0x7c1(r31)
/* 80C3AC0C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3AC10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3AC14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C3AC18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C3AC1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C3AC20  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C3AC24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C3AC28  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C3AC2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3AC30  38 61 00 18 */	addi r3, r1, 0x18
/* 80C3AC34  38 81 00 0C */	addi r4, r1, 0xc
/* 80C3AC38  4B 70 C7 65 */	bl PSVECSquareDistance
/* 80C3AC3C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3AC40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3AC44  40 81 00 58 */	ble lbl_80C3AC9C
/* 80C3AC48  FC 00 08 34 */	frsqrte f0, f1
/* 80C3AC4C  C8 9E 00 78 */	lfd f4, 0x78(r30)
/* 80C3AC50  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3AC54  C8 7E 00 80 */	lfd f3, 0x80(r30)
/* 80C3AC58  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3AC5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3AC60  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3AC64  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3AC68  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3AC6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3AC70  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3AC74  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3AC78  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3AC7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3AC80  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3AC84  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3AC88  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3AC8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3AC90  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3AC94  FC 40 10 18 */	frsp f2, f2
/* 80C3AC98  48 00 00 90 */	b lbl_80C3AD28
lbl_80C3AC9C:
/* 80C3AC9C  C8 1E 00 88 */	lfd f0, 0x88(r30)
/* 80C3ACA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3ACA4  40 80 00 10 */	bge lbl_80C3ACB4
/* 80C3ACA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3ACAC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3ACB0  48 00 00 78 */	b lbl_80C3AD28
lbl_80C3ACB4:
/* 80C3ACB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C3ACB8  80 81 00 08 */	lwz r4, 8(r1)
/* 80C3ACBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3ACC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3ACC4  7C 03 00 00 */	cmpw r3, r0
/* 80C3ACC8  41 82 00 14 */	beq lbl_80C3ACDC
/* 80C3ACCC  40 80 00 40 */	bge lbl_80C3AD0C
/* 80C3ACD0  2C 03 00 00 */	cmpwi r3, 0
/* 80C3ACD4  41 82 00 20 */	beq lbl_80C3ACF4
/* 80C3ACD8  48 00 00 34 */	b lbl_80C3AD0C
lbl_80C3ACDC:
/* 80C3ACDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3ACE0  41 82 00 0C */	beq lbl_80C3ACEC
/* 80C3ACE4  38 00 00 01 */	li r0, 1
/* 80C3ACE8  48 00 00 28 */	b lbl_80C3AD10
lbl_80C3ACEC:
/* 80C3ACEC  38 00 00 02 */	li r0, 2
/* 80C3ACF0  48 00 00 20 */	b lbl_80C3AD10
lbl_80C3ACF4:
/* 80C3ACF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3ACF8  41 82 00 0C */	beq lbl_80C3AD04
/* 80C3ACFC  38 00 00 05 */	li r0, 5
/* 80C3AD00  48 00 00 10 */	b lbl_80C3AD10
lbl_80C3AD04:
/* 80C3AD04  38 00 00 03 */	li r0, 3
/* 80C3AD08  48 00 00 08 */	b lbl_80C3AD10
lbl_80C3AD0C:
/* 80C3AD0C  38 00 00 04 */	li r0, 4
lbl_80C3AD10:
/* 80C3AD10  2C 00 00 01 */	cmpwi r0, 1
/* 80C3AD14  40 82 00 10 */	bne lbl_80C3AD24
/* 80C3AD18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3AD1C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3AD20  48 00 00 08 */	b lbl_80C3AD28
lbl_80C3AD24:
/* 80C3AD24  FC 40 08 90 */	fmr f2, f1
lbl_80C3AD28:
/* 80C3AD28  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C3AD2C  4B 62 C9 49 */	bl cM_atan2s__Fff
/* 80C3AD30  7C 03 00 D0 */	neg r0, r3
/* 80C3AD34  B0 1F 07 EE */	sth r0, 0x7ee(r31)
/* 80C3AD38  B0 1F 07 C6 */	sth r0, 0x7c6(r31)
/* 80C3AD3C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80C3AD40  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80C3AD44  4B 62 C9 31 */	bl cM_atan2s__Fff
/* 80C3AD48  B0 7F 07 EA */	sth r3, 0x7ea(r31)
/* 80C3AD4C  B0 7F 07 C2 */	sth r3, 0x7c2(r31)
/* 80C3AD50  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C3AD54  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80C3AD58  4B 62 C9 1D */	bl cM_atan2s__Fff
/* 80C3AD5C  B0 7F 07 F6 */	sth r3, 0x7f6(r31)
/* 80C3AD60  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3AD64  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3AD68  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C3AD6C  48 00 00 30 */	b lbl_80C3AD9C
lbl_80C3AD70:
/* 80C3AD70  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80C3AD74  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C3AD78  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3AD7C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80C3AD80  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C3AD84  38 00 00 03 */	li r0, 3
/* 80C3AD88  98 1F 08 08 */	stb r0, 0x808(r31)
/* 80C3AD8C  38 00 00 01 */	li r0, 1
/* 80C3AD90  98 1F 07 C0 */	stb r0, 0x7c0(r31)
/* 80C3AD94  38 00 00 00 */	li r0, 0
/* 80C3AD98  98 1F 07 C1 */	stb r0, 0x7c1(r31)
lbl_80C3AD9C:
/* 80C3AD9C  38 00 00 00 */	li r0, 0
/* 80C3ADA0  98 1F 09 90 */	stb r0, 0x990(r31)
/* 80C3ADA4  38 61 00 44 */	addi r3, r1, 0x44
/* 80C3ADA8  38 80 FF FF */	li r4, -1
/* 80C3ADAC  4B 43 CF 31 */	bl __dt__11dBgS_LinChkFv
lbl_80C3ADB0:
/* 80C3ADB0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C3ADB4  4B 72 74 71 */	bl _restgpr_28
/* 80C3ADB8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C3ADBC  7C 08 03 A6 */	mtlr r0
/* 80C3ADC0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C3ADC4  4E 80 00 20 */	blr 
