lbl_8061285C:
/* 8061285C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80612860  7C 08 02 A6 */	mflr r0
/* 80612864  90 01 00 64 */	stw r0, 0x64(r1)
/* 80612868  39 61 00 60 */	addi r11, r1, 0x60
/* 8061286C  4B D4 F9 61 */	bl _savegpr_25
/* 80612870  7C 7D 1B 78 */	mr r29, r3
/* 80612874  3C 80 80 62 */	lis r4, lit_3772@ha /* 0x8061AD84@ha */
/* 80612878  3B E4 AD 84 */	addi r31, r4, lit_3772@l /* 0x8061AD84@l */
/* 8061287C  80 83 47 38 */	lwz r4, 0x4738(r3)
/* 80612880  2C 04 00 00 */	cmpwi r4, 0
/* 80612884  41 82 00 1C */	beq lbl_806128A0
/* 80612888  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8061288C  88 BD 47 3C */	lbz r5, 0x473c(r29)
/* 80612890  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80612894  4B FF DD 29 */	bl anm_init__FP10b_ob_classifUcf
/* 80612898  38 00 00 00 */	li r0, 0
/* 8061289C  90 1D 47 38 */	stw r0, 0x4738(r29)
lbl_806128A0:
/* 806128A0  3B 80 00 01 */	li r28, 1
/* 806128A4  3B 60 00 01 */	li r27, 1
/* 806128A8  3B 40 00 00 */	li r26, 0
/* 806128AC  3B 20 00 00 */	li r25, 0
/* 806128B0  3B C0 00 01 */	li r30, 1
/* 806128B4  A8 1D 47 52 */	lha r0, 0x4752(r29)
/* 806128B8  2C 00 00 03 */	cmpwi r0, 3
/* 806128BC  41 82 00 60 */	beq lbl_8061291C
/* 806128C0  40 80 00 1C */	bge lbl_806128DC
/* 806128C4  2C 00 00 01 */	cmpwi r0, 1
/* 806128C8  41 82 00 34 */	beq lbl_806128FC
/* 806128CC  40 80 00 40 */	bge lbl_8061290C
/* 806128D0  2C 00 00 00 */	cmpwi r0, 0
/* 806128D4  40 80 00 18 */	bge lbl_806128EC
/* 806128D8  48 00 00 80 */	b lbl_80612958
lbl_806128DC:
/* 806128DC  2C 00 00 05 */	cmpwi r0, 5
/* 806128E0  41 82 00 64 */	beq lbl_80612944
/* 806128E4  40 80 00 74 */	bge lbl_80612958
/* 806128E8  48 00 00 48 */	b lbl_80612930
lbl_806128EC:
/* 806128EC  7F A3 EB 78 */	mr r3, r29
/* 806128F0  4B FF EB 55 */	bl core_start__FP10b_ob_class
/* 806128F4  3B 60 00 00 */	li r27, 0
/* 806128F8  48 00 00 60 */	b lbl_80612958
lbl_806128FC:
/* 806128FC  7F A3 EB 78 */	mr r3, r29
/* 80612900  4B FF EF 25 */	bl core_hand_move__FP10b_ob_class
/* 80612904  3B 20 00 01 */	li r25, 1
/* 80612908  48 00 00 50 */	b lbl_80612958
lbl_8061290C:
/* 8061290C  7F A3 EB 78 */	mr r3, r29
/* 80612910  4B FF F4 01 */	bl bombfishset__FP10b_ob_class
/* 80612914  3B C0 00 00 */	li r30, 0
/* 80612918  48 00 00 40 */	b lbl_80612958
lbl_8061291C:
/* 8061291C  7F A3 EB 78 */	mr r3, r29
/* 80612920  4B FF F6 15 */	bl core_hook__FP10b_ob_class
/* 80612924  3B 60 00 00 */	li r27, 0
/* 80612928  3B C0 00 00 */	li r30, 0
/* 8061292C  48 00 00 2C */	b lbl_80612958
lbl_80612930:
/* 80612930  7F A3 EB 78 */	mr r3, r29
/* 80612934  4B FF F6 79 */	bl core_chance__FP10b_ob_class
/* 80612938  7C 7A 1B 78 */	mr r26, r3
/* 8061293C  3B 60 00 00 */	li r27, 0
/* 80612940  48 00 00 18 */	b lbl_80612958
lbl_80612944:
/* 80612944  7F A3 EB 78 */	mr r3, r29
/* 80612948  4B FF FB 3D */	bl core_end__FP10b_ob_class
/* 8061294C  3B 40 00 00 */	li r26, 0
/* 80612950  3B 60 00 00 */	li r27, 0
/* 80612954  3B 80 00 00 */	li r28, 0
lbl_80612958:
/* 80612958  2C 19 00 00 */	cmpwi r25, 0
/* 8061295C  41 82 00 88 */	beq lbl_806129E4
/* 80612960  A8 1D 5C 80 */	lha r0, 0x5c80(r29)
/* 80612964  2C 00 00 00 */	cmpwi r0, 0
/* 80612968  40 82 00 7C */	bne lbl_806129E4
/* 8061296C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80612970  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80612974  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80612978  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8061297C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80612980  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 80612984  4B C5 41 B1 */	bl __mi__4cXyzCFRC3Vec
/* 80612988  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8061298C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80612990  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80612994  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80612998  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8061299C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806129A0  EC 21 00 72 */	fmuls f1, f1, f1
/* 806129A4  EC 00 00 32 */	fmuls f0, f0, f0
/* 806129A8  EC 21 00 2A */	fadds f1, f1, f0
/* 806129AC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806129B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806129B4  40 81 00 0C */	ble lbl_806129C0
/* 806129B8  FC 00 08 34 */	frsqrte f0, f1
/* 806129BC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_806129C0:
/* 806129C0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806129C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806129C8  40 80 00 1C */	bge lbl_806129E4
/* 806129CC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 806129D0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806129D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806129D8  40 80 00 0C */	bge lbl_806129E4
/* 806129DC  38 00 00 32 */	li r0, 0x32
/* 806129E0  B0 1D 5C 80 */	sth r0, 0x5c80(r29)
lbl_806129E4:
/* 806129E4  2C 1C 00 00 */	cmpwi r28, 0
/* 806129E8  41 82 00 34 */	beq lbl_80612A1C
/* 806129EC  C0 3D 47 9C */	lfs f1, 0x479c(r29)
/* 806129F0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806129F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806129F8  40 81 00 24 */	ble lbl_80612A1C
/* 806129FC  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80612A00  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80612A04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80612A08  4C 41 13 82 */	cror 2, 1, 2
/* 80612A0C  40 82 00 10 */	bne lbl_80612A1C
/* 80612A10  38 00 00 04 */	li r0, 4
/* 80612A14  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80612A18  48 00 00 18 */	b lbl_80612A30
lbl_80612A1C:
/* 80612A1C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80612A20  54 00 00 3E */	slwi r0, r0, 0
/* 80612A24  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80612A28  38 00 00 00 */	li r0, 0
/* 80612A2C  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80612A30:
/* 80612A30  2C 1B 00 00 */	cmpwi r27, 0
/* 80612A34  41 82 00 2C */	beq lbl_80612A60
/* 80612A38  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80612A3C  A8 9D 47 6C */	lha r4, 0x476c(r29)
/* 80612A40  38 A0 00 02 */	li r5, 2
/* 80612A44  38 C0 08 00 */	li r6, 0x800
/* 80612A48  4B C5 DB C1 */	bl cLib_addCalcAngleS2__FPssss
/* 80612A4C  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80612A50  A8 9D 47 6E */	lha r4, 0x476e(r29)
/* 80612A54  38 A0 00 02 */	li r5, 2
/* 80612A58  38 C0 08 00 */	li r6, 0x800
/* 80612A5C  4B C5 DB AD */	bl cLib_addCalcAngleS2__FPssss
lbl_80612A60:
/* 80612A60  2C 1A 00 01 */	cmpwi r26, 1
/* 80612A64  40 82 00 B8 */	bne lbl_80612B1C
/* 80612A68  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80612A6C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80612A70  80 63 00 00 */	lwz r3, 0(r3)
/* 80612A74  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80612A78  4B 9F 99 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 80612A7C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80612A80  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80612A84  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80612A88  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80612A8C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80612A90  38 61 00 34 */	addi r3, r1, 0x34
/* 80612A94  38 81 00 28 */	addi r4, r1, 0x28
/* 80612A98  4B C5 E4 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80612A9C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80612AA0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80612AA4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80612AA8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80612AAC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80612AB0  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80612AB4  7C 65 1B 78 */	mr r5, r3
/* 80612AB8  4B D3 45 D9 */	bl PSVECAdd
/* 80612ABC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80612AC0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80612AC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80612AC8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80612ACC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80612AD0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80612AD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80612AD8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80612ADC  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80612AE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80612AE4  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80612AE8  38 7D 4D 8C */	addi r3, r29, 0x4d8c
/* 80612AEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80612AF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80612AF4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80612AF8  4B A6 3F B5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80612AFC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80612B00  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80612B04  EC 00 08 2A */	fadds f0, f0, f1
/* 80612B08  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80612B0C  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80612B10  EC 00 08 2A */	fadds f0, f0, f1
/* 80612B14  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80612B18  48 00 00 64 */	b lbl_80612B7C
lbl_80612B1C:
/* 80612B1C  2C 1A 00 02 */	cmpwi r26, 2
/* 80612B20  40 82 00 5C */	bne lbl_80612B7C
/* 80612B24  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80612B28  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80612B2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80612B30  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80612B34  4B 9F 98 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80612B38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80612B3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80612B40  80 63 00 00 */	lwz r3, 0(r3)
/* 80612B44  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80612B48  4B 9F 98 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 80612B4C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80612B50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80612B54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80612B58  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80612B5C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80612B60  38 61 00 34 */	addi r3, r1, 0x34
/* 80612B64  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80612B68  4B C5 E3 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80612B6C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80612B70  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80612B74  7C 65 1B 78 */	mr r5, r3
/* 80612B78  4B D3 45 19 */	bl PSVECAdd
lbl_80612B7C:
/* 80612B7C  2C 1E 00 00 */	cmpwi r30, 0
/* 80612B80  41 82 01 30 */	beq lbl_80612CB0
/* 80612B84  38 61 00 10 */	addi r3, r1, 0x10
/* 80612B88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80612B8C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80612B90  4B C5 3F A5 */	bl __mi__4cXyzCFRC3Vec
/* 80612B94  38 61 00 10 */	addi r3, r1, 0x10
/* 80612B98  4B D3 45 A1 */	bl PSVECSquareMag
/* 80612B9C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80612BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80612BA4  40 81 00 58 */	ble lbl_80612BFC
/* 80612BA8  FC 00 08 34 */	frsqrte f0, f1
/* 80612BAC  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80612BB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80612BB4  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80612BB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80612BBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80612BC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80612BC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80612BC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80612BCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80612BD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80612BD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80612BD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80612BDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80612BE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80612BE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80612BE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80612BEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80612BF0  FC 21 00 32 */	fmul f1, f1, f0
/* 80612BF4  FC 20 08 18 */	frsp f1, f1
/* 80612BF8  48 00 00 88 */	b lbl_80612C80
lbl_80612BFC:
/* 80612BFC  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80612C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80612C04  40 80 00 10 */	bge lbl_80612C14
/* 80612C08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80612C0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80612C10  48 00 00 70 */	b lbl_80612C80
lbl_80612C14:
/* 80612C14  D0 21 00 08 */	stfs f1, 8(r1)
/* 80612C18  80 81 00 08 */	lwz r4, 8(r1)
/* 80612C1C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80612C20  3C 00 7F 80 */	lis r0, 0x7f80
/* 80612C24  7C 03 00 00 */	cmpw r3, r0
/* 80612C28  41 82 00 14 */	beq lbl_80612C3C
/* 80612C2C  40 80 00 40 */	bge lbl_80612C6C
/* 80612C30  2C 03 00 00 */	cmpwi r3, 0
/* 80612C34  41 82 00 20 */	beq lbl_80612C54
/* 80612C38  48 00 00 34 */	b lbl_80612C6C
lbl_80612C3C:
/* 80612C3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80612C40  41 82 00 0C */	beq lbl_80612C4C
/* 80612C44  38 00 00 01 */	li r0, 1
/* 80612C48  48 00 00 28 */	b lbl_80612C70
lbl_80612C4C:
/* 80612C4C  38 00 00 02 */	li r0, 2
/* 80612C50  48 00 00 20 */	b lbl_80612C70
lbl_80612C54:
/* 80612C54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80612C58  41 82 00 0C */	beq lbl_80612C64
/* 80612C5C  38 00 00 05 */	li r0, 5
/* 80612C60  48 00 00 10 */	b lbl_80612C70
lbl_80612C64:
/* 80612C64  38 00 00 03 */	li r0, 3
/* 80612C68  48 00 00 08 */	b lbl_80612C70
lbl_80612C6C:
/* 80612C6C  38 00 00 04 */	li r0, 4
lbl_80612C70:
/* 80612C70  2C 00 00 01 */	cmpwi r0, 1
/* 80612C74  40 82 00 0C */	bne lbl_80612C80
/* 80612C78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80612C7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80612C80:
/* 80612C80  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007034A@ha */
/* 80612C84  38 03 03 4A */	addi r0, r3, 0x034A /* 0x0007034A@l */
/* 80612C88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80612C8C  4B D4 F4 21 */	bl __cvt_fp2unsigned
/* 80612C90  7C 65 1B 78 */	mr r5, r3
/* 80612C94  38 7D 59 3C */	addi r3, r29, 0x593c
/* 80612C98  38 81 00 0C */	addi r4, r1, 0xc
/* 80612C9C  38 C0 FF FF */	li r6, -1
/* 80612CA0  81 9D 59 3C */	lwz r12, 0x593c(r29)
/* 80612CA4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80612CA8  7D 89 03 A6 */	mtctr r12
/* 80612CAC  4E 80 04 21 */	bctrl 
lbl_80612CB0:
/* 80612CB0  39 61 00 60 */	addi r11, r1, 0x60
/* 80612CB4  4B D4 F5 65 */	bl _restgpr_25
/* 80612CB8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80612CBC  7C 08 03 A6 */	mtlr r0
/* 80612CC0  38 21 00 60 */	addi r1, r1, 0x60
/* 80612CC4  4E 80 00 20 */	blr 
