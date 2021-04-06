lbl_809A3928:
/* 809A3928  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 809A392C  7C 08 02 A6 */	mflr r0
/* 809A3930  90 01 00 84 */	stw r0, 0x84(r1)
/* 809A3934  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 809A3938  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 809A393C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 809A3940  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 809A3944  39 61 00 60 */	addi r11, r1, 0x60
/* 809A3948  4B 9B E8 91 */	bl _savegpr_28
/* 809A394C  7C 7F 1B 78 */	mr r31, r3
/* 809A3950  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 809A3954  3B A3 4E D0 */	addi r29, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 809A3958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A395C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A3960  3B C3 4E 00 */	addi r30, r3, 0x4e00
/* 809A3964  7F C3 F3 78 */	mr r3, r30
/* 809A3968  3C 80 80 9A */	lis r4, d_a_npc_coach__stringBase0@ha /* 0x809A5120@ha */
/* 809A396C  38 84 51 20 */	addi r4, r4, d_a_npc_coach__stringBase0@l /* 0x809A5120@l */
/* 809A3970  38 84 00 06 */	addi r4, r4, 6
/* 809A3974  4B 9C 50 21 */	bl strcmp
/* 809A3978  2C 03 00 00 */	cmpwi r3, 0
/* 809A397C  40 82 00 10 */	bne lbl_809A398C
/* 809A3980  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 809A3984  60 00 40 00 */	ori r0, r0, 0x4000
/* 809A3988  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_809A398C:
/* 809A398C  7F E3 FB 78 */	mr r3, r31
/* 809A3990  4B 67 5F 35 */	bl fopAcM_setStageLayer__FPv
/* 809A3994  7F E3 FB 78 */	mr r3, r31
/* 809A3998  C0 3D 02 28 */	lfs f1, 0x228(r29)
/* 809A399C  C0 5D 00 A0 */	lfs f2, 0xa0(r29)
/* 809A39A0  C0 7D 02 2C */	lfs f3, 0x22c(r29)
/* 809A39A4  C0 9D 02 30 */	lfs f4, 0x230(r29)
/* 809A39A8  C0 BD 02 34 */	lfs f5, 0x234(r29)
/* 809A39AC  C0 DD 02 38 */	lfs f6, 0x238(r29)
/* 809A39B0  4B 67 6B 99 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809A39B4  38 60 00 00 */	li r3, 0
/* 809A39B8  90 7F 05 5C */	stw r3, 0x55c(r31)
/* 809A39BC  38 00 00 48 */	li r0, 0x48
/* 809A39C0  98 1F 05 44 */	stb r0, 0x544(r31)
/* 809A39C4  38 00 00 22 */	li r0, 0x22
/* 809A39C8  98 1F 05 4C */	stb r0, 0x54c(r31)
/* 809A39CC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 809A39D0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809A39D4  38 9D 00 00 */	addi r4, r29, 0
/* 809A39D8  C0 04 00 04 */	lfs f0, 4(r4)
/* 809A39DC  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 809A39E0  D0 1F 15 78 */	stfs f0, 0x1578(r31)
/* 809A39E4  D0 1F 1D 54 */	stfs f0, 0x1d54(r31)
/* 809A39E8  38 00 FF FF */	li r0, -1
/* 809A39EC  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A39F0  80 1F 0C F0 */	lwz r0, 0xcf0(r31)
/* 809A39F4  2C 00 00 00 */	cmpwi r0, 0
/* 809A39F8  41 82 00 EC */	beq lbl_809A3AE4
/* 809A39FC  90 7F 0C F0 */	stw r3, 0xcf0(r31)
/* 809A3A00  3C 80 80 9A */	lis r4, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A3A04  38 84 51 34 */	addi r4, r4, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A3A08  80 84 00 00 */	lwz r4, 0(r4)
/* 809A3A0C  2C 04 00 00 */	cmpwi r4, 0
/* 809A3A10  41 80 00 28 */	blt lbl_809A3A38
/* 809A3A14  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A3A18  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A3A1C  80 63 00 00 */	lwz r3, 0(r3)
/* 809A3A20  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A3A24  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A3A28  3C A5 00 02 */	addis r5, r5, 2
/* 809A3A2C  38 C0 00 80 */	li r6, 0x80
/* 809A3A30  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A3A34  4B 69 88 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_809A3A38:
/* 809A3A38  7C 7C 1B 78 */	mr r28, r3
/* 809A3A3C  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A3A40  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A3A44  80 83 00 0C */	lwz r4, 0xc(r3)
/* 809A3A48  2C 04 00 00 */	cmpwi r4, 0
/* 809A3A4C  41 80 00 30 */	blt lbl_809A3A7C
/* 809A3A50  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A3A54  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A3A58  80 63 00 00 */	lwz r3, 0(r3)
/* 809A3A5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A3A60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A3A64  3C A5 00 02 */	addis r5, r5, 2
/* 809A3A68  38 C0 00 80 */	li r6, 0x80
/* 809A3A6C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A3A70  4B 69 88 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A3A74  7C 65 1B 78 */	mr r5, r3
/* 809A3A78  48 00 00 08 */	b lbl_809A3A80
lbl_809A3A7C:
/* 809A3A7C  38 A0 00 00 */	li r5, 0
lbl_809A3A80:
/* 809A3A80  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A3A84  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 809A3A88  C3 C3 00 18 */	lfs f30, 0x18(r3)
/* 809A3A8C  7F 84 E3 78 */	mr r4, r28
/* 809A3A90  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 809A3A94  38 C0 00 02 */	li r6, 2
/* 809A3A98  C0 5D 02 00 */	lfs f2, 0x200(r29)
/* 809A3A9C  C0 7D 01 5C */	lfs f3, 0x15c(r29)
/* 809A3AA0  FC 80 08 90 */	fmr f4, f1
/* 809A3AA4  C0 BD 01 68 */	lfs f5, 0x168(r29)
/* 809A3AA8  4B 66 E2 C9 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A3AAC  EC 1F F0 2A */	fadds f0, f31, f30
/* 809A3AB0  FC 00 00 1E */	fctiwz f0, f0
/* 809A3AB4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809A3AB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A3ABC  7C 00 07 34 */	extsh r0, r0
/* 809A3AC0  C8 3D 01 78 */	lfd f1, 0x178(r29)
/* 809A3AC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A3AC8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809A3ACC  3C 00 43 30 */	lis r0, 0x4330
/* 809A3AD0  90 01 00 48 */	stw r0, 0x48(r1)
/* 809A3AD4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 809A3AD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A3ADC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A3AE0  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_809A3AE4:
/* 809A3AE4  38 7F 0C 3C */	addi r3, r31, 0xc3c
/* 809A3AE8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809A3AEC  38 BF 0C D8 */	addi r5, r31, 0xcd8
/* 809A3AF0  38 C0 00 06 */	li r6, 6
/* 809A3AF4  38 E0 00 01 */	li r7, 1
/* 809A3AF8  4B 92 17 15 */	bl init__14Z2CreatureRideFP3VecP3VecUcUc
/* 809A3AFC  38 7F 1B F0 */	addi r3, r31, 0x1bf0
/* 809A3B00  38 9F 1B B0 */	addi r4, r31, 0x1bb0
/* 809A3B04  38 A0 00 03 */	li r5, 3
/* 809A3B08  81 9F 1C 00 */	lwz r12, 0x1c00(r31)
/* 809A3B0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809A3B10  7D 89 03 A6 */	mtctr r12
/* 809A3B14  4E 80 04 21 */	bctrl 
/* 809A3B18  38 7F 21 54 */	addi r3, r31, 0x2154
/* 809A3B1C  38 9F 24 5C */	addi r4, r31, 0x245c
/* 809A3B20  7C 85 23 78 */	mr r5, r4
/* 809A3B24  38 C0 00 03 */	li r6, 3
/* 809A3B28  38 E0 00 01 */	li r7, 1
/* 809A3B2C  4B 91 CA 05 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809A3B30  38 7F 0E 80 */	addi r3, r31, 0xe80
/* 809A3B34  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A3B38  7C 04 07 74 */	extsb r4, r0
/* 809A3B3C  38 A0 00 FF */	li r5, 0xff
/* 809A3B40  4B 80 4D AD */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 809A3B44  38 7F 15 D4 */	addi r3, r31, 0x15d4
/* 809A3B48  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A3B4C  7C 04 07 74 */	extsb r4, r0
/* 809A3B50  38 A0 00 FF */	li r5, 0xff
/* 809A3B54  4B 80 4D 99 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 809A3B58  38 7F 1D CC */	addi r3, r31, 0x1dcc
/* 809A3B5C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A3B60  7C 04 07 74 */	extsb r4, r0
/* 809A3B64  38 A0 00 FF */	li r5, 0xff
/* 809A3B68  4B 80 4D 85 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 809A3B6C  38 00 00 FF */	li r0, 0xff
/* 809A3B70  98 1F 1D C5 */	stb r0, 0x1dc5(r31)
/* 809A3B74  38 00 00 7D */	li r0, 0x7d
/* 809A3B78  98 1F 1D C6 */	stb r0, 0x1dc6(r31)
/* 809A3B7C  7F E3 FB 78 */	mr r3, r31
/* 809A3B80  48 00 0B 45 */	bl initCoachBlazing__12daNpcCoach_cFv
/* 809A3B84  7F E3 FB 78 */	mr r3, r31
/* 809A3B88  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809A3B8C  38 BF 04 E4 */	addi r5, r31, 0x4e4
/* 809A3B90  4B FF A2 89 */	bl initCoachPosition__12daNpcCoach_cFR3VecR4SVec
/* 809A3B94  7F E3 FB 78 */	mr r3, r31
/* 809A3B98  48 00 08 09 */	bl initBaseMtx__12daNpcCoach_cFv
/* 809A3B9C  7F E3 FB 78 */	mr r3, r31
/* 809A3BA0  48 00 04 D9 */	bl initCollision__12daNpcCoach_cFv
/* 809A3BA4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809A3BA8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809A3BAC  28 00 00 FF */	cmplwi r0, 0xff
/* 809A3BB0  41 82 03 78 */	beq lbl_809A3F28
/* 809A3BB4  90 1F 25 68 */	stw r0, 0x2568(r31)
/* 809A3BB8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809A3BBC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 809A3BC0  7F 83 E3 78 */	mr r3, r28
/* 809A3BC4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A3BC8  7C 04 07 74 */	extsb r4, r0
/* 809A3BCC  4B 6A DC 21 */	bl dPath_GetRoomPath__Fii
/* 809A3BD0  90 7F 24 68 */	stw r3, 0x2468(r31)
/* 809A3BD4  80 1F 24 68 */	lwz r0, 0x2468(r31)
/* 809A3BD8  28 00 00 00 */	cmplwi r0, 0
/* 809A3BDC  41 82 01 D4 */	beq lbl_809A3DB0
/* 809A3BE0  93 9F 24 74 */	stw r28, 0x2474(r31)
/* 809A3BE4  3B 80 00 00 */	li r28, 0
/* 809A3BE8  93 9F 24 78 */	stw r28, 0x2478(r31)
/* 809A3BEC  34 1F 04 D0 */	addic. r0, r31, 0x4d0
/* 809A3BF0  41 82 00 88 */	beq lbl_809A3C78
/* 809A3BF4  C3 FD 01 2C */	lfs f31, 0x12c(r29)
/* 809A3BF8  48 00 00 30 */	b lbl_809A3C28
lbl_809A3BFC:
/* 809A3BFC  7F 84 E3 78 */	mr r4, r28
/* 809A3C00  4B 6A DB B1 */	bl dPath_GetPnt__FPC5dPathi
/* 809A3C04  7C 64 1B 78 */	mr r4, r3
/* 809A3C08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809A3C0C  38 84 00 04 */	addi r4, r4, 4
/* 809A3C10  4B 9A 37 8D */	bl PSVECSquareDistance
/* 809A3C14  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809A3C18  40 80 00 0C */	bge lbl_809A3C24
/* 809A3C1C  FF E0 08 90 */	fmr f31, f1
/* 809A3C20  93 9F 24 78 */	stw r28, 0x2478(r31)
lbl_809A3C24:
/* 809A3C24  3B 9C 00 01 */	addi r28, r28, 1
lbl_809A3C28:
/* 809A3C28  80 7F 24 68 */	lwz r3, 0x2468(r31)
/* 809A3C2C  A0 03 00 00 */	lhz r0, 0(r3)
/* 809A3C30  7C 1C 00 00 */	cmpw r28, r0
/* 809A3C34  41 80 FF C8 */	blt lbl_809A3BFC
/* 809A3C38  80 7F 24 78 */	lwz r3, 0x2478(r31)
/* 809A3C3C  38 03 00 01 */	addi r0, r3, 1
/* 809A3C40  90 1F 24 78 */	stw r0, 0x2478(r31)
/* 809A3C44  80 7F 24 78 */	lwz r3, 0x2478(r31)
/* 809A3C48  80 9F 24 68 */	lwz r4, 0x2468(r31)
/* 809A3C4C  A0 04 00 00 */	lhz r0, 0(r4)
/* 809A3C50  7C 03 00 00 */	cmpw r3, r0
/* 809A3C54  41 80 00 24 */	blt lbl_809A3C78
/* 809A3C58  88 04 00 05 */	lbz r0, 5(r4)
/* 809A3C5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809A3C60  41 82 00 10 */	beq lbl_809A3C70
/* 809A3C64  38 00 00 00 */	li r0, 0
/* 809A3C68  90 1F 24 78 */	stw r0, 0x2478(r31)
/* 809A3C6C  48 00 00 0C */	b lbl_809A3C78
lbl_809A3C70:
/* 809A3C70  38 03 FF FF */	addi r0, r3, -1
/* 809A3C74  90 1F 24 78 */	stw r0, 0x2478(r31)
lbl_809A3C78:
/* 809A3C78  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 809A3C7C  D0 1F 24 70 */	stfs f0, 0x2470(r31)
/* 809A3C80  34 1F 04 D0 */	addic. r0, r31, 0x4d0
/* 809A3C84  41 82 01 2C */	beq lbl_809A3DB0
/* 809A3C88  38 1F 04 D0 */	addi r0, r31, 0x4d0
/* 809A3C8C  90 1F 24 6C */	stw r0, 0x246c(r31)
/* 809A3C90  80 7F 24 68 */	lwz r3, 0x2468(r31)
/* 809A3C94  28 03 00 00 */	cmplwi r3, 0
/* 809A3C98  41 82 00 24 */	beq lbl_809A3CBC
/* 809A3C9C  80 9F 24 78 */	lwz r4, 0x2478(r31)
/* 809A3CA0  4B 6A DB 11 */	bl dPath_GetPnt__FPC5dPathi
/* 809A3CA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A3CA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809A3CAC  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A3CB0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809A3CB4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A3CB8  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_809A3CBC:
/* 809A3CBC  80 7F 24 6C */	lwz r3, 0x246c(r31)
/* 809A3CC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 809A3CC4  4B 9A 36 D9 */	bl PSVECSquareDistance
/* 809A3CC8  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 809A3CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A3CD0  40 81 00 58 */	ble lbl_809A3D28
/* 809A3CD4  FC 00 08 34 */	frsqrte f0, f1
/* 809A3CD8  C8 9D 01 30 */	lfd f4, 0x130(r29)
/* 809A3CDC  FC 44 00 32 */	fmul f2, f4, f0
/* 809A3CE0  C8 7D 01 38 */	lfd f3, 0x138(r29)
/* 809A3CE4  FC 00 00 32 */	fmul f0, f0, f0
/* 809A3CE8  FC 01 00 32 */	fmul f0, f1, f0
/* 809A3CEC  FC 03 00 28 */	fsub f0, f3, f0
/* 809A3CF0  FC 02 00 32 */	fmul f0, f2, f0
/* 809A3CF4  FC 44 00 32 */	fmul f2, f4, f0
/* 809A3CF8  FC 00 00 32 */	fmul f0, f0, f0
/* 809A3CFC  FC 01 00 32 */	fmul f0, f1, f0
/* 809A3D00  FC 03 00 28 */	fsub f0, f3, f0
/* 809A3D04  FC 02 00 32 */	fmul f0, f2, f0
/* 809A3D08  FC 44 00 32 */	fmul f2, f4, f0
/* 809A3D0C  FC 00 00 32 */	fmul f0, f0, f0
/* 809A3D10  FC 01 00 32 */	fmul f0, f1, f0
/* 809A3D14  FC 03 00 28 */	fsub f0, f3, f0
/* 809A3D18  FC 02 00 32 */	fmul f0, f2, f0
/* 809A3D1C  FC 21 00 32 */	fmul f1, f1, f0
/* 809A3D20  FC 20 08 18 */	frsp f1, f1
/* 809A3D24  48 00 00 88 */	b lbl_809A3DAC
lbl_809A3D28:
/* 809A3D28  C8 1D 01 40 */	lfd f0, 0x140(r29)
/* 809A3D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A3D30  40 80 00 10 */	bge lbl_809A3D40
/* 809A3D34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A3D38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A3D3C  48 00 00 70 */	b lbl_809A3DAC
lbl_809A3D40:
/* 809A3D40  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 809A3D44  80 81 00 10 */	lwz r4, 0x10(r1)
/* 809A3D48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A3D4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A3D50  7C 03 00 00 */	cmpw r3, r0
/* 809A3D54  41 82 00 14 */	beq lbl_809A3D68
/* 809A3D58  40 80 00 40 */	bge lbl_809A3D98
/* 809A3D5C  2C 03 00 00 */	cmpwi r3, 0
/* 809A3D60  41 82 00 20 */	beq lbl_809A3D80
/* 809A3D64  48 00 00 34 */	b lbl_809A3D98
lbl_809A3D68:
/* 809A3D68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A3D6C  41 82 00 0C */	beq lbl_809A3D78
/* 809A3D70  38 00 00 01 */	li r0, 1
/* 809A3D74  48 00 00 28 */	b lbl_809A3D9C
lbl_809A3D78:
/* 809A3D78  38 00 00 02 */	li r0, 2
/* 809A3D7C  48 00 00 20 */	b lbl_809A3D9C
lbl_809A3D80:
/* 809A3D80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A3D84  41 82 00 0C */	beq lbl_809A3D90
/* 809A3D88  38 00 00 05 */	li r0, 5
/* 809A3D8C  48 00 00 10 */	b lbl_809A3D9C
lbl_809A3D90:
/* 809A3D90  38 00 00 03 */	li r0, 3
/* 809A3D94  48 00 00 08 */	b lbl_809A3D9C
lbl_809A3D98:
/* 809A3D98  38 00 00 04 */	li r0, 4
lbl_809A3D9C:
/* 809A3D9C  2C 00 00 01 */	cmpwi r0, 1
/* 809A3DA0  40 82 00 0C */	bne lbl_809A3DAC
/* 809A3DA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A3DA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809A3DAC:
/* 809A3DAC  D0 3F 24 70 */	stfs f1, 0x2470(r31)
lbl_809A3DB0:
/* 809A3DB0  80 7F 24 68 */	lwz r3, 0x2468(r31)
/* 809A3DB4  28 03 00 00 */	cmplwi r3, 0
/* 809A3DB8  41 82 02 98 */	beq lbl_809A4050
/* 809A3DBC  80 63 00 08 */	lwz r3, 8(r3)
/* 809A3DC0  80 1F 24 78 */	lwz r0, 0x2478(r31)
/* 809A3DC4  54 00 20 36 */	slwi r0, r0, 4
/* 809A3DC8  7C 63 02 14 */	add r3, r3, r0
/* 809A3DCC  88 03 00 03 */	lbz r0, 3(r3)
/* 809A3DD0  7C 00 07 75 */	extsb. r0, r0
/* 809A3DD4  41 80 00 24 */	blt lbl_809A3DF8
/* 809A3DD8  C8 3D 01 78 */	lfd f1, 0x178(r29)
/* 809A3DDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A3DE0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809A3DE4  3C 00 43 30 */	lis r0, 0x4330
/* 809A3DE8  90 01 00 48 */	stw r0, 0x48(r1)
/* 809A3DEC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 809A3DF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A3DF4  D0 1F 0C E8 */	stfs f0, 0xce8(r31)
lbl_809A3DF8:
/* 809A3DF8  C0 1F 0C E8 */	lfs f0, 0xce8(r31)
/* 809A3DFC  38 7D 00 00 */	addi r3, r29, 0
/* 809A3E00  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809A3E04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809A3E08  40 81 00 08 */	ble lbl_809A3E10
/* 809A3E0C  D0 3F 0C E8 */	stfs f1, 0xce8(r31)
lbl_809A3E10:
/* 809A3E10  80 7F 24 68 */	lwz r3, 0x2468(r31)
/* 809A3E14  28 03 00 00 */	cmplwi r3, 0
/* 809A3E18  41 82 00 24 */	beq lbl_809A3E3C
/* 809A3E1C  80 9F 24 78 */	lwz r4, 0x2478(r31)
/* 809A3E20  4B 6A D9 91 */	bl dPath_GetPnt__FPC5dPathi
/* 809A3E24  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A3E28  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809A3E2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A3E30  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809A3E34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A3E38  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_809A3E3C:
/* 809A3E3C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809A3E40  38 81 00 34 */	addi r4, r1, 0x34
/* 809A3E44  4B 8C CD C1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A3E48  7C 64 1B 78 */	mr r4, r3
/* 809A3E4C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 809A3E50  4B 8C CF D5 */	bl cLib_distanceAngleS__Fss
/* 809A3E54  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809A3E58  41 80 00 D0 */	blt lbl_809A3F28
/* 809A3E5C  80 7F 24 78 */	lwz r3, 0x2478(r31)
/* 809A3E60  38 03 00 01 */	addi r0, r3, 1
/* 809A3E64  90 1F 24 78 */	stw r0, 0x2478(r31)
/* 809A3E68  80 7F 24 78 */	lwz r3, 0x2478(r31)
/* 809A3E6C  80 9F 24 68 */	lwz r4, 0x2468(r31)
/* 809A3E70  A0 04 00 00 */	lhz r0, 0(r4)
/* 809A3E74  7C 03 00 00 */	cmpw r3, r0
/* 809A3E78  41 80 00 24 */	blt lbl_809A3E9C
/* 809A3E7C  88 04 00 05 */	lbz r0, 5(r4)
/* 809A3E80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809A3E84  41 82 00 10 */	beq lbl_809A3E94
/* 809A3E88  38 00 00 00 */	li r0, 0
/* 809A3E8C  90 1F 24 78 */	stw r0, 0x2478(r31)
/* 809A3E90  48 00 00 0C */	b lbl_809A3E9C
lbl_809A3E94:
/* 809A3E94  38 03 FF FF */	addi r0, r3, -1
/* 809A3E98  90 1F 24 78 */	stw r0, 0x2478(r31)
lbl_809A3E9C:
/* 809A3E9C  80 7F 24 68 */	lwz r3, 0x2468(r31)
/* 809A3EA0  28 03 00 00 */	cmplwi r3, 0
/* 809A3EA4  41 82 00 24 */	beq lbl_809A3EC8
/* 809A3EA8  80 9F 24 78 */	lwz r4, 0x2478(r31)
/* 809A3EAC  4B 6A D9 05 */	bl dPath_GetPnt__FPC5dPathi
/* 809A3EB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A3EB4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809A3EB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A3EBC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809A3EC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A3EC4  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_809A3EC8:
/* 809A3EC8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809A3ECC  38 81 00 34 */	addi r4, r1, 0x34
/* 809A3ED0  4B 8C CD 35 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A3ED4  7C 64 1B 78 */	mr r4, r3
/* 809A3ED8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 809A3EDC  4B 8C CF 49 */	bl cLib_distanceAngleS__Fss
/* 809A3EE0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809A3EE4  41 80 00 44 */	blt lbl_809A3F28
/* 809A3EE8  80 7F 24 78 */	lwz r3, 0x2478(r31)
/* 809A3EEC  38 03 FF FF */	addi r0, r3, -1
/* 809A3EF0  90 1F 24 78 */	stw r0, 0x2478(r31)
/* 809A3EF4  80 7F 24 78 */	lwz r3, 0x2478(r31)
/* 809A3EF8  2C 03 00 00 */	cmpwi r3, 0
/* 809A3EFC  40 80 00 2C */	bge lbl_809A3F28
/* 809A3F00  80 9F 24 68 */	lwz r4, 0x2468(r31)
/* 809A3F04  88 04 00 05 */	lbz r0, 5(r4)
/* 809A3F08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809A3F0C  41 82 00 14 */	beq lbl_809A3F20
/* 809A3F10  A0 64 00 00 */	lhz r3, 0(r4)
/* 809A3F14  38 03 FF FF */	addi r0, r3, -1
/* 809A3F18  90 1F 24 78 */	stw r0, 0x2478(r31)
/* 809A3F1C  48 00 00 0C */	b lbl_809A3F28
lbl_809A3F20:
/* 809A3F20  38 03 00 01 */	addi r0, r3, 1
/* 809A3F24  90 1F 24 78 */	stw r0, 0x2478(r31)
lbl_809A3F28:
/* 809A3F28  38 60 00 00 */	li r3, 0
/* 809A3F2C  38 80 FF FF */	li r4, -1
/* 809A3F30  38 00 00 05 */	li r0, 5
/* 809A3F34  7C 09 03 A6 */	mtctr r0
lbl_809A3F38:
/* 809A3F38  38 03 24 7C */	addi r0, r3, 0x247c
/* 809A3F3C  7C 9F 01 2E */	stwx r4, r31, r0
/* 809A3F40  38 63 00 04 */	addi r3, r3, 4
/* 809A3F44  42 00 FF F4 */	bdnz lbl_809A3F38
/* 809A3F48  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 809A3F4C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A3F50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A3F54  38 63 00 F0 */	addi r3, r3, 0xf0
/* 809A3F58  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A3F5C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A3F60  4B 9A 25 51 */	bl PSMTXCopy
/* 809A3F64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A3F68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A3F6C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A3F70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A3F74  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809A3F78  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809A3F7C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809A3F80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809A3F84  38 81 00 14 */	addi r4, r1, 0x14
/* 809A3F88  4B 66 8C 79 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 809A3F8C  A8 BF 04 B4 */	lha r5, 0x4b4(r31)
/* 809A3F90  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A3F94  7C 07 07 74 */	extsb r7, r0
/* 809A3F98  38 00 00 00 */	li r0, 0
/* 809A3F9C  90 01 00 08 */	stw r0, 8(r1)
/* 809A3FA0  38 60 00 57 */	li r3, 0x57
/* 809A3FA4  28 1F 00 00 */	cmplwi r31, 0
/* 809A3FA8  41 82 00 0C */	beq lbl_809A3FB4
/* 809A3FAC  80 9F 00 04 */	lwz r4, 4(r31)
/* 809A3FB0  48 00 00 08 */	b lbl_809A3FB8
lbl_809A3FB4:
/* 809A3FB4  38 80 FF FF */	li r4, -1
lbl_809A3FB8:
/* 809A3FB8  38 C1 00 28 */	addi r6, r1, 0x28
/* 809A3FBC  39 01 00 14 */	addi r8, r1, 0x14
/* 809A3FC0  39 20 00 00 */	li r9, 0
/* 809A3FC4  39 40 FF FF */	li r10, -1
/* 809A3FC8  4B 67 5F 29 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 809A3FCC  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 809A3FD0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A3FD4  7C 07 07 74 */	extsb r7, r0
/* 809A3FD8  38 00 00 00 */	li r0, 0
/* 809A3FDC  90 01 00 08 */	stw r0, 8(r1)
/* 809A3FE0  38 60 00 59 */	li r3, 0x59
/* 809A3FE4  28 1F 00 00 */	cmplwi r31, 0
/* 809A3FE8  41 82 00 0C */	beq lbl_809A3FF4
/* 809A3FEC  80 9F 00 04 */	lwz r4, 4(r31)
/* 809A3FF0  48 00 00 08 */	b lbl_809A3FF8
lbl_809A3FF4:
/* 809A3FF4  38 80 FF FF */	li r4, -1
lbl_809A3FF8:
/* 809A3FF8  38 A0 00 00 */	li r5, 0
/* 809A3FFC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 809A4000  39 00 00 00 */	li r8, 0
/* 809A4004  39 20 00 00 */	li r9, 0
/* 809A4008  39 40 FF FF */	li r10, -1
/* 809A400C  4B 67 5E E5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 809A4010  90 7F 25 54 */	stw r3, 0x2554(r31)
/* 809A4014  38 00 00 00 */	li r0, 0
/* 809A4018  98 1F 25 58 */	stb r0, 0x2558(r31)
/* 809A401C  98 1F 25 59 */	stb r0, 0x2559(r31)
/* 809A4020  7F C3 F3 78 */	mr r3, r30
/* 809A4024  3C 80 80 9A */	lis r4, d_a_npc_coach__stringBase0@ha /* 0x809A5120@ha */
/* 809A4028  38 84 51 20 */	addi r4, r4, d_a_npc_coach__stringBase0@l /* 0x809A5120@l */
/* 809A402C  38 84 00 06 */	addi r4, r4, 6
/* 809A4030  4B 9C 49 65 */	bl strcmp
/* 809A4034  2C 03 00 00 */	cmpwi r3, 0
/* 809A4038  41 82 00 18 */	beq lbl_809A4050
/* 809A403C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A4040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A4044  38 63 09 58 */	addi r3, r3, 0x958
/* 809A4048  38 80 00 01 */	li r4, 1
/* 809A404C  4B 69 07 55 */	bl onTbox__12dSv_memBit_cFi
lbl_809A4050:
/* 809A4050  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 809A4054  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 809A4058  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 809A405C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 809A4060  39 61 00 60 */	addi r11, r1, 0x60
/* 809A4064  4B 9B E1 C1 */	bl _restgpr_28
/* 809A4068  80 01 00 84 */	lwz r0, 0x84(r1)
/* 809A406C  7C 08 03 A6 */	mtlr r0
/* 809A4070  38 21 00 80 */	addi r1, r1, 0x80
/* 809A4074  4E 80 00 20 */	blr 
