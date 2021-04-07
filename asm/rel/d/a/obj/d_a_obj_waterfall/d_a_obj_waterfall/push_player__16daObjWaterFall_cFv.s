lbl_80D2FA6C:
/* 80D2FA6C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D2FA70  7C 08 02 A6 */	mflr r0
/* 80D2FA74  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D2FA78  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D2FA7C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D2FA80  39 61 00 50 */	addi r11, r1, 0x50
/* 80D2FA84  4B 63 27 59 */	bl _savegpr_29
/* 80D2FA88  7C 7D 1B 78 */	mr r29, r3
/* 80D2FA8C  3C 60 80 D3 */	lis r3, lit_3807@ha /* 0x80D2FD58@ha */
/* 80D2FA90  3B E3 FD 58 */	addi r31, r3, lit_3807@l /* 0x80D2FD58@l */
/* 80D2FA94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2FA98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2FA9C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D2FAA0  7C 9E 23 78 */	mr r30, r4
/* 80D2FAA4  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80D2FAA8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D2FAAC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D2FAB0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D2FAB4  41 82 00 08 */	beq lbl_80D2FABC
/* 80D2FAB8  C3 FF 00 14 */	lfs f31, 0x14(r31)
lbl_80D2FABC:
/* 80D2FABC  C0 3D 04 EC */	lfs f1, 0x4ec(r29)
/* 80D2FAC0  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80D2FAC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D2FAC8  40 82 00 70 */	bne lbl_80D2FB38
/* 80D2FACC  7F A3 EB 78 */	mr r3, r29
/* 80D2FAD0  4B 2E AE 95 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D2FAD4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D2FAD8  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80D2FADC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2FAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2FAE4  40 80 01 90 */	bge lbl_80D2FC74
/* 80D2FAE8  38 61 00 14 */	addi r3, r1, 0x14
/* 80D2FAEC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D2FAF0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D2FAF4  4B 53 70 41 */	bl __mi__4cXyzCFRC3Vec
/* 80D2FAF8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D2FAFC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D2FB00  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D2FB04  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D2FB08  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80D2FB0C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80D2FB10  4B 53 7B 65 */	bl cM_atan2s__Fff
/* 80D2FB14  7C 64 1B 78 */	mr r4, r3
/* 80D2FB18  7F C3 F3 78 */	mr r3, r30
/* 80D2FB1C  FC 20 F8 90 */	fmr f1, f31
/* 80D2FB20  38 A0 00 00 */	li r5, 0
/* 80D2FB24  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D2FB28  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80D2FB2C  7D 89 03 A6 */	mtctr r12
/* 80D2FB30  4E 80 04 21 */	bctrl 
/* 80D2FB34  48 00 01 40 */	b lbl_80D2FC74
lbl_80D2FB38:
/* 80D2FB38  38 61 00 08 */	addi r3, r1, 8
/* 80D2FB3C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D2FB40  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D2FB44  4B 53 6F F1 */	bl __mi__4cXyzCFRC3Vec
/* 80D2FB48  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D2FB4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D2FB50  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D2FB54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D2FB58  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D2FB5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D2FB60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2FB64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2FB68  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80D2FB6C  7C 00 00 D0 */	neg r0, r0
/* 80D2FB70  7C 04 07 34 */	extsh r4, r0
/* 80D2FB74  4B 2D C8 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D2FB78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2FB7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2FB80  38 81 00 20 */	addi r4, r1, 0x20
/* 80D2FB84  7C 85 23 78 */	mr r5, r4
/* 80D2FB88  4B 61 71 E5 */	bl PSMTXMultVec
/* 80D2FB8C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80D2FB90  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D2FB94  C0 5D 04 EC */	lfs f2, 0x4ec(r29)
/* 80D2FB98  FC 00 10 50 */	fneg f0, f2
/* 80D2FB9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D2FBA0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80D2FBA4  40 81 00 D0 */	ble lbl_80D2FC74
/* 80D2FBA8  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80D2FBAC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80D2FBB0  40 80 00 C4 */	bge lbl_80D2FC74
/* 80D2FBB4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80D2FBB8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D2FBBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D2FBC0  40 81 00 B4 */	ble lbl_80D2FC74
/* 80D2FBC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D2FBC8  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80D2FBCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D2FBD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D2FBD4  40 80 00 A0 */	bge lbl_80D2FC74
/* 80D2FBD8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80D2FBDC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80D2FBE0  C0 3D 04 F4 */	lfs f1, 0x4f4(r29)
/* 80D2FBE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D2FBE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D2FBEC  4C 41 13 82 */	cror 2, 1, 2
/* 80D2FBF0  40 82 00 38 */	bne lbl_80D2FC28
/* 80D2FBF4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D2FBF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D2FBFC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D2FC00  40 80 00 28 */	bge lbl_80D2FC28
/* 80D2FC04  7F C3 F3 78 */	mr r3, r30
/* 80D2FC08  FC 20 F8 90 */	fmr f1, f31
/* 80D2FC0C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80D2FC10  38 A0 00 00 */	li r5, 0
/* 80D2FC14  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D2FC18  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80D2FC1C  7D 89 03 A6 */	mtctr r12
/* 80D2FC20  4E 80 04 21 */	bctrl 
/* 80D2FC24  48 00 00 50 */	b lbl_80D2FC74
lbl_80D2FC28:
/* 80D2FC28  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D2FC2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D2FC30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D2FC34  40 80 00 40 */	bge lbl_80D2FC74
/* 80D2FC38  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D2FC3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D2FC40  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D2FC44  40 81 00 30 */	ble lbl_80D2FC74
/* 80D2FC48  7F C3 F3 78 */	mr r3, r30
/* 80D2FC4C  FC 20 F8 90 */	fmr f1, f31
/* 80D2FC50  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80D2FC54  3C 84 00 01 */	addis r4, r4, 1
/* 80D2FC58  38 04 80 00 */	addi r0, r4, -32768
/* 80D2FC5C  7C 04 07 34 */	extsh r4, r0
/* 80D2FC60  38 A0 00 00 */	li r5, 0
/* 80D2FC64  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D2FC68  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80D2FC6C  7D 89 03 A6 */	mtctr r12
/* 80D2FC70  4E 80 04 21 */	bctrl 
lbl_80D2FC74:
/* 80D2FC74  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D2FC78  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D2FC7C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D2FC80  4B 63 25 A9 */	bl _restgpr_29
/* 80D2FC84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D2FC88  7C 08 03 A6 */	mtlr r0
/* 80D2FC8C  38 21 00 60 */	addi r1, r1, 0x60
/* 80D2FC90  4E 80 00 20 */	blr 
