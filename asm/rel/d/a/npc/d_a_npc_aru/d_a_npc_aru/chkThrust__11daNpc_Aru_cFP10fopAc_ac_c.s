lbl_80952280:
/* 80952280  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80952284  7C 08 02 A6 */	mflr r0
/* 80952288  90 01 00 44 */	stw r0, 0x44(r1)
/* 8095228C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80952290  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80952294  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80952298  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8095229C  39 61 00 20 */	addi r11, r1, 0x20
/* 809522A0  4B A0 FF 3D */	bl _savegpr_29
/* 809522A4  7C 7D 1B 78 */	mr r29, r3
/* 809522A8  7C 9E 23 78 */	mr r30, r4
/* 809522AC  C0 24 04 F8 */	lfs f1, 0x4f8(r4)
/* 809522B0  C0 44 05 00 */	lfs f2, 0x500(r4)
/* 809522B4  4B 91 53 C1 */	bl cM_atan2s__Fff
/* 809522B8  7F C3 F3 78 */	mr r3, r30
/* 809522BC  7F A4 EB 78 */	mr r4, r29
/* 809522C0  4B 6C 84 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809522C4  7F A3 EB 78 */	mr r3, r29
/* 809522C8  7F C4 F3 78 */	mr r4, r30
/* 809522CC  4B 6C 85 15 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809522D0  FF C0 08 90 */	fmr f30, f1
/* 809522D4  28 1E 00 00 */	cmplwi r30, 0
/* 809522D8  41 82 00 FC */	beq lbl_809523D4
/* 809522DC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 809522E0  FC 00 02 10 */	fabs f0, f0
/* 809522E4  FC 00 00 18 */	frsp f0, f0
/* 809522E8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 809522EC  C0 23 11 80 */	lfs f1, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 809522F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809522F4  7C 00 00 26 */	mfcr r0
/* 809522F8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 809522FC  40 82 00 98 */	bne lbl_80952394
/* 80952300  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80952304  FC 00 02 10 */	fabs f0, f0
/* 80952308  FC 00 00 18 */	frsp f0, f0
/* 8095230C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80952310  7C 00 00 26 */	mfcr r0
/* 80952314  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80952318  41 82 00 20 */	beq lbl_80952338
/* 8095231C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80952320  FC 00 02 10 */	fabs f0, f0
/* 80952324  FC 00 00 18 */	frsp f0, f0
/* 80952328  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8095232C  7C 00 00 26 */	mfcr r0
/* 80952330  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80952334  40 82 00 60 */	bne lbl_80952394
lbl_80952338:
/* 80952338  7F A3 EB 78 */	mr r3, r29
/* 8095233C  7F C4 F3 78 */	mr r4, r30
/* 80952340  4B 6C 84 A1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80952344  FF E0 08 90 */	fmr f31, f1
/* 80952348  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 8095234C  C0 5E 05 00 */	lfs f2, 0x500(r30)
/* 80952350  4B 91 53 25 */	bl cM_atan2s__Fff
/* 80952354  7C 7F 1B 78 */	mr r31, r3
/* 80952358  7F C3 F3 78 */	mr r3, r30
/* 8095235C  7F A4 EB 78 */	mr r4, r29
/* 80952360  4B 6C 83 B1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80952364  7C 03 F8 50 */	subf r0, r3, r31
/* 80952368  7C 03 07 34 */	extsh r3, r0
/* 8095236C  3C 80 80 95 */	lis r4, m__17daNpc_Aru_Param_c@ha /* 0x809576D0@ha */
/* 80952370  38 84 76 D0 */	addi r4, r4, m__17daNpc_Aru_Param_c@l /* 0x809576D0@l */
/* 80952374  C0 04 00 8C */	lfs f0, 0x8c(r4)
/* 80952378  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8095237C  40 80 00 18 */	bge lbl_80952394
/* 80952380  4B A1 2D 51 */	bl abs
/* 80952384  2C 03 18 E3 */	cmpwi r3, 0x18e3
/* 80952388  40 80 00 0C */	bge lbl_80952394
/* 8095238C  38 60 00 01 */	li r3, 1
/* 80952390  48 00 00 48 */	b lbl_809523D8
lbl_80952394:
/* 80952394  A8 1E 00 08 */	lha r0, 8(r30)
/* 80952398  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8095239C  40 82 00 38 */	bne lbl_809523D4
/* 809523A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809523A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809523A8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809523AC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809523B0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809523B4  41 82 00 20 */	beq lbl_809523D4
/* 809523B8  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha /* 0x809576D0@ha */
/* 809523BC  38 63 76 D0 */	addi r3, r3, m__17daNpc_Aru_Param_c@l /* 0x809576D0@l */
/* 809523C0  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 809523C4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 809523C8  40 80 00 0C */	bge lbl_809523D4
/* 809523CC  38 60 00 01 */	li r3, 1
/* 809523D0  48 00 00 08 */	b lbl_809523D8
lbl_809523D4:
/* 809523D4  38 60 00 00 */	li r3, 0
lbl_809523D8:
/* 809523D8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809523DC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809523E0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 809523E4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 809523E8  39 61 00 20 */	addi r11, r1, 0x20
/* 809523EC  4B A0 FE 3D */	bl _restgpr_29
/* 809523F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809523F4  7C 08 03 A6 */	mtlr r0
/* 809523F8  38 21 00 40 */	addi r1, r1, 0x40
/* 809523FC  4E 80 00 20 */	blr 
