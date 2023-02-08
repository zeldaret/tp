lbl_806048E0:
/* 806048E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806048E4  7C 08 02 A6 */	mflr r0
/* 806048E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 806048EC  39 61 00 50 */	addi r11, r1, 0x50
/* 806048F0  4B D5 D8 E5 */	bl _savegpr_27
/* 806048F4  7C 7E 1B 78 */	mr r30, r3
/* 806048F8  3C 80 80 60 */	lis r4, lit_3646@ha /* 0x806053C8@ha */
/* 806048FC  3B E4 53 C8 */	addi r31, r4, lit_3646@l /* 0x806053C8@l */
/* 80604900  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80604904  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80604908  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8060490C  4B A1 5E 05 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80604910  B0 7E 06 82 */	sth r3, 0x682(r30)
/* 80604914  7F C3 F3 78 */	mr r3, r30
/* 80604918  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8060491C  4B A1 5E C5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80604920  D0 3E 06 84 */	stfs f1, 0x684(r30)
/* 80604924  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80604928  54 00 00 3E */	slwi r0, r0, 0
/* 8060492C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80604930  38 00 00 00 */	li r0, 0
/* 80604934  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80604938  3B 80 00 01 */	li r28, 1
/* 8060493C  3B 60 00 01 */	li r27, 1
/* 80604940  3B A0 00 00 */	li r29, 0
/* 80604944  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 80604948  2C 00 00 02 */	cmpwi r0, 2
/* 8060494C  41 82 00 3C */	beq lbl_80604988
/* 80604950  40 80 00 14 */	bge lbl_80604964
/* 80604954  2C 00 00 00 */	cmpwi r0, 0
/* 80604958  41 82 00 18 */	beq lbl_80604970
/* 8060495C  40 80 00 20 */	bge lbl_8060497C
/* 80604960  48 00 00 4C */	b lbl_806049AC
lbl_80604964:
/* 80604964  2C 00 00 04 */	cmpwi r0, 4
/* 80604968  40 80 00 44 */	bge lbl_806049AC
/* 8060496C  48 00 00 2C */	b lbl_80604998
lbl_80604970:
/* 80604970  7F C3 F3 78 */	mr r3, r30
/* 80604974  4B FF FA AD */	bl wait__FP11b_gos_class
/* 80604978  48 00 00 34 */	b lbl_806049AC
lbl_8060497C:
/* 8060497C  7F C3 F3 78 */	mr r3, r30
/* 80604980  4B FF FB 59 */	bl walk__FP11b_gos_class
/* 80604984  48 00 00 28 */	b lbl_806049AC
lbl_80604988:
/* 80604988  7F C3 F3 78 */	mr r3, r30
/* 8060498C  4B FF FC 59 */	bl ball__FP11b_gos_class
/* 80604990  3B A0 00 01 */	li r29, 1
/* 80604994  48 00 00 18 */	b lbl_806049AC
lbl_80604998:
/* 80604998  7F C3 F3 78 */	mr r3, r30
/* 8060499C  4B FF FD 45 */	bl stick__FP11b_gos_class
/* 806049A0  3B 80 00 00 */	li r28, 0
/* 806049A4  3B 60 00 00 */	li r27, 0
/* 806049A8  3B A0 00 02 */	li r29, 2
lbl_806049AC:
/* 806049AC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 806049B0  41 82 00 38 */	beq lbl_806049E8
/* 806049B4  80 1E 0B 94 */	lwz r0, 0xb94(r30)
/* 806049B8  60 00 00 01 */	ori r0, r0, 1
/* 806049BC  90 1E 0B 94 */	stw r0, 0xb94(r30)
/* 806049C0  34 9E 08 BC */	addic. r4, r30, 0x8bc
/* 806049C4  41 82 00 30 */	beq lbl_806049F4
/* 806049C8  38 61 00 08 */	addi r3, r1, 8
/* 806049CC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806049D0  4B C6 21 B5 */	bl __ml__4cXyzCFf
/* 806049D4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806049D8  38 81 00 08 */	addi r4, r1, 8
/* 806049DC  7C 65 1B 78 */	mr r5, r3
/* 806049E0  4B D4 26 B1 */	bl PSVECAdd
/* 806049E4  48 00 00 10 */	b lbl_806049F4
lbl_806049E8:
/* 806049E8  80 1E 0B 94 */	lwz r0, 0xb94(r30)
/* 806049EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806049F0  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_806049F4:
/* 806049F4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806049F8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806049FC  38 A0 00 02 */	li r5, 2
/* 80604A00  38 C0 20 00 */	li r6, 0x2000
/* 80604A04  4B C6 BC 05 */	bl cLib_addCalcAngleS2__FPssss
/* 80604A08  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80604A0C  28 00 00 01 */	cmplwi r0, 1
/* 80604A10  40 82 00 8C */	bne lbl_80604A9C
/* 80604A14  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80604A18  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80604A1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80604A20  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80604A24  4B A0 79 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80604A28  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80604A2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80604A30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80604A34  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80604A38  3C 60 80 60 */	lis r3, l_HIO@ha /* 0x8060561C@ha */
/* 80604A3C  38 63 56 1C */	addi r3, r3, l_HIO@l /* 0x8060561C@l */
/* 80604A40  C0 03 00 08 */	lfs f0, 8(r3)
/* 80604A44  EC 01 00 32 */	fmuls f0, f1, f0
/* 80604A48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80604A4C  38 61 00 20 */	addi r3, r1, 0x20
/* 80604A50  38 81 00 14 */	addi r4, r1, 0x14
/* 80604A54  4B C6 C4 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80604A58  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80604A5C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80604A60  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80604A64  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80604A68  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80604A6C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80604A70  7C 65 1B 78 */	mr r5, r3
/* 80604A74  4B D4 26 1D */	bl PSVECAdd
/* 80604A78  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80604A7C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80604A80  EC 01 00 2A */	fadds f0, f1, f0
/* 80604A84  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80604A88  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 80604A8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80604A90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80604A94  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80604A98  4B A7 20 15 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80604A9C:
/* 80604A9C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80604AA0  41 82 00 74 */	beq lbl_80604B14
/* 80604AA4  28 00 00 02 */	cmplwi r0, 2
/* 80604AA8  40 82 00 2C */	bne lbl_80604AD4
/* 80604AAC  38 7E 06 98 */	addi r3, r30, 0x698
/* 80604AB0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80604AB4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80604AB8  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80604ABC  4B C6 AF 81 */	bl cLib_addCalc2__FPffff
/* 80604AC0  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80604AC4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80604AC8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80604ACC  FC 60 10 90 */	fmr f3, f2
/* 80604AD0  4B C6 AF 6D */	bl cLib_addCalc2__FPffff
lbl_80604AD4:
/* 80604AD4  3C 60 80 60 */	lis r3, boss@ha /* 0x80605608@ha */
/* 80604AD8  38 63 56 08 */	addi r3, r3, boss@l /* 0x80605608@l */
/* 80604ADC  80 63 00 00 */	lwz r3, 0(r3)
/* 80604AE0  A8 03 06 92 */	lha r0, 0x692(r3)
/* 80604AE4  2C 00 00 01 */	cmpwi r0, 1
/* 80604AE8  40 82 00 7C */	bne lbl_80604B64
/* 80604AEC  38 00 00 00 */	li r0, 0
/* 80604AF0  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80604AF4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80604AF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80604AFC  4B C6 2E 59 */	bl cM_rndF__Ff
/* 80604B00  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80604B04  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80604B08  4B C6 2E 4D */	bl cM_rndF__Ff
/* 80604B0C  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80604B10  48 00 00 54 */	b lbl_80604B64
lbl_80604B14:
/* 80604B14  38 7E 06 98 */	addi r3, r30, 0x698
/* 80604B18  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80604B1C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80604B20  4B C6 AF 61 */	bl cLib_addCalc0__FPfff
/* 80604B24  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80604B28  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80604B2C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80604B30  4B C6 AF 51 */	bl cLib_addCalc0__FPfff
/* 80604B34  3C 60 80 60 */	lis r3, boss@ha /* 0x80605608@ha */
/* 80604B38  38 63 56 08 */	addi r3, r3, boss@l /* 0x80605608@l */
/* 80604B3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80604B40  A8 03 06 92 */	lha r0, 0x692(r3)
/* 80604B44  2C 00 00 02 */	cmpwi r0, 2
/* 80604B48  40 82 00 1C */	bne lbl_80604B64
/* 80604B4C  38 00 00 02 */	li r0, 2
/* 80604B50  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80604B54  38 00 00 00 */	li r0, 0
/* 80604B58  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80604B5C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80604B60  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80604B64:
/* 80604B64  39 61 00 50 */	addi r11, r1, 0x50
/* 80604B68  4B D5 D6 B9 */	bl _restgpr_27
/* 80604B6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80604B70  7C 08 03 A6 */	mtlr r0
/* 80604B74  38 21 00 50 */	addi r1, r1, 0x50
/* 80604B78  4E 80 00 20 */	blr 
